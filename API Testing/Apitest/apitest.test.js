var supertest = require('supertest')
const request = supertest("http://localhost:3000/")
// require('dotenv').config()

it("Should return the email of current user",async function(){
    
    const response = await  request.get('api/user/current').set("X-Metabase-Session","b6b3b461-5a33-4f60-b77b-db15738a51f5")
    expect(response.body.email).toEqual("hassansalahuddin298@gmail.com")
   
}) 