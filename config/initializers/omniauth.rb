OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '630059280719-guo29f3k6lqa4tcecqkh28vu8fguodf6.apps.googleusercontent.com', 'Xv5WlVEfToSbrmgBFkUL7sbl', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end
