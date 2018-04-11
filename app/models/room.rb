class Room < ApplicationRecord
  after_commit :sync_create

  def self.get_room(room_id)
    FIREBASE_DB.get('/rooms/' + room_id.to_s)
  end

  def sync_create
    add_room
  end

  private

  def add_room
    FIREBASE_DB.post('/rooms/' + id.to_s, {
      name: name
    })
  end
end
