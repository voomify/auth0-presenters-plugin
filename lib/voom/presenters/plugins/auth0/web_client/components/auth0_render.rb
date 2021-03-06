module Voom
  module Presenters
    module Plugins
      module Auth0
        module WebClientComponents
          def render_login_button(comp,render:, components:, index:)
            view_dir = File.join(__dir__, '../../../../../../..', 'views', 'components')
            render.call :erb, :login_button, views: view_dir,
                        locals: {comp: comp,
                                 components: components, index: index}
          end
          # The string returned from this method will be added to the HTML header section of the page layout
          # It will be called once for the page.
          # The pom is passed along with the sinatra render method.
          def render_header_auth0(_pom, render:)
            view_dir = File.join(__dir__, '../../../../../../..', 'views', 'components')
            render.call :erb, :auth0_header, views: view_dir
          end
        end
      end
    end
  end
end
