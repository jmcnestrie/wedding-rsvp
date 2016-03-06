# wedding-rsvp
A site for wedding guests to send RSVPs

[![Build status](https://travis-ci.org/thehobbs/wedding-rsvp.svg?branch=master)](https://travis-ci.org/thehobbs/wedding-rsvp)

[![Code
Climate](https://codeclimate.com/github/thehobbs/wedding-rsvp/badges/gpa.svg)](https://codeclimate.com/github/thehobbs/wedding-rsvp)

[![Test
Coverage](https://codeclimate.com/github/thehobbs/wedding-rsvp/badges/coverage.svg)](https://codeclimate.com/github/thehobbs/wedding-rsvp/coverage)

## Developing and running the site

To start the site on [localhost:3000](http://localhost:3000), run `$ rails server` from the shell.

Alternatively, the project uses the Gulp system for asset management and browser sync.

**Note**: In order to run the gulp tasks, you must install gulp globally:

`$ npm install -g gulp`

The available tasks are:

* `$ gulp server` Starts all watch tasks then does `rails server`
* `$ gulp sass` Compiles sass files
* `$ gulp sass:watch` Watches changes to sass files and recompiles
* `$ gulp bundle` Watches for changes on JS assets and rebundles
* `$ gulp browser-sync` Starts the Browser Sync proxy

After getting latest, run `$ npm install` to bring down any possible new node packages.

## URLs

* [Rails Development Server](http://localhost:3000)
* [Rails server with BrowserSync](http://localhost:3001) _if the server has been started with `$ gulp server`_
* [BrowserSync control panel](http://localhost:3002)
