module.exports = {
  'Home page provides links to view new and processed credits' : function (browser) {
    browser
      .url('http://localhost:3000/')
      .waitForElementVisible('body', 1000)
      .assert.containsText('[href="#TODO/new"]', 'New')
      .assert.containsText('[href="#TODO/history"]', 'History')
      .end();
  }
};
