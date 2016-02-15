module Site
  module Helpers

    # Renders a HAML file inside the pages/ directory
    # @param page [Symbol] The page to render
    # @param layout [Boolean] Flag to use layout or not
    def render_page(page, layout=true)
      haml :"pages/#{page}", layout: layout
    end

    def render_partial(page)
      haml :"partials/#{page}", layout: false
    end
    # Generate a script tag for given file
		# @param file [String] File to generate script tag from
		# return [String] HTML script tag
		def script(file)
			"<script src='#{file}'></script>"
		end

		# Generate a css tag for given file
		# @param file [String] File to generate css tag from
		# return [String] HTML css tag
		def css(file)
			"<link rel='stylesheet' type='text/css' href='#{file}'>"
		end
  end
end
