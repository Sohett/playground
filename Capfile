# Load DSL and set up stages
require "capistrano/setup"

# Include default deployment tasks
require "capistrano/deploy"

# Load DSL and Setup Up Stages
require 'capistrano/rails'
require 'capistrano/bundler'
require 'capistrano/rbenv'
require 'capistrano/puma'
require 'capistrano/scm/git'
install_plugin Capistrano::Puma
install_plugin Capistrano::SCM::Git
require 'capistrano/maintenance'
require 'capistrano-db-tasks'

Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }
