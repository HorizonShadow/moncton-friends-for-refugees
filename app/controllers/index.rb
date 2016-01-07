require_relative 'base.rb'

module Site
  module Routes
    class Index < Base

      show_landing = lambda do
        render_page :landing
      end

      get '/', &show_landing
    end
  end
end
