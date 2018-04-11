require 'firebase-ruby'

class FirebaseDatabaseService
  attr_reader :firebase

  def initialize
    auth_path = Dir.pwd + "/config/firebase_auth.json"

    @firebase_db = Firebase::Database.new()
    @firebase_db.set_auth_with_key(path: auth_path)
  end

  def get(channel)
    @firebase_db.get(channel)
  end

  def put(channel, data)
    @firebase_db.put(channel, data)
  end

  def delete(channel)
    @firebase_db.delete(channel)
  end

  def post(channel, data)
    @firebase_db.post(channel, data)
  end

  def patch(channel, data)
    @firebase_db.patch(channel, data)
  end
end
