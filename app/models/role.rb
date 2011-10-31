class Role < ActiveRecord::Base
  belongs_to :movie
  belongs_to :actor

  accepts_nested_attributes_for :actor, :allow_destroy => true

  #validates :movie_id, :presence => true
  #validates :actor_id, :presence => true
end
