class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.string  :my_file
      t.timestamps
    end
  end
end
