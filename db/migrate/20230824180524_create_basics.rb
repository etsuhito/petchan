class CreateBasics < ActiveRecord::Migration[7.0]
  def change
    create_table :basics do |t|
      t.references    :user,                        null: false, foreign_key: true
      t.string        :pet_name,                    null: false
      t.integer       :species_id,                  null: false 
      t.integer       :breed_id,                    null: false
      t.integer       :gender_id,                   null: false
      t.string        :color,                       null: false 
      t.date          :birthday,                    null: false 
      t.date          :adoption_date,               null: false
      t.string        :preferred_veterinary_clinic
      t.boolean       :neutered                   
      t.text          :notes                     
      t.timestamps
    end
  end
end