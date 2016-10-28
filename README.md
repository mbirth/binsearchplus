Binsearch+
==========

This is a Chrome extension which adds a few features to Binsearch, such as:

* Makes radio button labels clickable
* planned: Keep search term when switching between basic/advanced search
* planned: Make full row clickable to toggle checkbox
* planned: Button "unselect all"
* planned: Automatically select all entries with the same basename


Compilation
-----------

To compile this extension, make sure you have installed the CoffeeScript compiler.

Then just run:

```
make
```

It will compile everything and the final extension ends up in the `build/` directory.



Installation
------------

To install the extension into your Chrome or Chromium browser, go to *Menu* → *Tools* → *Extensions*,
enable *Developer Mode* and load the `build/` directory using the **Load unpacked extension…** button.



Distribution
------------

If you want to create a Chrome Extension **.crx** package, just run:

```
make crx
```

It will generate an RSA key if needed and compile everything into a `binsearchplus.crx`.
That file can then be distributed.
