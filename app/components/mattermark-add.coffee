MattermarkAdd = Ember.Component.extend
  actions:
    submitNewCompany: ->
      chrome.tabs.create({url: "https://mattermark.com/app/Register/company"});
`export default MattermarkAdd`
