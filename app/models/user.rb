class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  geocoded_by :ip
  after_validation :geocode

  def ip
    response = Unirest.get('http://api.ipstack.com/check?access_key=' + IP_ADDRESS_KEY)
    response
    return response
  end

  def nearby_theaters
    response = Unirest.get('https://api-gate.movieglu.com/cinemasNearby/?n=5' + MOVIE_GLU_KEY)
  end
end
