module Voom
  module Presenters
    module Plugins
      module Auth0
        # Web Client Actions set up the the event handler data that will be consumed by a javascript class
        # This data will be stored on the DOM as a data attribute defined in the
        # file: views/components/assets/auth0.erb
      module WebClientActions
        def action_data_login(action, _parent_id, *)
          # Type, URL, Options, Params (passed into javascript event/action classes)
          [action.type, action.url, action.options.to_h, action.attributes.to_h]
        end

        def action_data_logout(action, _parent_id, *)
          # Type, URL, Options, Params (passed into javascript event/action classes)
          [action.type, action.url, action.options.to_h, action.attributes.to_h]
        end
      end
      end
    end
  end
end