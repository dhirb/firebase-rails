class LoginController < AndroidController

  def index
    api_token = params[:api_token]
    uid = params[:uid]
    provider = params[:provider]

    user = User.find_by_uid(uid)
    unless user.nil?
      user
    end
  end

end
