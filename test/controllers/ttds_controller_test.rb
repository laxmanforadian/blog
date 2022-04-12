require "test_helper"

class TtdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ttd = ttds(:one)
  end

  test "should get index" do
    get ttds_url
    assert_response :success
  end

  test "should get new" do
    get new_ttd_url
    assert_response :success
  end

  test "should create ttd" do
    assert_difference('Ttd.count') do
      post ttds_url, params: { ttd: { age: @ttd.age, email: @ttd.email, name: @ttd.name, place: @ttd.place, time: @ttd.time } }
    end

    assert_redirected_to ttd_url(Ttd.last)
  end

  test "should show ttd" do
    get ttd_url(@ttd)
    assert_response :success
  end

  test "should get edit" do
    get edit_ttd_url(@ttd)
    assert_response :success
  end

  test "should update ttd" do
    patch ttd_url(@ttd), params: { ttd: { age: @ttd.age, email: @ttd.email, name: @ttd.name, place: @ttd.place, time: @ttd.time } }
    assert_redirected_to ttd_url(@ttd)
  end

  test "should destroy ttd" do
    assert_difference('Ttd.count', -1) do
      delete ttd_url(@ttd)
    end

    assert_redirected_to ttds_url
  end
end
