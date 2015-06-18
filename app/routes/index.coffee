`import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'`

IndexRoute = Ember.Route.extend AuthenticatedRouteMixin,
  beforeModel: (transition) ->
    @transitionTo('lookup')

    


`export default IndexRoute`