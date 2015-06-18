SocialIcons = Ember.Component.extend
  actions:
    goTwitter: ->
      chrome.tabs.create({url: "https://twitter.com/" + @get('model.twitter_handle')});
    goFacebook: ->
      chrome.tabs.create({url: "https://facebook.com/" + @get('model.facebook_slug')});


`export default SocialIcons`
