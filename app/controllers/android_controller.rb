class AndroidController < ActionController::Base
  protect_from_forgery with: :null_session
  layout false
end