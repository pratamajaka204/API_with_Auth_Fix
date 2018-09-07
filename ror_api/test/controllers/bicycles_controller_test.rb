require 'test_helper'

class BicyclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bicycle = bicycles(:one)
  end

  test "should get index" do
    get bicycles_url, as: :json
    assert_response :success
  end

  test "should create bicycle" do
    assert_difference('Bicycle.count') do
      post bicycles_url, params: { bicycle: { name: @bicycle.name, series: @bicycle.series } }, as: :json
    end

    assert_response 201
  end

  test "should show bicycle" do
    get bicycle_url(@bicycle), as: :json
    assert_response :success
  end

  test "should update bicycle" do
    patch bicycle_url(@bicycle), params: { bicycle: { name: @bicycle.name, series: @bicycle.series } }, as: :json
    assert_response 200
  end

  test "should destroy bicycle" do
    assert_difference('Bicycle.count', -1) do
      delete bicycle_url(@bicycle), as: :json
    end

    assert_response 204
  end
end
