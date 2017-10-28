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
      
      show_items_we_need = lambda do
        render_page :items_we_need
      end

      get '/', &show_landing
      get '/how-to-help/?', &show_how_to_help
      #get '/items-we-need/?', &show_items_we_need
    end
  end
end
