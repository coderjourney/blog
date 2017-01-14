require "features_helper"

describe "Visit home" do
  it "renders successfully" do
    visit "/"

    page.body.must_include("Simple Blog")
  end
end
