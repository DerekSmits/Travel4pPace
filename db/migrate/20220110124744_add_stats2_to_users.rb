class AddStats2ToUsers < ActiveRecord::Migration[6.1]
  def change
    change_table :users do |t|
      t.integer  :sign_in_count, default: 0, null: false
    end
  end
end
