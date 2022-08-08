class AddTimestampsToAuditions < ActiveRecord::Migration[5.2]
  def change
    change_table(:auditions) { |t| t.timestamps }
  end
end
