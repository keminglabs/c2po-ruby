C2PO Ruby language bindings
===========================

[C2PO](http://keminglabs.com/c2po/) is a grammar of graphics implementation inspired by Hadley Wickham's ggplot2 library.
This Rubygem uses the free online C2PO compiler and is limited to 1 MB of data.
Plot specifications are compiled directly to an SVG string, which is returned:


Install
-------

For the plain client library, run

    gem install c2po

or add

    c2po, "0.0.1"

to your `Gemfile`.

If you want to learn the grammar and work interactively with the examples in `/examples`, just clone this repo:

    git clone https://github.com/keminglabs/c2po-ruby

install the deps:

    cd examples
    bundle install

then run:

    bundle exec guard

to launch a live-reloading web server on `localhost:3000` for displaying graphics.
Walk through and execute the example code in `examples/1-usage.rb` to get started.
