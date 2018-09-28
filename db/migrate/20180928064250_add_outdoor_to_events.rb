class AddOutdoorToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :outdoor, :boolean, default: false
  end
end
