# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_spike_passos_compartilhados_session',
  :secret      => '450f203208eb9622e39b3d03e4c094667e4707efa62c427dce1124d8ffcc5ed8832d113b8fd28015e8e35009849cef9aa46d24be656c7297c34de44188cb9d39'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
