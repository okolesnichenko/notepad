require 'sinatra/activerecord/rake'
require 'pry'

namespace :db do
  task :load_config do
    require "./config/boot"
  end
end

task :console do
  Pry.start
end
