require 'test_helper'

class PerformancesControllerTest < ActionController::TestCase
  setup do
    @performance = performances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:performances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create performance" do
    assert_difference('Performance.count') do
      post :create, performance: { auto_cross: @performance.auto_cross, auto_defenses_crossed: @performance.auto_defenses_crossed, auto_reach: @performance.auto_reach, auto_shoot: @performance.auto_shoot, auto_shoot_high: @performance.auto_shoot_high, auto_shoot_high_successful: @performance.auto_shoot_high_successful, auto_shoot_low: @performance.auto_shoot_low, auto_shoot_low_successful: @performance.auto_shoot_low_successful, challenged: @performance.challenged, match_id: @performance.match_id, scaled: @performance.scaled, team_id: @performance.team_id, tele_defenses_crossed: @performance.tele_defenses_crossed, tele_high_missed: @performance.tele_high_missed, tele_high_scored: @performance.tele_high_scored, tele_low_missed: @performance.tele_low_missed, tele_low_scored: @performance.tele_low_scored, tele_time_taken: @performance.tele_time_taken }
    end

    assert_redirected_to performance_path(assigns(:performance))
  end

  test "should show performance" do
    get :show, id: @performance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @performance
    assert_response :success
  end

  test "should update performance" do
    patch :update, id: @performance, performance: { auto_cross: @performance.auto_cross, auto_defenses_crossed: @performance.auto_defenses_crossed, auto_reach: @performance.auto_reach, auto_shoot: @performance.auto_shoot, auto_shoot_high: @performance.auto_shoot_high, auto_shoot_high_successful: @performance.auto_shoot_high_successful, auto_shoot_low: @performance.auto_shoot_low, auto_shoot_low_successful: @performance.auto_shoot_low_successful, challenged: @performance.challenged, match_id: @performance.match_id, scaled: @performance.scaled, team_id: @performance.team_id, tele_defenses_crossed: @performance.tele_defenses_crossed, tele_high_missed: @performance.tele_high_missed, tele_high_scored: @performance.tele_high_scored, tele_low_missed: @performance.tele_low_missed, tele_low_scored: @performance.tele_low_scored, tele_time_taken: @performance.tele_time_taken }
    assert_redirected_to performance_path(assigns(:performance))
  end

  test "should destroy performance" do
    assert_difference('Performance.count', -1) do
      delete :destroy, id: @performance
    end

    assert_redirected_to performances_path
  end
end
