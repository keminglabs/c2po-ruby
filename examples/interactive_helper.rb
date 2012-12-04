require '../lib/c2po'
include C2PO

OUT_FILE = File.dirname(__FILE__) + "/index.html"

def html(content)
  <<-EOH
    <html>
      <head></head>
      <body>
        <div id="visualization" style="text-align: center">
         #{content}
        </div>
      </body>
    </html>
  EOH
end

def render! (spec)
  open(OUT_FILE, "w") do |f|
    f.write html C2PO.render spec
  end
end
