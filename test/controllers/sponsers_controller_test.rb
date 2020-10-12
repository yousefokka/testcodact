require 'test_helper'

class SponsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sponser = sponsers(:one)
  end

  test "should get index" do
    get sponsers_url, as: :json
    assert_response :success
  end

  test "should create sponser" do
    assert_difference('Sponser.count') do
      post sponsers_url, params: { sponser: { Address: @sponser.Address, Catagory: @sponser.Catagory, Funding: @sponser.Funding, Gander: @sponser.Gander, Typemanagment: @sponser.Typemanagment, name: @sponser.name, phone: @sponser.phone } }, as: :json
    end

    assert_response 201
  end

  test "should show sponser" do
    get sponser_url(@sponser), as: :json
    assert_response :success
  end

  test "should update sponser" do
    patch sponser_url(@sponser), params: { sponser: { Address: @sponser.Address, Catagory: @sponser.Catagory, Funding: @sponser.Funding, Gander: @sponser.Gander, Typemanagment: @sponser.Typemanagment, name: @sponser.name, phone: @sponser.phone } }, as: :json
    assert_response 200
  end

  test "should destroy sponser" do
    assert_difference('Sponser.count', -1) do
      delete sponser_url(@sponser), as: :json
    end

    assert_response 204
  end
end
