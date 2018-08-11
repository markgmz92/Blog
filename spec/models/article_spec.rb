require 'rails_helper'

RSpec.describe Article, type: :model do
 it 'should validate presence of title' do
  article = Article.new
  article.valid?
  expect(article.errors.messages[:title]).to include "can't be blank"
  end
end