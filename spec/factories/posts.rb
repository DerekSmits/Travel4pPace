FactoryBot.define do
    factory :post do
        id {1}
        title {Faker::Book.title}
        describtion {Faker::Book.author}
        shorts {Faker::Book.genre}
        author_id {create(:user).id}
    end
end