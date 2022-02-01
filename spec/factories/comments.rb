FactoryBot.define do
    factory :comment do
        com_text {Faker::Creature::Animal.name}
        author_id {create(:user).id}
        post_id {create(:post).id}
    end
end