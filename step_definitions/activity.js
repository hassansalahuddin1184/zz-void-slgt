const { I } = inject();

Given('I navigate on home page', () => {
    I.click('New');
    I.wait(5);
});

When('I select settings', () => {
    I.click({xpath:'/html/body/div[1]/div/header/div/div[2]/div[3]/div/div/button'})
});

Then('I should see Acount Settings', () => {
    I.wait(5);
    I.see('Account settings');
 
});

Then('I should be able to select Activity', () => {
    I.click('Activity',{xpath:'/html/body/span[2]/span/div/div/div/ol/li[3]/a/div/span'});
    I.wait(3);
});

Then('I should see my Activity', () => {
    I.see('SETUP TIP');
});
