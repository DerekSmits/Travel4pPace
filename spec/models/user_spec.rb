require 'rails_helper'

RSpec.describe User, type: :model do
  let!(:user) {create(:user)}
  it "is valid" do
      expect(user).to be_valid
  end
  it "is rolify" do
    expect(user.has_role? :reader).to  eq(true)
  end
end
