require 'rails_helper'

RSpec.describe "reservations/edit", :type => :view do
  before(:each) do
    @reservation = assign(:reservation, Reservation.create!(
      :confirmation_number => "MyString",
      :trip_name => "MyString",
      :arrival_city_name => "MyString"
    ))
  end

  it "renders the edit reservation form" do
    render

    assert_select "form[action=?][method=?]", reservation_path(@reservation), "post" do

      assert_select "input#reservation_confirmation_number[name=?]", "reservation[confirmation_number]"

      assert_select "input#reservation_trip_name[name=?]", "reservation[trip_name]"

      assert_select "input#reservation_arrival_city_name[name=?]", "reservation[arrival_city_name]"
    end
  end
end
