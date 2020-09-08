require 'rails_helper'

RSpec.describe Office, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  context "name, email, password, password_confirmationの情報が入っている時" do
    office = FactoryBot.create(:office)
    it "ユーザー登録される" do
      expect(office).to be_valid
    end
  end

  # 個別でテストした方がよかった気がする
  context "必要な情報が入っていない時" do
    office = FactoryBot.attributes_for( :office, name: Faker::Name.name, email: nil, password: nil, password_confirmation: nil )
    fit "ユーザー登録できない" do
      expect(office[:email]).to eq nil
      expect(office[:password]).to eq nil
      expect(office[:password_confirmation]).to eq nil
    end
  end

  context "emailが入力されていない時" do
    let(:office){build(:office, email: nil)}
    it "ユーザー登録できない" do
      expect(office).not_to be_valid
    end
  end


  context "passwordが入力されていない" do
    let(:office){build(:office, password: nil)}
    it "ユーザー登録に失敗する" do
      expect(office).not_to be_valid
    end
  end

  context "password_confirmationが入力されていない" do
    let(:office){build(:office, password_confirmation: nil)}
    fit "ユーザー登録に失敗する" do
      expect(office).not_to be_valid
    end
  end


  context "emailがすでに入力されている時" do
    let(:first_office){FactoryBot.build(:office, email: Faker::Internet.email)}
    let(:second_office){build(:office, email: first_office.email)}
    it "ユーザー登録に失敗する" do
      expect(second_office.email).to eq first_office.email
    end
  end

  context "passwordとpassword_confirmationが一致しない時" do
    let(:user_password){Faker::Internet.password}
    let(:office){build(:office, password: user_password, password_confirmation: "confirmation_" + user_password )}
    it "ユーザー登録できない" do
      expect(office).not_to be_valid
    end
  end
end
