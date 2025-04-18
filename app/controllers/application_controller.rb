class ApplicationController < ActionController::Base
  include SessionsHelper

  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  def hello
    render html: "hello world!¡"
  end

  def goodbye
    render html: "goodbye world!"
  end
end
