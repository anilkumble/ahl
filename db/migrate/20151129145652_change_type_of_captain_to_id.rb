class ChangeTypeOfCaptainToId < ActiveRecord::Migration
  def change
      change_column :teams, :captain, :integer
  end
end
