require 'rails_helper'

RSpec.describe "subjects/edit", type: :view do
  before(:each) do
    @subject = assign(:subject, Subject.create!(
      :title => "MyString",
      :code => "MyString",
      :hour => "MyString",
      :campus => nil,
      :credits => "MyString",
      :teacher_name => "MyString",
      :faculty => "MyString"
    ))
  end

  it "renders the edit subject form" do
    render

    assert_select "form[action=?][method=?]", subject_path(@subject), "post" do

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
