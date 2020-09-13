require "rails_helper"

RSpec.describe "/api/v1/auth", type: :request do
  describe "POST api/v1/auth" do
    subject { post("api/v1/auth", params) }
    let(:params) do
      {
        "office":{
            "name": "test_office",
            "email": "test_office_email_25@example.com",
            "password": "test_office_password",
            "password_confirmation": "test_office_password"
          }
      }
    end

    context "パラメータにname, email, password, password_confirmationが入力されているとき" do
      it "Officeの新規登録ができる。" do
        binding.pry
        expect { subject }.to change { Office.count }.by(1)

      end
    end
  end
end
