class CreateTodo < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :todo
      t.timestamp
    end
  end
end
