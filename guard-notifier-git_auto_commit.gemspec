# -*- encoding: utf-8 -*-
require File.expand_path('../lib/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["tomykaira"]
  gem.email         = ["tomykaira@gmail.com"]
  gem.description   = %q{GitAutoCommit receives guard's notification and commit with build status}
  gem.summary       = %q{GitAutoCommit receives guard's notification and commit with build status}
  gem.homepage      = ""

  gem.add_dependency('guard', '~>1.6.2')
  gem.add_development_dependency('rake')

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "guard-notifier-git_auto_commit"
  gem.require_paths = ["lib"]
  gem.version       = Guard::Notifier::GitAutoCommit::VERSION
end
