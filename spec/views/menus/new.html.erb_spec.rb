require 'rails_helper'

RSpec.describe "menus/new", type: :view do
  before(:each) do
    assign(:menu, Menu.new(
      :name => "MyString",
      :restaurant => nil,
      :image => "MyString"
    ))
  end

  it "renders new menu form" do
    render

    assert_select "form[action=?][method=?]", menus_path, "post" do

      assert_select "input#menu_name[name=?]", "menu[name]"

      assert_select "input#menu_restaurant_id[name=?]", "menu[restaurant_id]"

      assert_select "input#menu_image[name=?]", "menu[image]"
    end
  end
end
