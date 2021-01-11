require_relative 'login_button_component'

module Voom
  module Presenters
    module Plugins
      module Auth0
        # Components add new methods to the POM component hierarchy. They should add a component object to the
        # POM component stream. These components are the declarative instructions that are used to render a client.
        # POM components require corresponding views templates and JS that render them.
        # Name this method whatever you want.
        module DSLComponents
          def login_button(**attributes, &block)
            self << Auth0::LoginButtonComponent.new(parent: self, **attributes, &block)
          end
        end
      end
    end
  end
end
