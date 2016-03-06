
exports.config = {
  // See http://brunch.io/#documentation for docs.

/*
  conventions: {
    assets: function(path) {
      /**
       * Loops every path and returns path|true|false according what we need
       * @param   path    file or directory's path
       * @returns path    if it is a directory
       *          true    if it fit with the regular expression
       *          false   otherwise
       *
       */
 /*     if( /\/$/.test(path) ) return path;
      // /^app\/.*\.html/.test(path) ||
      // RegExp for anything we need
      return /assets[\\/]/.test(path)
            || /.*(?:\.eot|\.svg|\.ttf|\.woff|\.woff2)/.test(path);

    }
  },
*/
  paths: {
    public: 'static'
    // watched: ['app','vendor']
  },

  files: {
    javascripts: {
      joinTo: {
        'js/app.js': /^app/,
        'js/vendor.js': /^(?!app)/
      }
    },

    stylesheets: {
      joinTo: {
        'css/style.css' : /^app/,
        'css/vendor.css' : /^(?!app)/
      }
      //joinTo: 'css/style.css'
    },

    templates: {
      joinTo: 'js/app.js'
    }
  },

  npm: {
    enabled: true,
    globals: {
      $: 'jquery'
    },
    styles: {
      'bootstrap': [
        'dist/css/bootstrap.min.css',
      ]
    },
    static: [
      'bootstrap/dist/fonts/',
      'bootstrap/dist/fonts/',
      'fonts/glyphicons-halflings-regular.eot',
      'bootstrap/fonts/glyphicons-halflings-regular.eot',
      'node_modules/bootstrap/fonts/glyphicons-halflings-regular.eot',


      'bootstrap\/dist\/fonts\/.*'
    ]
  },

  plugins: {
    /*
    afterBrunch: [
     [
       'mkdir static/fonts -p',
       'cp node_modules/bootstrap/dist/fonts/* static/fonts',
     ].join(' && ')
    ],*/
    copycat:{
      "fonts" : ["node_modules/font-awesome/fonts", "node_modules/bootstrap/fonts"],
      // "images": ["someDirectoryInProject", "bower_components/some_package/assets/images"],
      verbose : true, //shows each file that is copied to the destination directory
      onlyChanged: true //only copy a file if it's modified time has changed (only effective when using brunch watch)
    }
  }
};
