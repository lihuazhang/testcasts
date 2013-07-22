module OpenSSL
  module SSL
    remove_const :VERIFY_PEER
  end
end
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, OMNIAUTH_CONFIG['github_key'], OMNIAUTH_CONFIG['github_secret']
  provider :weibo, OMNIAUTH_CONFIG['weibo_key'], OMNIAUTH_CONFIG['weibo_secret']
  #provider :qq_connect, ENV['qq_key'], ENV['qq_secret']
end

# Added to config/initializers/omniauth.rb
OmniAuth.config.on_failure = Proc.new { |env|
  OmniAuth::FailureEndpoint.new(env).redirect_to_failure
}
