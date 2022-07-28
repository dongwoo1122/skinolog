class CreateRoutineposts < ActiveRecord::Migration[6.0]
  def change
    create_table :routineposts do |t|
      t.string :title,              null: false
      t.string :goal,               null: false
      t.integer :skinproblem_id,    null: false
      t.timestamps
    end
  end
end
