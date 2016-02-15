# wedding-rsvp
A site for wedding guests to send RSVPs

## Developing and running the site

The project uses the Gulp system for asset management and browser sync. The available tasks are:

* `$ gulp server` Starts all watch tasks then does `rails server`
* `$ gulp sass` Compiles sass files
* `$ gulp sass:watch` Watches changes to sass files and recompiles
* `$ gulp bundle` Watches for changes on JS assets and rebundles
* `$ gulp browser-sync` Starts the Browser Sync proxy

### After getting latest..

Run `$ npm install` to bring down any possible new node packages.

## URLs

* http://localhost:3000 - Normal rails server
* http://localhost:3001 - Server with browser sync proxy
* http://localhost:3002 - Browser Sync control panel
