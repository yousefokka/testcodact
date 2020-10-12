require 'test_helper'

class IdeamakersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ideamaker = ideamakers(:one)
  end

  test "should get index" do
    get ideamakers_url, as: :json
    assert_response :success
  end

  test "should create ideamaker" do
    assert_difference('Ideamaker.count') do
      post ideamakers_url, params: { ideamaker: { Gander: @ideamaker.Gander, addree: @ideamaker.addree, indestry: @ideamaker.indestry, interstingfield: @ideamaker.interstingfield, jobtitle: @ideamaker.jobtitle, location: @ideamaker.location, mobile: @ideamaker.mobile, name: @ideamaker.name, qualifiction: @ideamaker.qualifiction } }, as: :json
    end

    assert_response 201
  end

  test "should show ideamaker" do
    get ideamaker_url(@ideamaker), as: :json
    assert_response :success
  end

  test "should update ideamaker" do
    patch ideamaker_url(@ideamaker), params: { ideamaker: { Gander: @ideamaker.Gander, addree: @ideamaker.addree, indestry: @ideamaker.indestry, interstingfield: @ideamaker.interstingfield, jobtitle: @ideamaker.jobtitle, location: @ideamaker.location, mobile: @ideamaker.mobile, name: @ideamaker.name, qualifiction: @ideamaker.qualifiction } }, as: :json
    assert_response 200
  end

  test "should destroy ideamaker" do
    assert_difference('Ideamaker.count', -1) do
      delete ideamaker_url(@ideamaker), as: :json
    end

    assert_response 204
  end
end
