class UpdateQuestion < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :user_id, :integer
    add_column :questions, :title, :string
    add_column :questions, :body, :string
  end
end
