require 'rails_helper'

RSpec.describe Comment, type: :model do
  let!(:comment) {create(:comment)}
  it "is valid" do
      expect(comment).to be_valid
  end
end
