require 'rails_helper'

RSpec.describe User, type: :model do
  describe "creation" do
    before do
      @user = User.create(email: "test1@test.com", password: "test1test", password_confirmation: "test1test", first_name: "John", last_name: "Smith")
    end

    it "can be created" do
      expect(@user).to be_valid
    end

    it "cannot be created without first_name, last_name" do
      @user.first_name = nil
      @user.last_name = nil
      expect(@user).to_not be_valid
    end
  end
end