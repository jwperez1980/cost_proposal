class PartsForProposalsController < ApplicationController
  before_action :set_parts_for_proposal, only: [:show, :edit, :update, :destroy]

  # GET /parts_for_proposals
  # GET /parts_for_proposals.json
  def index
    @parts_for_proposal = PartsForProposal.all
  end

  # GET /parts_for_proposals/1
  # GET /parts_for_proposals/1.json
  def show
  end

  # GET /parts_for_proposals/new
  def new
    @proposal = Proposal.find(params[:id])
    @parts_for_proposal = PartsForProposal.new
    @parts_for_proposal.proposal_id = params[:id]
  end

  # GET /parts_for_proposals/1/edit
  def edit
  end

  # POST /parts_for_proposals
  # POST /parts_for_proposals.json
  def create
    @parts_for_proposal = PartsForProposal.new(parts_for_proposal_params)

    respond_to do |format|
      if @parts_for_proposal.save
        format.html { redirect_to @parts_for_proposal, notice: 'Parts for proposal was successfully created.' }
        format.json { render :show, status: :created, location: @parts_for_proposal }
      else
        format.html { render :new }
        format.json { render json: @parts_for_proposal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parts_for_proposals/1
  # PATCH/PUT /parts_for_proposals/1.json
  def update
    respond_to do |format|
      if @parts_for_proposal.update(parts_for_proposal_params)
        format.html { redirect_to @parts_for_proposal, notice: 'Parts for proposal was successfully updated.' }
        format.json { render :show, status: :ok, location: @parts_for_proposal }
      else
        format.html { render :edit }
        format.json { render json: @parts_for_proposal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parts_for_proposals/1
  # DELETE /parts_for_proposals/1.json
  def destroy
    @parts_for_proposal.destroy
    respond_to do |format|
      format.html { redirect_to parts_for_proposals_url, notice: 'Parts for proposal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parts_for_proposal
      @parts_for_proposal = PartsForProposal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parts_for_proposal_params
      params.require(:parts_for_proposal).permit(:frequency, :quantity_per_visit, :proposal_id, :part_id)
    end
end
