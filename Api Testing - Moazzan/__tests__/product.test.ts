var supertest = require("supertest");
const request = supertest("http://localhost:3000/");

it("Should return the email of current user", async function () {
  const response = await request
    .get("api/user/current")
    .set("X-Metabase-Session", "cd9b68c3-2e03-4843-9e72-d25e6f417650");
  expect(response.body.email).toEqual("l192209@lhr.nu.edu.pk");
});
