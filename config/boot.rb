$app_env = ENV.fetch('APP_ENV', 'development').to_sym

def load_bundler
  require 'bundler'
  groups = %i[default]
  groups << :development if $app_env == :development
  groups << :test if $app_env == :test
  Bundler.require(*groups)
end

def load_dotenv
  require 'dotenv'
  return unless %i[development test].include?($app_env)
  Dotenv.load
end

load_dotenv
load_bundler

require_all 'app'