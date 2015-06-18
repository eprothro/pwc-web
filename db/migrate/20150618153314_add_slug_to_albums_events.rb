class AddSlugToAlbumsEvents < ActiveRecord::Migration
  def change
    add_column :albums, :slug, :string
    add_column :events, :slug, :string

    Album.where(nil).each(&:save)
    Event.where(nil).each(&:save)
  end
end
