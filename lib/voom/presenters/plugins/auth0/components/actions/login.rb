require 'voom/presenters/dsl/components/actions/base'


module Voom
  module Presenters
    module Plugins
      module Auth0
          class Login < DSL::Components::Actions::Base
            def initialize(**attribs_, &block)
              super(type: :login, **attribs_, &block)
            end
        end
      end
    end
  end
end
