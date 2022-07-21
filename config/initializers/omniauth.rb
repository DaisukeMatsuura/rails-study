Rails.application.config.middleware.use OmniAuth::Builder do
    if Rails.env.development? ¦¦ Rails.env.test?
        provider :github, "Iv1.0dea3041ac8b4f97", "1feb1dc06b8e9a0a2ab904b5bb327e9e1f2f3b1a" # ❶
    else
        provider :github, # ❷
            Rails.application.credentials.github[:client_id],
            Rails.application.credentials.github[:client_secret]
    end
end