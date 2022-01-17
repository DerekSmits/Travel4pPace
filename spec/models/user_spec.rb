require 'rails_helper'
require 'support/factory_bot'

RSpec.describe User, type: :model do
  @user1 = User.create(:user)
  it "is valid" do
      expect(@user).to be_valid
  end
end
