require 'rails_helper'

RSpec.describe User, type: :model do
  before do 
        @user = FactoryGirl.create(:user)
      end
  describe "creation" do 
      it "can be createad" do 
          expect(@user).to be_valid
      end
      
      it "can not be created without first name , last name " do 
          @user.first_name = nil
          @user.last_name = nil
          expect(@user).to_not be_valid
      end
  end
  describe "custom name methods" do 
    it "has a full name method that combines first name and last name" do
      expect(@user.full_name).to eq("TRACEY, WANG")
    end
  end
  
  
end
