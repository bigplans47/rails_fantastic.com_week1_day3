class CreateAlbum < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.column :year, :string
      t.column :title, :string
      t.column :review, :string
      t.column :artist_id, :integer
    end
  end
end
