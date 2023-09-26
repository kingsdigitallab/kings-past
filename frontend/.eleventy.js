const kdlFilters = require("kdl-components/src/kdl/filters");
const Nunjucks = require("nunjucks");
const path = require("node:path");
const { EleventyHtmlBasePlugin } = require("@11ty/eleventy");
const eleventyNavigationPlugin = require("@11ty/eleventy-navigation");
const sass = require("sass");
const SEOPlugin = require("eleventy-plugin-seo");

const kdlComponentsPath = "../node_modules/kdl-components/src";

const nunjucksEnvironment = new Nunjucks.Environment([
  // kdl components path
  new Nunjucks.FileSystemLoader(kdlComponentsPath),
  // project specific includes
  new Nunjucks.FileSystemLoader("./src/_includes"),
]);

/**
 * Generates HTML markup for referencing an entity by its slug within a collection.
 *
 * @param {object} collections - An object containing all of 11ty collections.
 * @param {string} collection - The name of the collection where the entity is located.
 * @param {string} slug - The unique identifier (slug) of the entity within the collection.
 * @param {string} display - The display text or label for the entity reference.
 * @returns {string} - HTML markup for linking to the entity if found, or just the entity reference if not found.
 */
function getEntity(collections, collectionName, slug, display) {
  const entityHtml = `<span class="entity-ref ${collectionName}">${display}</span>`;

  const found = collections[collectionName].find(
    (entity) => entity.data.slug === slug,
  );

  if (found) {
    return `<a href="${found.url}">${entityHtml}</a>`;
  }
}

module.exports = function (eleventyConfig) {
  // KDL components configuration start
  eleventyConfig.setLibrary("njk", nunjucksEnvironment);

  // rebuild the project if the components change
  eleventyConfig.addWatchTarget(kdlComponentsPath);

  // add kdl-components default assets add a passthrough copy
  eleventyConfig.addPassthroughCopy({
    [`${kdlComponentsPath}/kdl/assets`]: "/assets",
    public: "/",
  });

  // kdl components filters
  eleventyConfig.addFilter("toLocaleDate", kdlFilters.toLocaleDate);
  eleventyConfig.addFilter("filter", kdlFilters.filter);
  // KDL components configuration end

  // plugins
  eleventyConfig.addPlugin(EleventyHtmlBasePlugin);
  eleventyConfig.addPlugin(eleventyNavigationPlugin);
  eleventyConfig.addPlugin(SEOPlugin, require("./src/_data/config.js"));

  // shortcodes
  eleventyConfig.addShortcode("org", function (slug, display) {
    return getEntity(
      this.ctx.environments.collections,
      "organisation",
      slug,
      display,
    );
  });
  eleventyConfig.addShortcode("person", function (slug, display) {
    return getEntity(
      this.ctx.environments.collections,
      "person",
      slug,
      display,
    );
  });
  eleventyConfig.addShortcode("place", function (slug, display) {
    return getEntity(this.ctx.environments.collections, "place", slug, display);
  });

  // https://www.11ty.dev/docs/languages/custom/#example-add-sass-support-to-eleventy
  eleventyConfig.addTemplateFormats("scss");
  eleventyConfig.addExtension("scss", {
    outputFileExtension: "css",
    style: "compressed",
    compile: async function (inputContent, inputPath) {
      const parsed = path.parse(inputPath);
      const result = sass.compileString(inputContent, {
        loadPaths: [parsed.dir || ".", this.config.dir.includes],
      });

      return (_) => {
        return result.css;
      };
    },
  });

  return {
    dir: {
      input: "src",
      output: "html",
    },
  };
};
