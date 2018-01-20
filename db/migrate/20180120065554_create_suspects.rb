class CreateSuspects < ActiveRecord::Migration[5.1]
  def change
    create_table :suspects do |t|
      t.string :email
      t.string :url
      t.datetime :created_at

      t.timestamps
    end
  end
end
