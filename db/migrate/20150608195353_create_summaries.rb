class CreateSummaries < ActiveRecord::Migration
  def change
    create_table :summaries do |t|
      t.references :posts, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
