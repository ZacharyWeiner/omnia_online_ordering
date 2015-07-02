require 'rails_helper'

RSpec.describe "restaurants/edit", type: :view do
  before(:each) do
    @restaurant = assign(:restaurant, Restaurant.create!(
      :name => "MyString",
      :phone_number => "MyString",
      :description => "MyText",
      :logo => "MyString",
      :image => "MyString"
    ))
  end

  it "renders the edit restaurant form" do
    render

    assert_select "form[action=?][method=?]", restaurant_path(@restaurant), "post" do

      assert_select "input#restaurant_name[name=?]", "restaurant[name]"

      assert_select "input#restaurant_phone_number[name=?]", "restaurant[phone_number]"

      assert_select "textarea#restaurant_description[name=?]", "restaurant[description]"

      assert_select "input#restaurant_logo[name=?]", "restaurant[logo]"

      assert_select "input#restaurant_image[name=?]", "restaurant[image]"
    end
  end
end
