class CreateTodos < ActiveRecord::Migration[7.0]
  def change
    create_table :todos do |t|
      t.string :title
      t.string :body
      t.boolean :completed, default: false
      t.datetime :deadlined_at

      t.timestamps
    end
  end
end
