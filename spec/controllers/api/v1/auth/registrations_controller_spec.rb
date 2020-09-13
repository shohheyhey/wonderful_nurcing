require 'rails_helper'

RSpec.describe Api::V1::Auth::RegistrationsController, type: :request do
  fdescribe "POST api/v1/auth" do
    subject { post( api_v1_office_registration_path, params) }
    let(:params) do
      { office: attributes_for(:office)}
    end
    context "パラメータにname, email, password, password_confirmationが入力されているとき" do
      it "Officeの新規登録ができる。" do
        binding.pry
        expect { subject }.to change { Office.count }.by(1)
      end
    end
  end
end
