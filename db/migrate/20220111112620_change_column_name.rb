class ChangeColumnName < ActiveRecord::Migration[6.1]
  def change
    change_table :comments do |t|
      t.rename :comments, :com_text
    end
  end
end
