require 'rails_helper'

RSpec.describe Api::V1::Auth::RegistrationsController, type: :request do
  describe "POST api/v1/auth" do
    subject { post( api_v1_user_registration_path, params: params) }
    let(:params){attributes_for(:user)}

    context "パラメータにname, email, password, password_confirmationが入力されているとき" do
      it "Userの新規登録ができる。" do
        expect { subject }.to change { User.count }.by(1)
      end
    end
  end
end
