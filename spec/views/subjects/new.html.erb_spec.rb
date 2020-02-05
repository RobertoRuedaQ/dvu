require 'rails_helper'

RSpec.describe "subjects/new", type: :view do
  before(:each) do
    assign(:subject, Subject.new(
      :title => "MyString",
      :code => "MyString",
      :hour => "MyString",
      :campus => nil,
      :credits => "MyString",
      :teacher_name => "MyString",
      :faculty => "MyString"
    ))
  end

  it "renders new subject form" do
    render

    assert_select "form[action=?][method=?]", subjects_path, "post" do

      assert_select "input[name=?]", "subject[title]"

      assert_select "input[name=?]", "subject[code]"

      assert_select "input[name=?]", "subject[hour]"

      assert_select "input[name=?]", "subject[campus_id]"

      assert_select "input[name=?]", "subject[credits]"

      assert_select "input[name=?]", "subject[teacher_name]"

      assert_select "input[name=?]", "subject[faculty]"
    end
  end
end
