class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :first_name ,:limit=>20
      t.string :last_name  ,:limit=>20
      t.string :middle_initial ,:limit=>1
      t.integer :user_id
      t.string :home_phone  ,:limit=>13
      t.string :office_phone ,:limit=>13
      t.string :email
      t.string :title
      t.timestamps
    end
  end
end
