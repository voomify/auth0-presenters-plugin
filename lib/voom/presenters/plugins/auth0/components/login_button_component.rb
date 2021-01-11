require 'voom/presenters/dsl/components/event_base'

module Voom
  module Presenters
    module Plugins
      module Auth0
        class LoginButtonComponent < DSL::Components::EventBase
          attr_accessor :label, :disabled

          def initialize(**attribs, &block)
            @label = attribs.delete(:label)
            @disabled = attribs.delete(:disabled) {false}
            super(type: :login_button, **attribs, &block)
            expand!
          end
        end
      end
    end
  end
end
