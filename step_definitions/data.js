const { I } = inject();
const assert = require('assert');

Given('I am on the Metabase homepage', () => {
  I.see('New')
});

When('I click on New', () => {
  I.wait(2);
  I.click('New');
});

When('I select Question', () => {
  I.wait(2);
  I.click('Question');
  I.see('Pick your starting data');
  I.wait(2);
});

When('I click on Saved Questions', () => {
  I.wait(2);
  I.click('Saved Questions',{xpath:'/html/body/span[2]/span/div/div[2]/div/div[2]/div/h3'});
  I.see('Accounts',{xpath:'/html/body/span[2]/span/div/div[2]/ul/div/li[1]/div'});
});

When('I select a previously saved question', () => {
  I.wait(2);
  I.click('Accounts',{xpath:'/html/body/span[2]/span/div/div[2]/ul/div/li[1]/div'});
  I.wait(2);
});

When('I click on Visualize', () => {
  I.wait(2);
  I.click('Visualize');
  I.wait(2);
});






