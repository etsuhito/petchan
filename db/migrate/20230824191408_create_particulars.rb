class CreateParticulars < ActiveRecord::Migration[7.0]
  def change
    create_table :particulars do |t|
      t.references      :basic,                              null: false, foreign_key: true
      t.date            :date_of_rescue,                     null: false
      t.string          :location,                           null: false
      t.string          :situation                          
      t.string          :handling_treatment                 
      t.string          :medical_history_allergies         
      t.date            :fleas_and_ticks                  
      t.string          :vaccinations           
      t.string           :medication1                        
      t.string          :medication2                          
      t.string          :personality                        
      t.string          :champions                         
      t.integer         :co_residing_humans                 
      t.integer         :co_residing_animals            
      t.string          :food_type                         
      t.string          :daily_food_amount                  
      t.string          :frequency_of_meals                 
      t.string          :toilet_environment                 
      t.string          :exercise_level_id                
      t.string          :walking_distance_and_frequency
      t.string          :grooming                           
      t.string          :favorite_food                      
      t.string          :likes
      t.string          :favorite_places                    
      t.string          :special_considerations          
      t.timestamps
    end
  end
end