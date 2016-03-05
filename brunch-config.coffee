
exports.config =
  # See http://brunch.io/#documentation for docs.

  paths:
    public: 'static'
    # watched: ['app','vendor']

  files:
    javascripts:
      joinTo:
        'js/app.js': /^app/
        'js/vendor.js': /^(?!app)/

    stylesheets:
      joinTo:
        'css/app.css' : /^app/
        'css/vendor.css' : /^(?!app)/

    templates:
      joinTo: 'js/app.js'

  npm:
    enabled: true
    globals:
      $: 'jquery'
