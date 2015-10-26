class SetVoteToZero < ActiveRecord::Migration
  def change
    change_column_default(:answers, :vote, 0)
  end
end
