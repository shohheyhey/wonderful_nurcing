require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  context "name, email, password, password_confirmationの情報が入っている時" do
    user = FactoryBot.create(:user)
    it "ユーザー登録される" do
      expect(user).to be_valid
    end
  end

  # 個別でテストした方がよかった気がする
  context "必要な情報が入っていない時" do
    user = FactoryBot.attributes_for( :user, name: Faker::Name.name, email: nil, password: nil, password_confirmation: nil )
    it "ユーザー登録できない" do
      expect(user[:email]).to eq nil
      expect(user[:password]).to eq nil
      expect(user[:password_confirmation]).to eq nil
    end
  end

  context "emailが入力されていない時" do
    let(:user){build(:user, email: nil)}
    it "ユーザー登録できない" do
      expect(user).not_to be_valid
    end
  end


  context "passwordが入力されていない" do
    let(:user){build(:user, password: nil)}
    it "ユーザー登録に失敗する" do
      expect(user).not_to be_valid
    end
  end

  context "password_confirmationが入力されていない" do
    let(:user){build(:user, password_confirmation: nil)}
    it "ユーザー登録に失敗する" do
      expect(user).not_to be_valid
    end
  end


  context "emailがすでに入力されている時" do
    let(:first_user){FactoryBot.build(:user, email: Faker::Internet.email)}
    let(:second_user){build(:user, email: first_user.email)}
    it "ユーザー登録に失敗する" do
      expect(second_user.email).to eq first_user.email
    end
  end

  context "passwordとpassword_confirmationが一致しない時" do
    let(:user_password){Faker::Internet.password}
    let(:user){build(:user, password: user_password, password_confirmation: "confirmation_" + user_password )}
    it "ユーザー登録できない" do
      expect(user).not_to be_valid
    end
  end
end
