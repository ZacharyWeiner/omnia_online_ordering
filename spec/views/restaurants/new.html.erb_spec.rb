require 'rails_helper'

RSpec.describe "restaurants/new", type: :view do
  before(:each) do
    assign(:restaurant, Restaurant.new(
      :name => "MyString",
      :phone_number => "MyString",
      :description => "MyText",
      :logo => "MyString",
      :image => "MyString"
    ))
  end

  it "renders new restaurant form" do
    render

    assert_select "form[action=?][method=?]", restaurants_path, "post" do

      assert_select "input#restaurant_name[name=?]", "restaurant[name]"

      assert_select "input#restaurant_phone_number[name=?]", "restaurant[phone_number]"

      assert_select "textarea#restaurant_description[name=?]", "restaurant[description]"

      assert_select "input#restaurant_logo[name=?]", "restaurant[logo]"

      assert_select "input#restaurant_image[name=?]", "restaurant[image]"
    end
  end
end
