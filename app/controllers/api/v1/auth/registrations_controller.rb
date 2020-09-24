class Api::V1::Auth::RegistrationsController < DeviseTokenAuth::RegistrationsController
  def new
    @user = User.new
  end

  def create
    @user = User.new(sign_up_params)
    # binding.pry
    if @user.save
      redirect_to api_v1_customers_path and return
    end
  end

  private

    def sign_up_params
      params.permit(:name, :email, :password, :password_confirmation)
    end
end
