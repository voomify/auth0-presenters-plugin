require 'voom/presenters/dsl/components/actions/base'


module Voom
  module Presenters
    module Plugins
      module Auth0
          class Logout < DSL::Components::Actions::Base
            def initialize(**attribs_, &block)
              super(type: :logout, **attribs_, &block)
            end
        end
      end
    end
  end
end
