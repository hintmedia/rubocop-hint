Gem::Specification.new do |spec|
  spec.name                  = 'rubocop-hint'
  spec.version               = "0.4.0"
  spec.required_ruby_version = '>= 2.3.0'
  spec.authors               = ['Hint']
  spec.email                 = ['tech@hint.io']

  spec.summary               = "Hint's shared Rubocop style guide"
  spec.homepage              = 'https://github.com/hintmedia/hint-rubocop_style'
  spec.license               = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.add_dependency 'rubocop', '>= 1.14.0'
  spec.add_dependency 'rubocop-rspec', '>= 2.3.0'
  spec.add_dependency 'rubocop-rails', '>= 2.10.0'
  spec.add_dependency 'rubocop-performance', '>= 1.11.0'
  spec.add_dependency 'standard', '>= 1.1.0'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
end
