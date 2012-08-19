# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_art_inventory_session',
  :secret      => 'a1cef38472f6830ecbdf03450d776542cab10956e09302bfb4c5e3c4f31dd136ed7822e6bdb9da67128332c544aa3af057b030a046fe75a116fe0d6a7f02dc34'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
