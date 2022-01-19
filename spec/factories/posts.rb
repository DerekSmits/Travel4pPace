FactoryBot.define do
    factory :post do
        title {Faker::Book.title}
        describtion {Faker::Book.author}
        shorts {Faker::Book.genre}
        user
    end
end