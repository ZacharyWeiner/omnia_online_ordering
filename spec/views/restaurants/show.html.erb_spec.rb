require 'rails_helper'

RSpec.describe "restaurants/show", type: :view do
  before(:each) do
    @restaurant = assign(:restaurant, Restaurant.create!(
      :name => "Name",
      :phone_number => "Phone Number",
      :description => "MyText",
      :logo => "Logo",
      :image => "Image"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Phone Number/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Logo/)
    expect(rendered).to match(/Image/)
  end
end
