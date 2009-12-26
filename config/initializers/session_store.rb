# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_calendar_session',
  :secret      => '6a0b5942bf2e5ba38aab40583edd6b3ac48a8476a3b12efd79abb7f1ded7d3051660773aa7c891ad47bcad3747e25d787e4cd7072584b86fb7441b83517be40c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
