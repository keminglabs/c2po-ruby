require 'interactive_helper'

data = [{:a => 1, :b => 2}, {:a => 2, :b => 20}]
h = {
  :data => data,
  :geom => Geom::Point.new(:radius => 3),
  :mapping => {:x => :a, :y => :b}}

render! h
