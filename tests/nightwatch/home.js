module.exports = {
  'Home page shows link to view new and processed credits' : function (browser) {
    browser
      .url('http://localhost:3000/')
      .waitForElementVisible('body', 1000)
      .assert.containsText('[role=main]', 'New')
      .assert.containsText('[role=main]', 'History')
      .end();
  }
};