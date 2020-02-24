require 'rails_helper'

RSpec.describe "reports/edit", type: :view do
  before(:each) do
    @report = assign(:report, Report.create!(
      :objetive => "MyText",
      :participants => "MyText",
      :description => "MyText",
      :commitment => "MyText",
      :activity => nil
    ))
  end

  it "renders the edit report form" do
    render

    assert_select "form[action=?][method=?]", report_path(@report), "post" do

      assert_select "textarea[name=?]", "report[objetive]"

      assert_select "textarea[name=?]", "report[participants]"

      assert_select "textarea[name=?]", "report[description]"

      assert_select "textarea[name=?]", "report[commitment]"

      assert_select "input[name=?]", "report[activity_id]"
    end
  end
end
