Gem::Specification.new do |s|
  s.name    = "sequel_on_connect"
  s.version = "0.1"
  s.date    = "2009-05-13"

  s.description = "Run callbacks when you connect to a database using the Sequel database toolkit"
  s.summary     = "Run callbacks when you connect to a database using the Sequel database toolkit"
  s.homepage    = "http://github.com/foca/sequel_on_connect"

  s.authors = ["Nicolás Sanguinetti"]
  s.email   = "contacto@nicolassanguinetti.info"

  s.require_paths     = ["lib"]
  s.has_rdoc          = true
  s.rubyforge_project = "sequel_on_connect"
  s.rubygems_version  = "1.3.1"

  if s.respond_to?(:add_development_dependency)
    s.add_development_dependency "sr-mg"
    s.add_development_dependency "citrusbyte-contest"
  end

  s.files = %w[
.gitignore
LICENSE
README.rdoc
Rakefile
sequel_on_connect.gemspec
lib/sequel_on_connect.rb
test/test_on_connect.rb
]
end
