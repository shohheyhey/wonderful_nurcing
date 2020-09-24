class Api::V1::Auth::SessionsController < DeviseTokenAuth::RegistrationsController
  def new
    @user = User.new
  end
end
