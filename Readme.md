# component-boot

  A good starting point for [component(1)](https://github.com/component/component) projects.

## Installation

    $ git clone https://github.com/marcusandre/component-boot.git
    $ make modules
    $ make

## Commands

  This simple command will build all your (sub-)modules and convert every ```template.html```
  and ```.styl``` file referenced in there.

    $ make

  And this command will clean everything up.

    $ make clean

  As you can see: It's easy as pie! :)

## FAQ

### Is there a ```watch``` command?

  I would like to refer you to [watch](https://github.com/visionmedia/watch) which
  is also another tool by [TJ Holowaychuk](https://github.com/visionmedia).

  Then you could do something like:

    $ watch -i 500ms make

## License

  MIT
