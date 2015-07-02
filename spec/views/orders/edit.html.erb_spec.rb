require 'rails_helper'

RSpec.describe "orders/edit", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      :menu_item => nil,
      :restaurant => nil,
      :street_address => "MyString",
      :street_address_2 => "MyString",
      :street_address_2 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :user => nil
    ))
  end

  it "renders the edit order form" do
    render

    assert_select "form[action=?][method=?]", order_path(@order), "post" do

      assert_select "input#order_menu_item_id[name=?]", "order[menu_item_id]"

      assert_select "input#order_restaurant_id[name=?]", "order[restaurant_id]"

      assert_select "input#order_street_address[name=?]", "order[street_address]"

      assert_select "input#order_street_address_2[name=?]", "order[street_address_2]"

      assert_select "input#order_street_address_2[name=?]", "order[street_address_2]"

      assert_select "input#order_city[name=?]", "order[city]"

      assert_select "input#order_state[name=?]", "order[state]"

      assert_select "input#order_user_id[name=?]", "order[user_id]"
    end
  end
end
