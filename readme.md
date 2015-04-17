##PariPari


###Install app
If you clone the app, don't forget to create `.config/settings-production.json` on the same model as `.config/settings-development.json` to store keys that should be used in production.

###Run app
You can use npm scripts under package.json to launch the app.

*Examples :*

`$ npm start` : run app on local machine with dev settings
`$ npm run prod device` : install and run app on your android device, using remote DB from paripari.meteor.com (you can change it).

