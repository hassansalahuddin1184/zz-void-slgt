var supertest = require('supertest')
const request = supertest("http://localhost:3000/")
// require('dotenv').config()

it("Should return the email of current user",async function(){
    
    const response = await  request.get('api/user/current').set("X-Metabase-Session","b6b3b461-5a33-4f60-b77b-db15738a51f5")
    expect(response.body.email).toEqual("hassansalahuddin298@gmail.com")
   
}) 
it("Should return the admin email",async function(){
    
    const response = await   request.get('api/setting/admin-email').set("X-Metabase-Session","b6b3b461-5a33-4f60-b77b-db15738a51f5")
    expect(response.text).toEqual("hassansalahuddin298@gmail.com")
   
})

it("SHould return the collections",async function(){
    
    const response = await  request.get('api/collection').set("X-Metabase-Session","b6b3b461-5a33-4f60-b77b-db15738a51f5")
    var jsonData = JSON.parse(response.text);
    expect(jsonData[0].name).toEqual("Our analytics")
   
}) 

