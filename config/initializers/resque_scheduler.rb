uri = URI.parse("redis://localhost:6379/")
# Resque.redis = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)
Resque.redis = 'localhost:6379'
Resque::Scheduler.dynamic = true

Dir["#{Rails.root}/app/jobs/*.rb"].each { |file| require file }