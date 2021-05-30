class AddPasswordToAthletes < ActiveRecord::Migration[6.0]
  def change
    add_column :athletes, :password_digest, :string
  end
end
