class CreateEmps < ActiveRecord::Migration
  def change
    create_table :emps do |t|
      t.string :user

      t.timestamps null: false
    end
  end
end
