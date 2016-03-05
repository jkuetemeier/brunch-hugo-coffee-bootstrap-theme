
# brunch-config.coffee
module.exports = config:
  paths:
    public: 'static'
    watched: ['app','vendor']

  conventions:
    assets:  /^app[\/\\]+assets[\/\\]+/

    ignored: ///^(bower_components[\/\\]+bootstrap-less(-themes)?|
             app[\/\\]+styles[\/\\]+overrides|(.*?[\/\\]+)?[_]\w*)///

  modules:
    definition: false
    wrapper: false

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

  plugins:
    copycat:
      "fonts" : ["bower_components/font-awesome/fonts"]
      "images": []
      # shows each file that is copied to the destination directory
      verbose : true
      # only copy a file if it's modified time has changed
      # (only effective when using brunch watch)
      onlyChanged: true


    bower:
      asserts:
        "img" : /bootstrap(\\|\/)img/
        "font": /font-awesome(\\|\/)font/

  clean: 'all'
