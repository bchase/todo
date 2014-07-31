require 'rails_helper'

RSpec.describe "todos/edit", :type => :view do
  before(:each) do
    @todo = assign(:todo, Todo.create!(
      :name => "MyString",
      :complete => false,
      :user => nil
    ))
  end

  it "renders the edit todo form" do
    render

    assert_select "form[action=?][method=?]", todo_path(@todo), "post" do

      assert_select "input#todo_name[name=?]", "todo[name]"

      assert_select "input#todo_complete[name=?]", "todo[complete]"

      assert_select "input#todo_user_id[name=?]", "todo[user_id]"
    end
  end
end
