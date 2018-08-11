require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'validations' do
    subject(:comment) {Comment.new}
      before {comment.valid?}

      it 'should validate presence of title' do
        expect(comment.errors[:commenter].size).to be >= 1
        expect(comment.errors.messages[:commenter]).to include "can't be blank"
      end

      it 'should validate presence of body' do
        expect(comment.errors[:body].size).to be >= 1
        expect(comment.errors.messages[:body]).to include "can't be blank"
      end
    end
end
