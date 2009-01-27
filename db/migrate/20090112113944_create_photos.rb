class CreatePhotos < ActiveRecord::Migration
  def self.up
    create_table :photos do |t|
      t.column  :avatar_file_name, :string
      t.column  :avatar_content_type, :string
      t.column  :avatar_file_size, :integer
      t.column  :avatar_updated_at,:datetime
      t.timestamps
    end
  end

  def self.down
    drop_table :photos
  end
end
