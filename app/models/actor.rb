class Actor < ActiveRecord::Base
  has_many :roles, :dependent => :nullify #need to fix this referential int
  has_many :movies, :through => :roles, :foreign_key => :id

  validates :name, :presence => true
end
