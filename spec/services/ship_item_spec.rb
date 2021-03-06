require "rails_helper"

RSpec.describe ShipItem do
  let(:item) { FactoryGirl.create(:item) }
  let(:user) { FactoryGirl.create(:user) }
  let(:request) { FactoryGirl.create(:request) }

  subject { described_class.call(item: item, request: request, user: user) }

  it "works" do
    subject
  end

  it "unstocks the item and logs the scan activity" do
    expect(ActivityLogger).to receive(:ship_item).with(item: item, request: request, user: user)
    subject
  end
end
