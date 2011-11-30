class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :gender
      t.integer :birth_year
      t.integer :birth_month
      t.integer :birth_day
      t.integer:user_id

      t.timestamps
    end
    #execute("alter table profiles add constraint FK_users_profiles foreign key(user_id) references users (id) on delete cascade;")
  end
end
