FactoryBot.define do
  factory :post do
    title { "MyString" }
    content { "MyText" }
    user
    status { Post.statuses.to_a.sample[0] }
  end
end
