# frozen_string_literal: true

class AddDeviseToUsers < ActiveRecord::Migration[7.2]
  def change
    # Only add columns if they don't already exist
    unless column_exists?(:users, :encrypted_password)
      change_table :users, bulk: true do |t|
        ## Database authenticatable
        t.string :encrypted_password, default: "", null: false

        ## Recoverable
        t.string :reset_password_token
        t.datetime :reset_password_sent_at

        ## Rememberable
        t.datetime :remember_created_at

        ## Trackable
        # t.integer  :sign_in_count, default: 0, null: false
        # t.datetime :current_sign_in_at
        # t.datetime :last_sign_in_at
        # t.string   :current_sign_in_ip
        # t.string   :last_sign_in_ip

        ## Confirmable
        # t.string   :confirmation_token
        # t.datetime :confirmed_at
        # t.datetime :confirmation_sent_at
        # t.string   :unconfirmed_email # Only if using reconfirmable

        ## Lockable
        # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
        # t.string   :unlock_token # Only if unlock strategy is :email or :both
        # t.datetime :locked_at
      end
    end

    # Add indexes, ensuring they don't already exist
    add_index :users, :email, unique: true unless index_exists?(:users, :email)
    add_index :users, :reset_password_token, unique: true unless index_exists?(:users, :reset_password_token)
    # add_index :users, :confirmation_token, unique: true unless index_exists?(:users, :confirmation_token)
    # add_index :users, :unlock_token, unique: true unless index_exists?(:users, :unlock_token)
  end
end
