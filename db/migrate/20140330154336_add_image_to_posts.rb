class AddImageToPosts < ActiveRecord::Migration
  def change
  		# will change the existing database to include a string column for the image data
  		add_column :posts, :image, :string

  end
end
