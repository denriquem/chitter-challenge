# require 'database_helpers'
require 'user'
require 'bcrypt'

describe '.create' do
  it 'creates a new user' do
    user = User.create(email: 'test@bla.com', password: 'its-a-secret')

     expect(user).to be_a User
     expect(user.email).to eq 'test@bla.com'
   end

   it 'hashes the password using BCrypt' do
     expect(BCrypt::Password). to receive(:create).with('its-a-secret')

     User.create(email: 'test@bla.com', password: 'its-a-secret')
 end
end
