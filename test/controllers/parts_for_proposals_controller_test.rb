require 'test_helper'

class PartsForProposalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parts_for_proposal = parts_for_proposals(:one)
  end

  test "should get index" do
    get parts_for_proposals_url
    assert_response :success
  end

  test "should get new" do
    get new_parts_for_proposal_url
    assert_response :success
  end

  test "should create parts_for_proposal" do
    assert_difference('PartsForProposal.count') do
      post parts_for_proposals_url, params: { parts_for_proposal: { cost: @parts_for_proposal.cost, descripton: @parts_for_proposal.descripton, part_number: @parts_for_proposal.part_number, proposal_id: @parts_for_proposal.proposal_id } }
    end

    assert_redirected_to parts_for_proposal_url(PartsForProposal.last)
  end

  test "should show parts_for_proposal" do
    get parts_for_proposal_url(@parts_for_proposal)
    assert_response :success
  end

  test "should get edit" do
    get edit_parts_for_proposal_url(@parts_for_proposal)
    assert_response :success
  end

  test "should update parts_for_proposal" do
    patch parts_for_proposal_url(@parts_for_proposal), params: { parts_for_proposal: { cost: @parts_for_proposal.cost, descripton: @parts_for_proposal.descripton, part_number: @parts_for_proposal.part_number, proposal_id: @parts_for_proposal.proposal_id } }
    assert_redirected_to parts_for_proposal_url(@parts_for_proposal)
  end

  test "should destroy parts_for_proposal" do
    assert_difference('PartsForProposal.count', -1) do
      delete parts_for_proposal_url(@parts_for_proposal)
    end

    assert_redirected_to parts_for_proposals_url
  end
end
