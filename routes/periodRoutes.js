const requireLogin = require("../middlewares/requireLogin");
const mongoose = require("mongoose");

const dayOfPeriod = mongoose.model("dayOfPeriods");

module.exports = app => {
  app.get("/period/get", requireLogin, (req, res) => {});
};
