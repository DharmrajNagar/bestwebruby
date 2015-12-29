class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :f_name
      t.string :date_of_birth
      t.string :age
      t.string :blood_group
      t.string :mobile
      t.text :address_line_1
      t.text :address_line_2
      t.string :city_id
      t.string :state_id
      t.string :country_id
      t.string :zip_code
      t.attachment :image
      t.attachment :resume
      t.string :last_ip

      t.timestamps null: false
    end
  end
end
