require 'test_helper'

class ReplacementPhrasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @replacement_phrase = replacement_phrases(:one)
  end

  test "should get index" do
    get replacement_phrases_url, as: :json
    assert_response :success
  end

  test "should create replacement_phrase" do
    assert_difference('ReplacementPhrase.count') do
      post replacement_phrases_url, params: { replacement_phrase: { downvotes: @replacement_phrase.downvotes, speciesist_phrase_id: @replacement_phrase.speciesist_phrase_id, text: @replacement_phrase.text, upvotes: @replacement_phrase.upvotes } }, as: :json
    end

    assert_response 201
  end

  test "should show replacement_phrase" do
    get replacement_phrase_url(@replacement_phrase), as: :json
    assert_response :success
  end

  test "should update replacement_phrase" do
    patch replacement_phrase_url(@replacement_phrase), params: { replacement_phrase: { downvotes: @replacement_phrase.downvotes, speciesist_phrase_id: @replacement_phrase.speciesist_phrase_id, text: @replacement_phrase.text, upvotes: @replacement_phrase.upvotes } }, as: :json
    assert_response 200
  end

  test "should destroy replacement_phrase" do
    assert_difference('ReplacementPhrase.count', -1) do
      delete replacement_phrase_url(@replacement_phrase), as: :json
    end

    assert_response 204
  end
end
