# require 'spec_helper'

# RSpec.configure do |config|
#   config.include Devise::TestHelpers, :type => :controller
# end

# describe OffersController do
#   describe 'POST #create' do
#     it "creates a new Offer" do
#       expect {
#         post :create, :need_id => 1, :offer => {:description => "pants", :email => "test@test.com", :donor_id => 1}
#       }.to change(Offer, :count).by(1)
#     end
#     context 'name field left empty' do
#       it 'saves offer.name as "anonymous"' do
#         post :create, :need_id => 1, :offer => {:description => "pants", :email => "test@test.com", :donor_id => 1}
#         expect(Offer.last.name).to eq 'anonymous'
#       end
#     end
#     context 'name given' do
#       it 'saves offer.name as user input' do
#         post :create, :need_id => 1, :offer => {:description => "pants", :email => "test@test.com", :name => "Jesse Lynn"}
#         expect(Offer.last.name).to eq "Jesse Lynn"
#       end
#     end
#   end
# end
