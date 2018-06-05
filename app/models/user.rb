class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  geocoded_by :ip_address
  after_validation :geocode

  def ip_address
    response = Unirest.get('http://api.ipstack.com/check?access_key=' + MOVIE_GLU_KEY)
    response = response.body['ip']
    return response
  end
end
