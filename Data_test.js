Feature('Data');


Scenario('test something',  ({ I }) => {

    //Login test
    I.amOnPage('/');
    I.wait(2);
    I.login('hassansalahuddin298@gmail.com','Mahnoor05');
    I.wait(2);
    //

    //I.previewaccountsdata('Select * from accounts');
    I.wait(2);
    I.runsqlquery('Select * from accounts');
});
