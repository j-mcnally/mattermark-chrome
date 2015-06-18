`import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'`

LookupRoute = Ember.Route.extend AuthenticatedRouteMixin,
  model: ->
    new Promise((resolve, reject) ->
      chrome.tabs.getSelected null, (tab) ->
        host = new URI(tab.url).host();
        match = host.match(/.*?\.(.*\.\w*$)/)
        match = match[1] if match? && match.length == 2
        domain = match || host
        Ember.$.getJSON("https://api.mattermark.com/companies/?domain=" + domain).then((response) ->
          if (response.companies.length > 0)
            company = response.companies[0]
            Ember.$.getJSON(company.url).then((response) ->
              resolve(response)
            )
          else
            resolve({})
      )
    )

    


`export default LookupRoute`