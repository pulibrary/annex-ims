require "hesburgh_infrastructure"
# application_name must match an application in the hesburgh_infrastructure gem
# New applications must be added to config/applications.yml in hesburgh_infrastructure
hesburgh_guard = HesburghInfrastructure::Guard.new(:annex_ims, self)

# Automatically compile CoffeeScript files
# https://github.com/guard/guard-coffeescript
hesburgh_guard.coffeescript

# Automatically install/update your gem bundle when needed
# https://github.com/guard/guard-bundler
hesburgh_guard.bundler gemspec: false do
  # Watch any custom paths
end

# Spring used for preloading application
# https://github.com/guard/guard-spring
hesburgh_guard.spring do
  # Watch any custom paths
end

hesburgh_guard.rails do
  # Watch any custom paths
end

guard 'sunspot', :environment => 'development' do
  watch('Gemfile.lock')
  watch('config/sunspot.yml')
  watch('solr/solr.xml')
  watch(%r{^solr/conf/.*})
end
