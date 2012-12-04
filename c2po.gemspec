$:.unshift(File.join(File.dirname(__FILE__), 'lib'))

require 'c2po/version'

spec = Gem::Specification.new do |s|
  s.name = 'c2po'
  s.version = C2PO::VERSION
  s.summary = 'Ruby bindings for C2PO'
  s.description = 'C2PO is a grammar for statistical graphics. See http://keminglabs.com/c2po.'
  s.authors = ['Kevin Lynagh']
  s.email = ['kevin@keminglabs.com']
  s.homepage = 'http://keminglabs.com/c2po'
  s.require_paths = %w{lib}

  s.add_dependency('edn', '~> 1.0.0')
  
  s.files = `git ls-files`.split("\n")
  s.require_paths = ['lib']
end
