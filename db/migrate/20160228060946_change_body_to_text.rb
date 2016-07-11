class ChangeBodyToText < ActiveRecord::Migration

  def change
	change_table :posts do |t|
		t.change :body, :text
	end

  end
end
