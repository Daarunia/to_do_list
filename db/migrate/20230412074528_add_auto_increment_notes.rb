class AddAutoIncrementNotes < ActiveRecord::Migration[7.0]
  def change
    execute "ALTER TABLE notes ALTER COLUMN id SET DEFAULT nextval('notes_id_seq')"
  end
end
