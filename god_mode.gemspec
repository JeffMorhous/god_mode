require_relative "lib/god_mode/version"

Gem::Specification.new do |spec|
  spec.name        = "god_mode"
  spec.version     = GodMode::VERSION
  spec.authors     = ["Jeff Morhous"]
  spec.email       = ["morhous.jeff@gmail.com"]
  spec.homepage    = "https://jeffmorhous.com"
  spec.summary     = "Adds a simple administrative view to an app."
  spec.description = "Adds a simple administrative view to an app."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/JeffMorhous/god_mode"
  spec.metadata["changelog_uri"] = "https://github.com/JeffMorhous/god_mode"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.1.3.2"
end
