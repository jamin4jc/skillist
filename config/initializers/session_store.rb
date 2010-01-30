# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_skillit_session',
  :secret      => 'e94eab18b82bceaeb5c15a503335b8b10f2cbbb2edec1c64983aa4cff3be8630aa5fbd9da4c4641c1a3980b7f0e814832ba586ac0dee5136197b55e9c43a052f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
