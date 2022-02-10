FactoryBot.define do
    factory :post do
<<<<<<< HEAD
        # id {1}
=======
        # id {1}
>>>>>>> 9f47b4e67f5e3b0d9f5829704a94b16850a0da79
        title {Faker::Book.title}
        describtion {Faker::Book.author}
        shorts {Faker::Book.genre}
        author_id {create(:user).id}
    end
end