require 'rails_helper'

RSpec.describe "restaurants/index", type: :view do
  before(:each) do
    assign(:restaurants, [
      Restaurant.create!(
        :name => "Name",
        :phone_number => "Phone Number",
        :description => "MyText",
        :logo => "Logo",
        :image => "Image"
      ),
      Restaurant.create!(
        :name => "Name",
        :phone_number => "Phone Number",
        :description => "MyText",
        :logo => "Logo",
        :image => "Image"
      )
    ])
  end

  it "renders a list of restaurants" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Phone Number".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Logo".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end
