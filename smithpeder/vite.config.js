const { viteBundler } = require("@vuepress/bundler-vite");

module.exports = {
  bundler: viteBundler({
    viteOptions: {},
    vuePluginOptions: {},
  }),
};
