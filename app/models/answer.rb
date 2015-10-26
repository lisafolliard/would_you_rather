class Answer < ActiveRecord::Base
  belongs_to :question

  def upvote
    vote=self.vote.to_i
    new_vote_total = vote += 1
    self.update(:vote => new_vote_total)
  end
end
