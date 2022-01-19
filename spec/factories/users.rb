require 'faker'
FactoryBot.define do
    factory :user do
      id {Faker::Code.sin}
      email {Faker::Internet.email}
      password {Faker::Internet.password}
  end
end