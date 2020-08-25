configure :production, :development do
  set :show_exceptions, true

  ActiveRecord::Base.establish_connection(
      adapter:  'postgresql',
      host:      ENV['DB_HOST'],
      port:      ENV['DB_PORT'],
      username:  ENV['DB_USER'],
      password:  ENV['DB_PASS'],
      database:  ENV['DB_NAME'],
      encoding:  'utf8',
      pool:      5
  )
end
