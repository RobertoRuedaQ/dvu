require 'rails_helper'

RSpec.describe "subjects/show", type: :view do
  before(:each) do
    @subject = assign(:subject, Subject.create!(
      :title => "Title",
      :code => "Code",
      :hour => "Hour",
      :campus => nil,
      :credits => "Credits",
      :teacher_name => "Teacher Name",
      :faculty => "Faculty"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Code/)
    expect(rendered).to match(/Hour/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Credits/)
    expect(rendered).to match(/Teacher Name/)
    expect(rendered).to match(/Faculty/)
  end
end
