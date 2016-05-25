class CreateDotausers < ActiveRecord::Migration
  def change
    create_table :dotausers do |t|
      t.string :uid
      t.string :nickname
      t.string :avatar_url
      t.string :profile_url

      t.timestamps null: false
    end
  end
end
