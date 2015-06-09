# Money To Prisoners

[![Build
Status](https://travis-ci.org/ministryofjustice/money-to-prisoners.svg?branch=master)](https://travis-ci.org/ministryofjustice/money-to-prisoners)
[![Code
Climate](https://codeclimate.com/github/ministryofjustice/money-to-prisoners/badges/gpa.svg)](https://codeclimate.com/github/ministryofjustice/money-to-prisoners)
[![Test
Coverage](https://codeclimate.com/github/ministryofjustice/money-to-prisoners/badges/coverage.svg)](https://codeclimate.com/github/ministryofjustice/money-to-prisoners/coverage)

## Getting Started

Install the front-end resources using [NPM](https://www.npmjs.com/):

```bash
npm install
```

Run the Ruby on Rails server:

```bash
rake db:create db:migrate # provision database (first time only)
rails server # run the app
```

## Running tests

### Browser tests

Browser tests run in [Nightwatch.js](http://nightwatchjs.org/) via [NodeJS](https://nodejs.org).

```bash
npm test # runs all tests
```
