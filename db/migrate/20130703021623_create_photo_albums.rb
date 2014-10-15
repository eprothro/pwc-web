class CreatePhotoAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :cover_asset
      t.string :name

      t.timestamps
    end

    create_table :events do |t|
      t.string :cover_asset
      t.references :album
      t.string :name

      t.timestamps
    end

    create_table :images do |t|
      t.string :asset
      t.references :event

      t.timestamps
    end
  end
end
