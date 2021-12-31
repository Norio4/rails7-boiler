require 'rails_helper'

RSpec.describe "todos/index", type: :view do
  before(:each) do
    assign(:todos, [
      Todo.create!(
        title: "Title",
        body: "Body",
        completed: false
      ),
      Todo.create!(
        title: "Title",
        body: "Body",
        completed: false
      )
    ])
  end
end
