Gem::Specification.new do |s|
  s.name        = 'noun-project-api'
  s.version     = '0.0.1'
  s.platform    = Gem::Platform::RUBY
  s.date        = '2014-11-05'
  s.summary     = "An API wrapper for The Noun Project API's"
  s.description = "A Gem to expose a wrapping API for The Noun Project API's"
  s.authors     = ["Nadav Shatz"]
  s.email       = 'nadav@tailorbrands.com'
  s.homepage    = 'https://github.com/TailorBrands/noun-project-api'
  s.license     = 'MIT'

  s.files        = Dir['README.rdoc', 'VERSION', 'MIT-LICENSE', 'Rakefile', 'lib/**/*']
  s.test_files   = Dir['spec/**/*']

  s.add_runtime_dependency 'rest-client', '~> 0'
  s.add_development_dependency 'rake', '~> 0'
  s.add_development_dependency 'rspec', '~> 3.1', '>= 3.1.0'
end
