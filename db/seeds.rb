require Rails.root.join('spec', 'support', 'blueprints')
require 'awesome_print'
require 'faker'
require 'yaml'

organizations = YAML.load_file(
  Rails.root.join('spec', 'support', 'launch-seeds.yml')
)

organizations.each do |o|
  organization = Organization.make
  organization.name =        o['name']
  organization.description = o['about']
  organization.email =       o['email']
  organization.image = Rack::Test::UploadedFile.new(
    Rails.root.join(
      'spec', 'support', 'austin-skyline-small.jpg'),
      'image/jpg'
    )
  organization.save!(validate: false)

  o['needs'].each do |n|
    need = Need.make
    need.description = n
    need.organization = organization
    need.save!(validate: false)
  end
end
