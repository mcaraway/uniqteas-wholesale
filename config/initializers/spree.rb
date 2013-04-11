# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|
  # Example:
  # Uncomment to override the default site name.
  # config.site_name = "Spree Demo Site"
  
  config.site_name = "Uniq Teas"
  config.site_url = "wholesale.uniqteas.com"
  config.default_meta_keywords = "tea, loos tea, custom tea"
  config.default_meta_description = "The place to make your own custom tea blend."
  config.auto_capture = true
  

  # Ensure the agent is started using Unicorn
  # This is needed when using Unicorn and preload_app is not set to true.
  # See http://support.newrelic.com/kb/troubleshooting/unicorn-no-data
  ::NewRelic::Agent.after_fork(:force_reconnect => true) if defined? Unicorn

  Spree.user_class = "Spree::User"
end
