require '../lib/c2po'

data = [{:a => 1, :b => 2}, {:a => 2, :b => 5}]
h = {
  :data => data,
  :geom => :point,
  :mapping => {:x => :a, :y => :b}}

C2PO.render(h)

