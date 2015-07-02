require 'rails_helper'

RSpec.describe "orders/index", type: :view do
  before(:each) do
    assign(:orders, [
      Order.create!(
        :menu_item => nil,
        :restaurant => nil,
        :street_address => "Street Address",
        :street_address_2 => "Street Address 2",
        :street_address_2 => "Street Address 2",
        :city => "City",
        :state => "State",
        :user => nil
      ),
      Order.create!(
        :menu_item => nil,
        :restaurant => nil,
        :street_address => "Street Address",
        :street_address_2 => "Street Address 2",
        :street_address_2 => "Street Address 2",
        :city => "City",
        :state => "State",
        :user => nil
      )
    ])
  end

  it "renders a list of orders" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Street Address".to_s, :count => 2
    assert_select "tr>td", :text => "Street Address 2".to_s, :count => 2
    assert_select "tr>td", :text => "Street Address 2".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
