require 'spec_helper'


describe Devise::PasswordsController do
  include Devise::TestHelpers
  describe '#create' do
    it 'blows up since first for auth is overriden' do
      User.create!(:email => 'max+foo@bar.com', password:'foobar111', password_confirmation:'foobar111')
      @request.env["devise.mapping"] = Devise.mappings[:user]

      expect{
        post :create, user: {email: 'max+foo@bar.com'}
      }.to raise_error(/I am called/)
    end
  end
end