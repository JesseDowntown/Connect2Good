require 'machinist/active_record'
require 'faker'

Need.blueprint do
  description do
    "A book titled #{Faker::Company::bs}"
  end
end

Offer.blueprint do
  description { 'books' }
  image { 'books_image.png' }
  status do
    %w[pending accepted rejected].sample
  end
end

Organization.blueprint do
  description { Faker::Company::catch_phrase }
  image       { 'org_image.png' }
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
