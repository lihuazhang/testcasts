# == Schema Information
#
# Table name: users
#
#  id         :integer(4)      not null, primary key
#  token      :string(255)
#  name       :string(255)
#  email      :string(255)
#  admin      :boolean(1)
#  created_at :datetime
#  updated_at :datetime
#  uid        :string(255)
#  provider   :string(255)
#

class User < ActiveRecord::Base

  has_many :episodes
  has_many :authentications

  validates :name, presence: true

  accepts_nested_attributes_for :authentications


  def self.create_with_omniauth(auth)
    Authentication.find_by_provider_and_uid(auth[:provider],
                                            auth[:uid]).try(:user) ||
    create!(
      :name => auth[:info][:name],
      :email => auth[:info][:email],
      :authentications_attributes => [
        Authentication.new(:provider => auth[:provider],
                           :uid => auth[:uid]
                          ).attributes
      ])
  end

end
