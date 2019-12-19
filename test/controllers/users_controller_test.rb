# frozen_string_literal: true

require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest

  test 'should get the home page' do
    get '/'
    assert_response :success
  end

  test 'should get new' do
    get '/sign-up'
    assert_response :success
  end

  test 'should get the login page' do
    get '/login'
    assert_response :success
  end
end
