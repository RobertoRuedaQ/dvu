require 'rails_helper'

RSpec.describe "reports/index", type: :view do
  before(:each) do
    assign(:reports, [
      Report.create!(
        :objetive => "MyText",
        :participants => "MyText",
        :description => "MyText",
        :commitment => "MyText",
        :activity => nil
      ),
      Report.create!(
        :objetive => "MyText",
        :participants => "MyText",
        :description => "MyText",
        :commitment => "MyText",
        :activity => nil
      )
    ])
  end

  it "renders a list of reports" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
