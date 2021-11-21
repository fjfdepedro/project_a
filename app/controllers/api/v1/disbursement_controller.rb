class Api::V1::Disbursements < ApplicationController
  before_action :set_call
  # GET /list
  def list
    @disbursements = Api::V1.Orders.Disbursements.call(disbursements_params)
  end
end