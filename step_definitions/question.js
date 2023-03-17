const { I } = inject();

 
  
Given('Given I am at Homepage', () => 
{

     //Wait for dashboard
  I.waitForElement("//*[@id='root']/div/div/main/div/div[3]/div",2)
  

});

Then('I click on New Button', () => {
//Click On New button
I.click({xpath: "//*[@id='root']/div/header/div/div[2]/div[2]/span[1]/button"})
});

Then('I should be able to see Create a Question Button', () => {
 //Wait for Dialog
 I.waitForElement(".Icon",2)
});

Then('I click on Question Button', () => {
//Click on Question
I.click({xpath:"/html/body/span/span/div/div/div/ol/li[1]/a"})
});


Then('I should be able to see Pick Your Starting data', () => {

    I.see("Pick",'div')
});


Then('I click on Pick Your Starting Data Button', () => {
 
 //Choose a Data source
 I.click("//*[@id='DatabaseSchemaPicker']/div/div/div")

});

Then('I should see Databases', () => {
    I.waitForElement({xpath:"//*[@id='root']/div/div/main/div/div/div[2]/div/div/div/div/div/div[2]/div[1]/div/div/div/a"},10)
    
});

When('I click on any Databases', () => {
    I.click(".List-section .List-item:first-child")
    
});

Then('I see Visualize Button', () => {
 //Click on Visualize Button
 I.see('Visualize','Button');
});


Given('I am at Question Page', () => {
    I.amOnPage('http://localhost:3000/question');
});

Given('I have created a new Question', () => {
    I.see("Pick",'div');
    I.click("//*[@id='DatabaseSchemaPicker']/div/div[1]/div");
    I.waitForElement({xpath:"//*[@id='DataPopover']/div/div/div[2]/div"},5);
    I.click(".List-section .List-item:first-child");
  
});

Then('I should see save Button', () => {
     I.see("Save",'a')
});

When('I click on save Button', () => {
    I.click("//*[@id='root']/div/div/main/div/div/div[1]/div/div[2]/span/a");
});

Then('I should see Save a new Question', () => {
  
    I.see("Save new question","h2")
});

When('I click on save button', () => {
  I.click(".Button")
});

Then('I should see saved', () => {
    I.see("Save",'a')

    
});




Given('I am at Question Page', () => {
    I.amOnPage('http://localhost:3000/question');
});

Given('I have created a new Question', () => {
    I.see("Pick",'div');
    I.click("//*[@id='DatabaseSchemaPicker']/div/div[1]/div");
    I.waitForElement({xpath:"//*[@id='DataPopover']/div/div/div[2]/div"},5);
    I.click(".List-section .List-item:first-child");
  
});

Then('I should see a sql icon', () => {
 
 I.click("//*[@id='root']/div/div/main/div/div/div[1]/div/div[2]/div[1]/button");

 I.seeElement({xpath: "//*[@id='root']/div/div/main/div/div/div[1]/div/div[2]/div[2]/span/button"});
});


When('I click on the sql icon', () => {
    I.click({xpath:"//*[@id='root']/div/div/main/div/div/div[1]/div/div[2]/div[2]/span/button"});
    
});

Then('I should see SQL for this question', () => {
  I.see('SQL for this question','h2');// From "features\question.feature" {"line":29,"column":9}
  
});

When('I click Convert this Question to SQL button', () => {
    I.click({xpath:"/html/body/div[3]/div/div/div/div/div/div[3]/div/button"});
});

Then('I should see the SQL Code', () => {
  I.see("New question","div")
});
