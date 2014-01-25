require Rails.root.join('spec', 'support', 'blueprints')
require 'faker'

if ENV['RAILS_ENV'] == 'test'
  NUMBER_OF_OFFERS        = 1
  NUMBER_OF_ORGS          = 1
  NUMBER_OF_NEEDS_PER_ORG = 1
  NUMBER_OF_USERS         = 1
else
  NUMBER_OF_OFFERS        = 30
  NUMBER_OF_ORGS          = 10
  NUMBER_OF_NEEDS_PER_ORG = 20
  NUMBER_OF_USERS         = 100
end


# create users
puts "Creating #{NUMBER_OF_USERS} users"
User.make!(NUMBER_OF_USERS)
puts

# create orgs and needs
puts "Creating #{NUMBER_OF_ORGS} organizations,"
puts "each with #{NUMBER_OF_NEEDS_PER_ORG} needs"
Organization.make!(NUMBER_OF_ORGS).each do |organization|
  Need.make(NUMBER_OF_NEEDS_PER_ORG).each do |need|
    need.organization = organization
    need.category = "furniture"
    need.save!
  end
  # pick a random user to be the owner
  
  organization.owner = User.all.sample
  organization.email = "connect2good.mailer@gmail.com"
  organization.save!
end
puts

# create offers
puts "Creating #{NUMBER_OF_OFFERS} offers"
Offer.make(NUMBER_OF_OFFERS).each do |offer|
  # pick a random user to be the donor
  donor = User.all.sample
  offer.donor_id = donor.id
  # get the random donor's email
  offer.email = "connect2good.mailer@gmail.com"
  # make offer to a random org
  offer.organization = Organization.all.sample
  # pick a random need from that org
  offer.need = offer.organization.needs.sample
  offer.status = "pending"
  offer.save(validate: false)
end
