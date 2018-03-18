require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "creation" do
      before do 
        @post = Post.create(date: Date.today(), rationale:"Hi there")
      end

      it 'can be created ' do
          expect(@post).to be_valid
      end
      it 'can not be created without a date and rationale' do
          @post.date = nil
          @post.rationale = nil
          expect(@post).not_to be_valid
      end
  end
end
