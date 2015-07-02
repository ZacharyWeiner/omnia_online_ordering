require 'rails_helper'

RSpec.describe "orders/show", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :menu_item => nil,
      :restaurant => nil,
      :street_address => "Street Address",
      :street_address_2 => "Street Address 2",
      :street_address_2 => "Street Address 2",
      :city => "City",
      :state => "State",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Street Address/)
    expect(rendered).to match(/Street Address 2/)
    expect(rendered).to match(/Street Address 2/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(//)
  end
end
