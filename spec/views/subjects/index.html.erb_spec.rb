require 'rails_helper'

RSpec.describe "subjects/index", type: :view do
  before(:each) do
    assign(:subjects, [
      Subject.create!(
        :title => "Title",
        :code => "Code",
        :hour => "Hour",
        :campus => nil,
        :credits => "Credits",
        :teacher_name => "Teacher Name",
        :faculty => "Faculty"
      ),
      Subject.create!(
        :title => "Title",
        :code => "Code",
        :hour => "Hour",
        :campus => nil,
        :credits => "Credits",
        :teacher_name => "Teacher Name",
        :faculty => "Faculty"
      )
    ])
  end

  it "renders a list of subjects" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "Hour".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Credits".to_s, :count => 2
    assert_select "tr>td", :text => "Teacher Name".to_s, :count => 2
    assert_select "tr>td", :text => "Faculty".to_s, :count => 2
  end
end
