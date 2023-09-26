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
    const org = `<span class="entity-ref org">${display}</span>`;

    const found = this.ctx.environments.collections.organisation.find(
      (org) => org.data.slug === slug,
    );

    if (found) {
      return `<a href="${found.url}">${org}</a>`;
    }

    return org;
  });

  eleventyConfig.addShortcode("person", function (slug, display) {
    const person = `<span class="entity-ref person">${display}</span>`;

    const found = this.ctx.environments.collections.person.find(
      (person) => person.data.slug === slug,
    );

    if (found) {
      return `<a href="${found.url}">${person}</a>`;
    }

    return person;
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
