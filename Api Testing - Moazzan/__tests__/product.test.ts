var supertest = require("supertest");
const request = supertest("http://localhost:3000/");

describe("User API", () => {
  test("Should return the email of current user", async function () {
    const response = await request
      .get("api/user/current")
      .set("X-Metabase-Session", "cd9b68c3-2e03-4843-9e72-d25e6f417650");
    expect(response.body.email).toEqual("l192209@lhr.nu.edu.pk");
  });

  test("Updates the password of a user", async () => {
    const response = await request
      .get("api/user/current")
      .set("X-Metabase-Session", "cd9b68c3-2e03-4843-9e72-d25e6f417650");

    const userId = response.body.id;
    const newPassword = "Moazzan1234"; // replace with the new password you want to set
    const response2 = await request
      .put("/api/user/:id/password".replace(":id", userId))
      .send({ id: "1", password: newPassword, old_password: "Moazzan123" });
    expect(response2.statusCode).toBe(200);
  });
});

describe("Database", () => {
  test("Fetches all available databases", async () => {
    const response = await request
      .get("api/database")
      .set("X-Metabase-Session", "cd9b68c3-2e03-4843-9e72-d25e6f417650");

    var jsonData = JSON.parse(response.text);
    expect(jsonData.data[0].name).toEqual("Sample Database");
  });
});
