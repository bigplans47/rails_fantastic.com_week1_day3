class CreateArtist < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.column :name, :string
      t.column :genre, :string
      t.timestamp
    end
  end
end
