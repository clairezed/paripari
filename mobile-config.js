// This section sets up some basic app metadata,
// the entire section is optional.
App.info({
  // id: 'com.example.clairezuliani.paripari',
  name: 'paripari',
  description: 'Parier au quotidien, simplement',
  author: 'Claire Zuliani',
  email: 'clairezuliani@gmail.com',
  website: 'www.clairezuliani.com'
});

// Set up resources such as icons and launch screens.
// App.icons({
//   'iphone': 'icons/icon-60.png',
//   'iphone_2x': 'icons/icon-60@2x.png',
//   'android_ldpi':
//   'android_mdpi':
//   'android_hdpi':
//   'android_xhdpi':
// });

// App.launchScreens({
//   'iphone': 'splash/Default~iphone.png',
//   'iphone_2x': 'splash/Default@2x~iphone.png',
//   'android_ldpi_portrait':
//   'android_ldpi_landscape':
//   'android_mdpi_portrait':
//   'android_mdpi_landscape':
//   'android_hdpi_portrait':
//   'android_hdpi_landscape':
//   'android_xhdpi_portrait':
//   'android_xhdpi_landscape':
// });

// Set PhoneGap/Cordova preferences
App.setPreference('BackgroundColor', '0xff0000ff');
// App.setPreference('HideKeyboardFormAccessoryBar', true);

// Pass preferences for a particular PhoneGap/Cordova plugin
// App.configurePlugin('com.phonegap.plugins.facebookconnect', {
//   APP_ID: '1234567890',
//   API_KEY: 'supersecretapikey'
// });