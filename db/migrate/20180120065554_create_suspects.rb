class CreateSuspects < ActiveRecord::Migration[5.1]
  def change
    create_table :suspects do |t|
      t.string :email
      t.string :url
      t.string :guid
      t.string :title
      t.datetime :access_at

      t.timestamps
    end
  end
end
