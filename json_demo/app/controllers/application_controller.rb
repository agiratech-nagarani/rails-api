class ApplicationController < ActionController::API
  # protect_from_forgery with: :exception
  include ActionController::ImplicitRender
    include ActionController::Helpers
     include ActionController::Caching 
end
