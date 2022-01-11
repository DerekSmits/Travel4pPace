class AddShotsToPosts < ActiveRecord::Migration[6.1]
  def change
    change_table :posts do |t|
      t.string :shorts
    end
  end
end
