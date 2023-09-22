const kdlFilters = require("kdl-components/src/kdl/filters");
const Nunjucks = require("nunjucks");

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

  return {
    dir: {
      input: "src",
      output: "html",
    },
  };
};
