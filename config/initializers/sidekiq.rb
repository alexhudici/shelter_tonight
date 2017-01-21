Sidekiq.configure_server do |config|
  config.redis = { url: 'redis://192.168.99.100:6379/12' }
end

Sidekiq.configure_client do |config|
  config.redis = { url: 'redis://192.168.99.100:6379/12' }
end
