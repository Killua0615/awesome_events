Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.development? || Rails.evn.test?
    provider :github, "ae4df592ada589b85e62", "1d8d73dd727b06cfceaa1d2fe9ed493db1ac16f1"
  else
    provider :github,
      Rails.application.credentials.github[:client_id],
      Rails.application.credentials.github[:client_secret]
  end
end