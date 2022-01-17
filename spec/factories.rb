require 'support/factory_bot'
FactoryBot.define do
      factory :user do
        email {"test@test.com"}
        password {"test123456"}
    end
end