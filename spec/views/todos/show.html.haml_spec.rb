require 'rails_helper'

RSpec.describe "todos/show", :type => :view do
  before(:each) do
    @todo = assign(:todo, Todo.create!(
      :name => "Name",
      :complete => false,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
  end
end
