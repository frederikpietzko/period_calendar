const requireLogin = require("../middlewares/requireLogin");

module.exports = app => {
  app.get("/period/get", requireLogin, (req, res) => {});
};
