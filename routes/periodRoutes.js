const requireLogin = require("../middlewares/requireLogin");
const PeriodService = require("../services/period");
module.exports = app => {
  app.post("/api/period", requireLogin, PeriodService.create);
  app.patch("/api/period:id", requireLogin, PeriodService.edit);
  app.delete("/api/period:id", requireLogin, PeriodService.delete);
  app.get("/api/period", requireLogin, PeriodService.index);
  app.get("/api/period/day:id", requireLogin, PeriodService.getDay);
  app.get("/api/period/month:month", requireLogin, PeriodService.getMonth);
  app.get("/api/period/year:year", requireLogin, PeriodService.getYear);
};
