# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_cinema_convenienza_session',
  :secret      => '5d16a3537e733892724444e988bff30e8fe0a839b7fb7ece407bf59fad564c55ffecc5798edc4dec92fa0e84271231eb3f61f6302e79f95ef6d568285d7eff90'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
