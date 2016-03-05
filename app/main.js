// app/main.js

import hello from 'hello';
import $ from 'jquery';
import _ from 'lodash';

document.addEventListener('DOMContentLoaded', function() {
  // do your setup here

  var h = ["H", "e", "l", "l", "o"];
  var w = ["World!"];

  var msg = _.join(_.concat(_.join(h, ''), w), ' ');

  hello(msg);

});

