require 'rails_helper'

RSpec.describe "menu_items/new", type: :view do
  before(:each) do
    assign(:menu_item, MenuItem.new(
      :menu => nil,
      :name => "MyString",
      :description => "MyText",
      :image => "MyString",
      :price => "9.99"
    ))
  end

  it "renders new menu_item form" do
    render

    assert_select "form[action=?][method=?]", menu_items_path, "post" do

      assert_select "input#menu_item_menu_id[name=?]", "menu_item[menu_id]"

      assert_select "input#menu_item_name[name=?]", "menu_item[name]"

      assert_select "textarea#menu_item_description[name=?]", "menu_item[description]"

      assert_select "input#menu_item_image[name=?]", "menu_item[image]"

      assert_select "input#menu_item_price[name=?]", "menu_item[price]"
    end
  end
end
