class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def ping
    render text: Time.now.to_s
  end
end
