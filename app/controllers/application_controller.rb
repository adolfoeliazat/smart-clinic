class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

   def hello
    render html: "You Landed Safe On Our Smart Clinic!"	
  end
end
