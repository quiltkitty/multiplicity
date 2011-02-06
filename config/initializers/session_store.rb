# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_multiplicity_session',
  :secret      => '1e75f60d9564ee8b98d4713e3bb83d06a9b056625ae9e6019bc95eea4396d90a944005896237b237aa086ef33609f84d9532cf66a86f33f42fb1b7a0eef4e55d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
