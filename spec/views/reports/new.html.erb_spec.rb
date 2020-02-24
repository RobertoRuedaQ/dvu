require 'rails_helper'

RSpec.describe "reports/new", type: :view do
  before(:each) do
    assign(:report, Report.new(
      :objetive => "MyText",
      :participants => "MyText",
      :description => "MyText",
      :commitment => "MyText",
      :activity => nil
    ))
  end

  it "renders new report form" do
    render

    assert_select "form[action=?][method=?]", reports_path, "post" do

      assert_select "textarea[name=?]", "report[objetive]"

      assert_select "textarea[name=?]", "report[participants]"

      assert_select "textarea[name=?]", "report[description]"

      assert_select "textarea[name=?]", "report[commitment]"

      assert_select "input[name=?]", "report[activity_id]"
    end
  end
end
