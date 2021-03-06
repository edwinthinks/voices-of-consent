require 'rails_helper'

RSpec.describe "locations/new", type: :view do
  before(:each) do
    @location = create(:location)
  end

  it "renders new location form" do
    render

    assert_select "form[action=?][method=?]", location_path(@location), "post" do

      assert_select "input[name=?]", "location[name]"

      assert_select "input[name=?]", "location[street_address]"

      assert_select "input[name=?]", "location[city]"

      assert_select "input[name=?]", "location[state]"

      assert_select "input[name=?]", "location[zip]"

      assert_select "select[name=?]", "location[location_type]"
    end
  end
end
