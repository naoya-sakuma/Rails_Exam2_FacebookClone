class AddContentToFeeds < ActiveRecord::Migration[5.2]
  def change
    add_column :feeds, :content, :text
  end
end
