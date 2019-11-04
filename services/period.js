const mongoose = require("mongoose");
const DayOfPeriod = mongoose.model("dayofperiod");

module.exports = {
  index(req, res, next) {
    console.log(req);
  },
  getDay(req, res, next) {},
  getMonth(req, res, next) {},
  getYear(req, res, next) {},
  create(req, res, next) {},
  edit(req, res, next) {},
  delete(req, res, next) {}
};
