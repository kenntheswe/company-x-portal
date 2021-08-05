class CreateRecognitions < ActiveRecord::Migration[6.0]
  def change
    create_table :recognitions do |t|
      t.string :name
      t.string :value
      t.string :message
      
      t.timestamps
    end
  end
end
