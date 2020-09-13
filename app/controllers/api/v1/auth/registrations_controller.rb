class Api::V1::Auth::RegistrationsController < DeviseTokenAuth::RegistrationsController
  def create
    Office.create!(sign_up_params)
  end
  private
  def sign_up_params
    binding.pry
    params.require(:office).permit(:name, :email, :password, :password_confirmation)
  end
end
