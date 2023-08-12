class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  audited except: %i[encrypted_password],
          max_audits: 10
  has_associated_audits

  enum role: { user: 0, admin: 1 }
  has_many :posts, dependent: :destroy
end
