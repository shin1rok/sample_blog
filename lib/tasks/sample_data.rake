namespace :sample_data do
  desc "users"
  task :users => :environment do
    100.times do |n|
      User.create!(email:                 "sample_email#{n}@hogehoge.hoge",
                   password:              "hogehoge",
                   password_confirmation: "hogehoge",)
    end
  end

  desc "posts"
  task :posts => :environment do
    100.times do |n|
      Post.create!(title:   "タイトル#{n}",
                   content: "コンテンツ#{n}",
                   user_id: (1..10).to_a.sample)
    end
  end
end
