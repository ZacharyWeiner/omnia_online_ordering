require 'rails_helper'

RSpec.describe "orders/new", type: :view do
  before(:each) do
    assign(:order, Order.new(
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

  it "renders new order form" do
    render

    assert_select "form[action=?][method=?]", orders_path, "post" do

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
