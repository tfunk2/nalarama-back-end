class CreateGuessFormSubmissions < ActiveRecord::Migration[6.0]
  def change
    create_table :guess_form_submissions do |t|
      t.text :name
      t.text :email
      t.text :breed_one
      t.text :breed_two
      t.text :breed_three
      t.text :breed_four
      t.text :breed_five
      t.integer :percent_one
      t.integer :percent_two
      t.integer :percent_three
      t.integer :percent_four
      t.integer :percent_five
      t.integer :predicted_adult_weight

      t.timestamps
    end
  end
end
