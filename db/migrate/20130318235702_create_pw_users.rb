class CreatePwUsers < ActiveRecord::Migration
  def change
    create_table :pw_users do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
