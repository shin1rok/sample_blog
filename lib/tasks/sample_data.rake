namespace :sample_data do
  desc 'delete'
  task delete: :environment do
    Post.destroy_all if Post.exists?
    User.destroy_all if User.exists?
  end

  desc 'users'
  task users: :environment do
    30.times do |n|
      user = User.new(email:                 "sample_email#{n}@hogehoge.hoge",
                      url_name:              "user#{n}",
                      password:              "hogehoge",
                      password_confirmation: "hogehoge",)
      user.skip_confirmation!
      user.save!
    end
  end

  desc 'posts'
  task posts: :environment do
    users = User.order(id: :asc).limit(5)
    30.times do |n|
      Post.create!(title:   "タイトル#{n}",
                   content: "コンテンツ#{n}",
                   user_id: users.sample.id)
    end
  end
end
