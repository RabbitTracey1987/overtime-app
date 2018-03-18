require 'rails_helper'

RSpec.describe User, type: :model do
  describe "creation" do 
      before do 
        @user = User.create(email:"test@test.com",password:"123123123",password_confirmation:"123123123", first_name:"tracey",last_name:"Wang")
      end
      it "can be createad" do 
          expect(@user).to be_valid
      end
      
      it "can not be created without first name , last name " do 
          @user.first_name = nil
          @user.last_name = nil
          expect(@user).to_not be_valid
      end
  end
end