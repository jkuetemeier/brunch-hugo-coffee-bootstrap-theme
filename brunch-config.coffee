# brunch-config.coffee
module.exports = config:
  paths:
    public: 'static'
    watched: ['app','vendor']
  files:
    javascripts:
      joinTo:
        'js/app.js' : /^app/
        'js/vendor.js' : /(^bower_components|vendor)[\\/]/
        # 'javascripts/bkm-vendor.js': [
        #   'bower_components/lodash/dist/lodash.js'
        #   'bower_components/modernizr/modernizr.js'
        #   'bower_components/localforage/dist/localforage.min.js'
        #   'bower_components/keydrown/dist/keydrown.min.js'
        #   'bower_components/velocity/velocity.js'
        # ]

    stylesheets:
      joinTo:
        'css/app.css' : /^app/
        'css/vendor.css' : /(^bower_components|vendor)[\\/]/

###
module.exports = {
  // See http://brunch.io for documentation.
  files: {
    javascripts: {joinTo: 'app.js'},
    stylesheets: {joinTo: 'app.css'},
    templates: {joinTo: 'app.js'}
  }
}
###
