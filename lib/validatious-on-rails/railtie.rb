require 'rails'
require 'validatious-on-rails'

module ValidatiousOnRails
  class Railtie < Rails::Railtie
    initializer :after_initialize do
      ActionView::Base.send :include, ValidatiousOnRails::Helpers
    end
  end
end
