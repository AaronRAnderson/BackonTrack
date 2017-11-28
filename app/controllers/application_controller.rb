class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_copyright

  def set_copyright
    @copyright = AaronRAnderson::Renderer.copyright("Back on Track Chiropractic", "All rights reserved")
  end
end

module AaronRAnderson
    class Renderer
      def self.copyright name, msg
        "&copy; #{Time.now.year} | #{name} | #{msg}".html_safe
      end
    end
  end
