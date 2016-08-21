class Topic < ApplicationRecord
  has_many :votes, dependent: :destroy

  def self.upvote
    @topic = self.find(params[:id])
    @topic.votes.create
    redirect_to(topics_path)
  end

  def self.downvote
    @topic = self.find(params[:id])
    @topic.votes.first.destroy
    redirect_to(topics_path)
  end

end
