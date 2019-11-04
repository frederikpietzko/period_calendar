const authRoutes = require("./authRoutes");
const periodRoutes = require("./periodRoutes");

module.exports = app => {
  app.get("/api", (req, res) => {
    res.send({ hi: "there" });
  });
  authRoutes(app);
  periodRoutes(app);
};
