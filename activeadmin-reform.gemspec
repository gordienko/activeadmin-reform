# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'activeadmin-reform'
  spec.version       = '1.1.0'
  spec.authors       = ['Artyom Bolshakov']
  spec.email         = ['either.free@gmail.com']

  spec.summary       = 'Integrates ActiveAdmin with Reform'
  spec.description   = 'Provides ability to use form object in your ActiveAdmin application'
  spec.homepage      = 'https://github.com/bolshakov/activeadmin-reform'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features|gemfiles)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'rails', ['>= 5.0', '< 7.0']
  spec.add_dependency 'activeadmin', ['>= 2.1.0', '< 3.0']
  spec.add_dependency 'disposable', '>= 0.5.0'
  spec.add_dependency 'reform', '~> 2.6.0'
  spec.add_dependency 'reform-rails', '~> 0.2.3'

  spec.add_dependency 'bootsnap'

  spec.add_development_dependency 'appraisal', '2.4.1'
  spec.add_development_dependency 'bundler', '~> 2.2.15'
  spec.add_development_dependency 'capybara', '3.35.3'
  spec.add_development_dependency 'codeclimate-test-reporter', '~> 1.0.9'
  spec.add_development_dependency 'database_cleaner'
  spec.add_development_dependency 'launchy', '~> 2.5.0'
  spec.add_development_dependency 'poltergeist'
  spec.add_development_dependency 'rake', '~> 13.0.6'
  spec.add_development_dependency 'rspec', '~> 3.10'
  spec.add_development_dependency 'rspec-rails'
  spec.add_development_dependency 'spbtv_code_style', '~> 1.4.1'
  spec.add_development_dependency 'sqlite3', '~> 1.4.2'
end
