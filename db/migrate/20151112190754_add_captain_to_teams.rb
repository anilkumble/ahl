class AddCaptainToTeams < ActiveRecord::Migration
  def change
      add_column :teams, :captain, :string
  end
end
