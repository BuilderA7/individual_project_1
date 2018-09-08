require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

RSpec.describe "/sign_up", :type => :view do
  it "renders _event partial for each event" do
    assign(:users, [double(Event), double(Event)])
    render
    expect(view).to render_template(:partial => "", :count => 2)
  end
end

RSpec.describe "/sign_up", :type => :view do
  it "displays the event location" do
    assign(:event, Event.new(:location => ""))
    render
    expect(rendered).to include("Sign Up")
  end
end