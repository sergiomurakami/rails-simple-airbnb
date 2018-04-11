class AddPhotoToProfileFlat < ActiveRecord::Migration[5.1]
  def change
    add_column :flats, :photo_url, :text
  end
end
