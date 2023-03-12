const { I } = inject();
const assert = require('assert');

Given('I am on the Metabase homepage', () => {
  I.wait(2)
});

When('I click on New', () => {
  I.wait(2);
  I.click('New');
});

When('I select Question', () => {
  I.wait(2);
  I.click('Question');
});
Then('I should see new page', () => 
{
    I.see('Pick your starting data');
    I.wait(2);
});
When('I click on Sample Database', () => {
  I.click('Sample Databse');
  I.wait(2);
});
When('I click on Accounts', () => {
  I.click('Accounts');
  I.wait(2);
});

Then('I should see the results of the query', () => {
  I.see('Filter');
  I.wait();
});

When('I click on Save', () => {
  I.click('Save');
  I.see('Save new question');
  I.click('Save');
});

// When('I enter a name for the question', () => {
//   // From "features\data.feature" {"line":16,"column":9}
//   throw new Error('Not implemented yet');
// });

// When('I click on Save Question', () => {
//   // From "features\data.feature" {"line":17,"column":9}
//   throw new Error('Not implemented yet');
// });

Then('I should see a confirmation message that the question was saved', () => {
  I.see('Saved! Add this to a dashboard?');
});
//Saved Question
When('I click on New', () => {
  I.wait(2);
  I.click('New');
});

When('I select Question', () => {
  I.wait(2);
  I.click('Question');
});
Then('I should see new page', () => 
{
    I.see('Pick your starting data');
    I.wait(2);
});

When('I click on Saved Questions', () => {
  I.click('Saved Questions');
  I.see('Accounts');
});

When('I select a previously saved SQL question', () => {
  I.click('Accounts')
});

When('I click on Visualize', () => {
  I.click('Visualize');
});

Then('I should see a visualization of the question results', () => {
  I.see('Doing Science');
});
