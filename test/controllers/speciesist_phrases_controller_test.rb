require 'test_helper'

class SpeciesistPhrasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @speciesist_phrase = speciesist_phrases(:one)
  end

  test "should get index" do
    get speciesist_phrases_url, as: :json
    assert_response :success
  end

  test "should create speciesist_phrase" do
    assert_difference('SpeciesistPhrase.count') do
      post speciesist_phrases_url, params: { speciesist_phrase: { importance_points: @speciesist_phrase.importance_points, text: @speciesist_phrase.text } }, as: :json
    end

    assert_response 201
  end

  test "should show speciesist_phrase" do
    get speciesist_phrase_url(@speciesist_phrase), as: :json
    assert_response :success
  end

  test "should update speciesist_phrase" do
    patch speciesist_phrase_url(@speciesist_phrase), params: { speciesist_phrase: { importance_points: @speciesist_phrase.importance_points, text: @speciesist_phrase.text } }, as: :json
    assert_response 200
  end

  test "should destroy speciesist_phrase" do
    assert_difference('SpeciesistPhrase.count', -1) do
      delete speciesist_phrase_url(@speciesist_phrase), as: :json
    end

    assert_response 204
  end
end
