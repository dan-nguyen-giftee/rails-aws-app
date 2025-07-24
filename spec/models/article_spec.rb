require 'rails_helper'

RSpec.describe Article, type: :model do
  it "is valid with valid attributes" do
    article = Article.new(title: "RSpec Title", body: "RSpec Body")
    expect(article).not_to be_valid
  end

  it "is not valid without a title" do
    article = Article.new(title: nil, body: "Body")
    expect(article).not_to be_valid
  end
end
