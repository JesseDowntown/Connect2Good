require 'machinist/active_record'
require 'faker'

Need.blueprint do
  description do
    "A book titled #{Faker::Company::bs}"
  end
end

Offer.blueprint do
  description { %w[books computers chairs].sample }
  image do
    Rack::Test::UploadedFile.new(
      Rails.root.join('spec', 'support', 'austin-skyline-small.jpg'),
      'image/jpg'
    )
  end
  status do
    %w[pending accepted rejected].sample
  end
end

Organization.blueprint do
  description { Faker::Company::catch_phrase }
  image do
    Rack::Test::UploadedFile.new(
      Rails.root.join('spec', 'support', 'austin-skyline-small.jpg'),
      'image/jpg'
    )
  end
  name        { Faker::Company::name }
end

User.blueprint do
  email    { Faker::Internet::email }
  name     { Faker::Name::name }
  password { 'test1234' }
  password_confirmation do
    object.password
  end
end
