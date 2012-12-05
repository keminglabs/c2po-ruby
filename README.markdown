C2PO Ruby language bindings
===========================

[C2PO](http://keminglabs.com/c2po/) is a grammar of graphics implementation inspired by Hadley Wickham's ggplot2 library.
This Rubygem uses the free online C2PO compiler and is limited to 1 MB of data.
Plot specifications are compiled directly to an SVG string, which is returned:

```ruby
require 'c2po'

#Make some random data:
data = 20.times.collect do
  {:a => 10*rand, :b => 5*rand}
end

#Specify a simple scatterplot graphic:
scatterplot_spec = {
  :data => data,
  :geom => :point,
  :mapping => {:x => :a, :y => :b}}

#Render an SVG string:
C2PO.render scatterplot_spec
  #=> '<svg height="660" width="660" ...'
```


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
