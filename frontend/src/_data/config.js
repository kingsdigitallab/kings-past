const baseUrl = "/";
const paths = {
  assets: `${baseUrl}assets`,
  images: `${baseUrl}assets/images`,
  stylesheets: `${baseUrl}assets/stylesheets`,
};

module.exports = {
  baseUrl: baseUrl,
  title: "King's Past",
  description: "The King's Past project is...",
  url: "",
  author: "King's Digital Lab",
  // twitter: "kingsdigitallab",
  feature: {
    image: `${paths.images}/kings-logo-red.svg`,
    description: "King's College London logo in red",
  },
  // SEO plugin options
  options: {
    titleDivider: "|",
    imageWithBaseUrl: true,
  },
  paths: { ...paths },
};
