Feature('Saving Metabase Question');

Scenario('Saving a new question', async ({ I }) => {
  // Login to Metabase
  I.amOnPage('/login');
  I.fillField("//input[@type='email']", 'l192209@lhr.nu.edu.pk');
  I.fillField("//input[@type='password']", 'Moazzan1234');
  I.click("//button[@type='submit']");
  
  //Wait for dashboard
  I.waitForElement("//*[@id='root']/div/div/main/div/div[3]/div",10)
  
  //Click On New button
  I.click({xpath: "//*[@id='root']/div/header/div/div[2]/div[2]/span[1]/button"})
  
  //Wait for Dialog
  I.waitForElement(".Icon",5)

  //Click on Question
  I.click({xpath:"/html/body/span/span/div/div/div/ol/li[1]/a"})

  //Choose a Data source
  I.click("//*[@id='DatabaseSchemaPicker']/div/div/div")
  I.waitForElement({xpath:"//*[@id='root']/div/div/main/div/div/div[2]/div/div/div/div/div/div[2]/div[1]/div/div/div/a"},10)
  I.click(".List-section .List-item:first-child")
 
 //Choose metrics to summarize
  I.click({xpath:"//*[@id='root']/div/div/main/div/div/div[2]/div/div/div/div[3]/div/div[2]/div[1]/div/div[1]/div/a/div/div"})
  I.waitForElement(".PopoverBody")
  I.click({xpath:"/html/body/span[3]/span/div/div/div/div[2]/div"})

  //Click on Visualize Button
  I.click({xpath:"//*[@id='root']/div/div/main/div/div/div[2]/div/div/button"});
  I.waitForElement("#root",100)
  
  //Click on Save button
  I.click({xpath:"//*[@id='root']/div/div/main/div/div/div[1]/div/div[2]/span/a"})
  
  //Accepting Save
  I.click("//button[@type='submit']");
});