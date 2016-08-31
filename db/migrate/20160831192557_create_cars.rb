class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.jsonb :financing_offer, default: "{}"

      t.timestamps
    end
  end
end
