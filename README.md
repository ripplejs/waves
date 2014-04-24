# waves

A view library built on top of Ripple. Waves is to Ripple as Myth is to Rework. Makes it easier to get started with Ripple if you're not using a package manager.

If you're using Component or Browserify, you're better off using [ripple](https://github.com/ripplejs/ripple) directly.

It's just ripple but with a few plugins (listed below) included for you, to get you started:

* [events](https://github.com/ripplejs/events)
* [each](https://github.com/ripplejs/each)
* [bind-methods](https://github.com/ripplejs/bind-methods)
* [extend](https://github.com/ripplejs/extend)
* [computed](https://github.com/ripplejs/computed)
* [refs](https://github.com/ripplejs/refs)

## Download

* [Development](https://raw.githubusercontent.com/ripplejs/waves/master/dist/waves.js)
* [Production](https://raw.githubusercontent.com/ripplejs/waves/master/dist/waves.min.js)

This adds a `waves` variable to the window. 

## Usage

```html
<body>
  <!-- example view -->
  <script type="text/template" id="person">
    <div>{{name}}</div>
  </script>

  <!-- pull in waves -->
  <script src="path/to/waves.js" type="text/javascript"></script>

  <!-- bind your view with data -->
  <script>
    var Person = waves('#person');
    var person = new Person({
      data: {
        name: 'Gus'
      }
    })
    person.appendTo(document.body);
  </script>
</body>
```

You can reference waves using a CSS selector: 

```js
var Person = waves('#person');
```

or pass in a template string directly:

```js
var Person = waves('<div>{{name}}</div>');
```

You might do an AJAX request to get the template or store the templates on the page.
