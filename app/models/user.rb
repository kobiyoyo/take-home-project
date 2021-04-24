class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  after_initialize :set_default_role, if: :new_record?

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze

  validates :name, presence: true, length: { in: 4..50 }
  validates :role, presence: true
  validates :username, presence: true, uniqueness: true, length: { in: 4..50 }
  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
  
  # Roles values
  ROLES = %i[client admin].freeze
  enum role: ROLES

  def set_default_role
    self.role ||= :client
  end  
end
# == Schema Information
#
# Table name: User
#
#  id           :integer          not null, primary key
#  name         :string           not null
#  role         :integer          not null
#  username     :string           not null
#  password     :string           not null
#  email        :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
