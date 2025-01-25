class CreateMovies < ActiveRecord::Migration[7.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :year
      t.string :integer
      t.string :plot

      t.timestamps
    end
  end
end
