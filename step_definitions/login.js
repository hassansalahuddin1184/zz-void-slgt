const { I } = inject();

Given('Login with username and password', (table) => {
    I.amOnPage('http://localhost:3000/auth/login');
    const cells = table.rows[1].cells;

    I.fillField("username",cells[0].value);
    I.fillField("password",cells[1].value);
    I.wait(2);
    I.click('Sign in');
    I.wait(2);
  });
  Given('Login with false username and password', (table) => {
    I.amOnPage('http://localhost:3000/auth/login');
    const cells = table.rows[1].cells;

    I.fillField("username",cells[0].value);
    I.fillField("password",cells[1].value);
    I.wait(2);
    I.click('Sign in');
    I.wait(2);
    I.see('Password: did not match stored password');
  });  


