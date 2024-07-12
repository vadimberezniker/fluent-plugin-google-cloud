Gem::Specification.new do |gem|
  gem.name          = 'fluent-plugin-vadimberezniker-gcp'
  gem.description   = <<-DESCRIPTION
   Fluentd plugins for Google Cloud Logging.
   An unaffiliated fork of the official library.
  DESCRIPTION
  gem.summary       = 'fluentd plugins for the Stackdriver Logging API'
  gem.homepage      =
    'https://github.com/GoogleCloudPlatform/fluent-plugin-google-cloud'
  gem.license       = 'Apache-2.0'
  gem.version       = '0.1.2'
  gem.authors       = ['Vadim Berezniker']
  gem.email         = ['vadim@berezniker.com']
  gem.required_ruby_version = Gem::Requirement.new('>= 2.6')

  gem.files         = Dir['**/*'].keep_if { |file| File.file?(file) }
  gem.test_files    = gem.files.grep(/^(test)/)
  gem.require_paths = ['lib']

  gem.add_runtime_dependency 'fluentd', '~> 1.16'
  gem.add_runtime_dependency 'google-api-client', '0.53.0'
  gem.add_runtime_dependency 'googleapis-common-protos', '1.4.0'
  gem.add_runtime_dependency 'googleauth', '1.3.0'
  gem.add_runtime_dependency 'google-cloud-logging', '2.3.2'
  gem.add_runtime_dependency 'google-cloud-monitoring-v3', '0.10.0'
  gem.add_runtime_dependency 'google-protobuf', '3.22.1'
  gem.add_runtime_dependency 'grpc', '1.53.0'
  gem.add_runtime_dependency 'json', '2.6.3'
  gem.add_runtime_dependency 'opencensus', '0.5.0'
  gem.add_runtime_dependency 'opencensus-stackdriver', '0.4.1'

  gem.add_development_dependency 'mocha', '1.9.0'
  # Keep this the same as in
  # https://github.com/fluent/fluent-plugin-prometheus/blob/master/fluent-plugin-prometheus.gemspec
  gem.add_development_dependency 'coveralls', '0.8.23'
  gem.add_development_dependency 'prometheus-client', '< 0.10'
  gem.add_development_dependency 'rake', '13.0.6'
  gem.add_development_dependency 'rubocop', '1.48.1'
  gem.add_development_dependency 'test-unit', '3.3.3'
  gem.add_development_dependency 'webmock', '3.17.1'
end
