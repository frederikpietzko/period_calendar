const assert = require("assert");
const request = require("supertest");
const app = require("../app.js");

describe("The express app", () => {
  it("handles a GET request to /api", async () => {
    const res = await request(app).get("/api");
    assert(res.body.hi === "there");
  });
});
