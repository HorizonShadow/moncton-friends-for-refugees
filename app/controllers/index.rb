require_relative 'base.rb'

module Site
  module Routes
    class Index < Base

      show_landing = lambda do
        render_page :landing
      end

      show_how_to_help = lambda do
        render_page :how_to_help
      end

      get '/', &show_landing
      get '/how-to-help/?', &show_how_to_help
    end
  end
end
