FactoryBot.define do
  factory :user do
    transient do
      person { Gimei.name }
   end
    nickname              {Faker::Name.initials(number: 2)}
    email                 {Faker::Internet.free_email}
    password              { '1a' + Faker::Internet.password(min_length: 6) }
    password_confirmation {password}
    skintype_id           {'2'}
  end

  after(:build) do |user|
    user.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
  end

end