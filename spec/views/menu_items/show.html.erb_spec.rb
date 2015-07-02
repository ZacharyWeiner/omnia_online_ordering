require 'rails_helper'

RSpec.describe "menu_items/show", type: :view do
  before(:each) do
    @menu_item = assign(:menu_item, MenuItem.create!(
      :menu => nil,
      :name => "Name",
      :description => "MyText",
      :image => "Image",
      :price => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Image/)
    expect(rendered).to match(/9.99/)
  end
end
