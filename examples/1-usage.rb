#This tutorial covers basic usage and plot creation.

#First require the interactive helper functions and dependencies
require File.dirname(__FILE__) + '/interactive_helper'

#then make some random data:

data = 20.times.collect do
  {:a => 10*rand, :b => 5*rand}
end

#Specify a simple scatterplot graphic:

scatterplot_spec = {
  :data => data,
  :geom => :point,
  :mapping => {:x => :a, :y => :b}}

#then render it via the remote c2po server:

render! scatterplot_spec

#This call will save the result in `./index.html` and if your browser is pointed at `http://localhost:3000` it will automatically refresh to show this plot.
