require 'test_helper'

class ProposalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @proposal = proposals(:one)
  end

  test "should get index" do
    get proposals_url
    assert_response :success
  end

  test "should get new" do
    get new_proposal_url
    assert_response :success
  end

  test "should create proposal" do
    assert_difference('Proposal.count') do
      post proposals_url, params: { proposal: { date_needed: @proposal.date_needed, date_quoted: @proposal.date_quoted, po_number: @proposal.po_number, project_id: @proposal.project_id, quote_number: @proposal.quote_number, ship_via: @proposal.ship_via } }
    end

    assert_redirected_to proposal_url(Proposal.last)
  end

  test "should show proposal" do
    get proposal_url(@proposal)
    assert_response :success
  end

  test "should get edit" do
    get edit_proposal_url(@proposal)
    assert_response :success
  end

  test "should update proposal" do
    patch proposal_url(@proposal), params: { proposal: { date_needed: @proposal.date_needed, date_quoted: @proposal.date_quoted, po_number: @proposal.po_number, project_id: @proposal.project_id, quote_number: @proposal.quote_number, ship_via: @proposal.ship_via } }
    assert_redirected_to proposal_url(@proposal)
  end

  test "should destroy proposal" do
    assert_difference('Proposal.count', -1) do
      delete proposal_url(@proposal)
    end

    assert_redirected_to proposals_url
  end
end
