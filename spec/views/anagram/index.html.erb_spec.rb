require "spec_helper"

describe "anagram/index.html.erb" do
  it "should return" do

    render
    expect(rendered).to include("Enter comma delimited words on the url")

  end
end
