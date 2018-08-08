class User < ApplicationRecord
  has_secure_password
  validates_uniqueness_of :email

  #Need to create Sessions for the active user,
  #and terminate on signing out.

  #Need to create ADMIN and restrict to only the Admin
end
