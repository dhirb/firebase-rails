# Overview
This is a simple implementation of Rails with connection to Firebase DB.

This project is adapted from [realtime-chat-example](https://github.com/suhanlee/realtime-chat-example) and this Medium [post](https://medium.com/@channaly/connect-to-firebase-realtime-database-from-rails-application-f42c81dbb532).

# Firebase setup
1. Create a [Firebase](https://firebase.google.com/) account and navigate to the [console](https://console.firebase.google.com).
2. Click the Setings button beside Project Overview tab and navigate to Project Settings.
3. Go to the Service Accounts tab.
4. On the Firebase Admin SDK pane, click Generate New Private Key. This will generate a json file that contains the credentials required to access Firebase DB.
   Save this file in your Rails project directory.

# Rails
In this example, we use the [firebase-ruby](https://github.com/kenjij/firebase-ruby) gem as our adapter to Firebase REST API for Rails.

We initialize the Firebase connection in `services/firebase_database_service.rb`. This allows you to access Firebase DB in your models.

# Things to do to get started
1. Config the path for your Firebase credentials in `services/firebase_database_service.rb`.
```ruby
def initialize
  # CHANGE THIS TO THE PATH THAT CONTAINS THE CREDENTIAL JSON
  auth_path = Dir.pwd + "/config/firebase_auth.json"

  @firebase_db = Firebase::Database.new()
  @firebase_db.set_auth_with_key(path: auth_path)
end
```
2. Setup Rails database.
```bash
$ rails db:setup
```
3. Create a Room.
```ruby
Room.create(name: 'my_room', created_at: Time.now, updated_at: Time.now)
```
4. Retrieve the room from Firebase DB.
```ruby
Room.get_room(room_id)
```
5. You can also view the data in the Firebase console. On the left pane, go to Develop > Database.

# Versions
Ruby: 2.5.0

Rails: 5.2.0
