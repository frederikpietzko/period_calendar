const authRoutes = require("./authRoutes");
const periodRoutes = require("./periodRoutes");

module.exports = app => {
  authRoutes(app);
  periodRoutes(app);
};
