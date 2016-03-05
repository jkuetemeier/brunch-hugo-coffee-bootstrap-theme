
exports.config =
  # See http://brunch.io/#documentation for docs.

  paths:
    public: 'static'
    # watched: ['app','vendor']

  files:
    javascripts:
      joinTo:
        'js/app.js': /^app/
        'js/vendor.js': [
          /^node_modules\/bootstrap/
          /^node_modules\/jquery/
          /^node_modules\/lodash/
        ]

    stylesheets:
      joinTo:
        'css/app.css' : /^app/
        # 'css/vendor.css' : /^(?!app)/

    templates:
      joinTo: 'js/app.js'

  npm:
    globals:
      $: 'jquery'
