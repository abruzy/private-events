# frozen_string_literal: true

require 'test_helper'

class EventTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: 'john', email: 'johndoe1@gmail.com', password: '1234562', password_confirmation: '1234562')
    @user.save

    @event = @user.events.new(title: 'Here we come', details: 'Tonight is gonna be mad oh!', date: '2020-10-12', location: 'Ilorin')
  end

  test 'should be valid' do
    assert @event.valid?
  end

  test 'details must be present' do
    @event.details = ''
    assert_not @event.valid?
  end

  test 'details should be present' do
    @event.details = 'Here we come again'
    assert @event.valid?
  end

  test 'event should belong to user' do
    @event.save
    user_name = @user.name
    assert_equal user_name, @event.creator.name
  end

  test 'date must be present' do
    @event.details = ''
    assert_not @event.valid?
  end
end
