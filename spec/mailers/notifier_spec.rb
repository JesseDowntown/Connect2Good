# require 'spec_helper'

# RSpec.configure do |config|
#   config.include Devise::TestHelpers, :type => :controller
# end

# describe Notifier do
#   let(:organization) { Organization.create(:name => "NPO", :email => "c2g@test.com") }
#   let(:mail) { Notifier.offer_received(offer) }

#   describe "offer_received" do
#     context "donor is anonymous" do
#       let(:offer) { Offer.create(:organization => Organization.last, :email => "jesseb@test.com", :need_id => 1, :name => 'anonymous') }
#       it "renders the body" do
#         mail.body.encoded.should include("A Connect2Good donor, who wishes to remain anonymous, would like to fill one of your organization's needs!")
#       end
#     end
#     context "donor is named" do
#       let(:offer) { Offer.create(:organization => Organization.last, :email => "jesseb@test.com", :need_id => 1, :name => "Jesse Lynn") }
#       it "renders the body" do
#         mail.body.encoded.should include("A Connect2Good donor, named Jesse Lynn, would like to fill one of your organization's needs!")
#       end
#     end
#   end
#     # it "renders the headers" do
#     #   mail.subject.should eq("Offer received")
#     #   mail.to.should eq(["to@example.org"])
#     #   mail.from.should eq(["from@example.com"])
#     # end

# end
