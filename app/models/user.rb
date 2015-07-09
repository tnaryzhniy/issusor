class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :tickets
  has_many :tasks

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+[^\.]\.{1}[^\.][a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
            uniqueness:{ case_sensitive: false }


end
