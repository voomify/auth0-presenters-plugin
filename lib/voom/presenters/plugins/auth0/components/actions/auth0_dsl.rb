require_relative 'login'
require_relative 'logout'

module Voom
  module Presenters
    module Plugins
      module Auth0
        # Event Actions are methods that appear inside an event block.
        # They do something on the (web) client and require code written for the client.
        # Name this actionJs method whatever you want
        # The data for this actionJs is rendered into the DOM using the file:
        #   web_client/components/actions/Auth0_data.rb
        # The javascript that performs the actionJs is defined in the file:
        #   views/js/components/actions/Auth0_action.js
        module DSLEventActions
          def login(**attributes, &block)
            self << Auth0::Login.new(parent: self, **attributes, &block)
          end

          def logout(**attributes, &block)
            self << Auth0::Logout.new(parent: self, **attributes, &block)
          end
        end
      end
    end
  end
end
