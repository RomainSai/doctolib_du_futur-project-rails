class CreateJoinTableDoctorSpecialty < ActiveRecord::Migration[5.2]
  def change
    create_join_table :doctors, :specialties do |t|

    end
  end
end
