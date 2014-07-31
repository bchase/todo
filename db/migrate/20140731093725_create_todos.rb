class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :name
      t.boolean :complete
      t.references :user, index: true

      t.timestamps
    end
  end
end
