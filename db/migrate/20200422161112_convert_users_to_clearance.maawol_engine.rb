# This migration comes from maawol_engine (originally 20200331155437)
class ConvertUsersToClearance < ActiveRecord::Migration[6.0]
  def change
  	remove_column	:users, :encrypted_password, :string
  	remove_column	:users, :reset_password_token, :string
  	remove_column	:users, :reset_password_sent_at, :datetime
  	remove_column	:users, :remember_created_at, :datetime
  	remove_column	:users, :sign_in_count, :int
  	remove_column	:users, :current_sign_in_at, :datetime
  	remove_column	:users, :last_sign_in_at, :datetime
  	remove_column	:users, :current_sign_in_ip, :string
  	remove_column	:users, :last_sign_in_ip, :string
  	remove_column	:users, :from_old_site, :tinyint

  	add_column	:users, :password, :string, after: :email
  end
end
