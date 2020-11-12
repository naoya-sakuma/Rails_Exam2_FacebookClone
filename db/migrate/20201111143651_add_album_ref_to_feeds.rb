class AddAlbumRefToFeeds < ActiveRecord::Migration[5.2]
  def change
    add_reference :feeds, :album, foreign_key: true
  end
end
