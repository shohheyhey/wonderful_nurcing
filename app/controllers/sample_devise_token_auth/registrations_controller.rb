class DeviseTokenAuth::RegistrationsController < ApplicationController
  protect_from_forgery with: :null_session
  # def new
  #   @office = Office.new
  # end

  # def create
  #   @office = Office.create!(sign_up_params)
  #   binding.pry
  #   render json: @office
  # end

  # private
  #   def sign_up_params
  #     params.require(:office).permit(:name, :email, :password, :password_confirmation)
  #   end
end
