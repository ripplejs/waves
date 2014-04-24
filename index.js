var ripple = require('ripple');
var events = require('events');
var each = require('each');
var refs = require('refs');
var bind = require('bind-methods');
var extend = require('extend');
var computed = require('computed');

module.exports = function(template) {
  return ripple(template)
    .use(events)
    .use(each)
    .use(refs)
    .use(bind)
    .use(extend)
    .use(computed);
};