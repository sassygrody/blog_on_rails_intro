class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      # adds an integer column called article_id -- Foreign_key!
      t.references :article, index: true

      t.timestamps
    end
  end
end
