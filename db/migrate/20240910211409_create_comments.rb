# frozen_string_literal: true

class CreateComments < ActiveRecord::Migration[7.2]
  def change
    create_table :comments do |t|
      t.references :post, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true  # Kullanıcı referansı eklenmiştir
      t.text :content

      t.timestamps
    end
  end
end
