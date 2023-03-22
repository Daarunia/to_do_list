class RemoveTimestampsFromNotes < ActiveRecord::Migration[7.0]
  def change
    remove_column :notes, :created_at, :string
    remove_column :notes, :updated_at, :string
  end
end
