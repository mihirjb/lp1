class CreateSignups < ActiveRecord::Migration
  def change
    create_table :signups do |t|
      t.string :fullname
      t.string :email

      t.timestamps
    end
  end
end
