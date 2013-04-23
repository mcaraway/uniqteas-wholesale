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

  Spree::ActiveShipping::Config.set(:ups_login => "caraway tea")
  Spree::ActiveShipping::Config.set(:ups_password => "B4radhur")
  Spree::ActiveShipping::Config.set(:ups_key => "8CA5E782B48C580A")
  Spree::ActiveShipping::Config.set(:usps_login => "193CARAW5093")
  Spree::ActiveShipping::Config.set(:origin_country => "US")
  Spree::ActiveShipping::Config.set(:origin_city => "Marlboro")
  Spree::ActiveShipping::Config.set(:origin_state => "NY")
  Spree::ActiveShipping::Config.set(:origin_zip => "12542")
  Spree::ActiveShipping::Config.set(:fedex_key => "Q2Bl8FsDtvptQw95")
  Spree::ActiveShipping::Config.set(:fedex_password => "Z2TZ5PJdGeQRINKvADohwRbRN")
  Spree::ActiveShipping::Config.set(:fedex_account => "315756936")
  Spree::ActiveShipping::Config.set(:fedex_login => "104692510")
  Spree::ActiveShipping::Config.set(:test_mode => false) # If the above is for a developer account
  # Spree::PrintInvoice::Config.set(:print_invoice_logo_path => "logo.png")

  # Ensure the agent is started using Unicorn
  # This is needed when using Unicorn and preload_app is not set to true.
  # See http://support.newrelic.com/kb/troubleshooting/unicorn-no-data
  ::NewRelic::Agent.after_fork(:force_reconnect => true) if defined? Unicorn

  Spree.user_class = "Spree::User"
  Spree::Config.set(:address_requires_state, true)
end

