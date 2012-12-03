require '../lib/c2po'
include C2PO

p = Geom::Point.new
p[:a] = 2
puts p.to_edn
