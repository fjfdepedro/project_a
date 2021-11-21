class CreateDisbursement
  class << self
    def call(order)
      merchant = Merchant.find(order.merchant_id)
      fee_configurations_type = FeeConfigurationsType.find(merchant.fee_configurations_type_id)
      fee_configuration = FeeConfiguration.find_by_fee_configurations_type(fee_configurations_type.id).find_by_amount(order.amount)

      fee = amount * fee_percentage / 100

      Disbursement.new(
        order: order,
        fee_configuration: fee_configuration,
        processed_at: Time.current,
        value: fee
      )
    end
  end
end

RSpec.describe CreateDisbursement do
  describe '.call' do
    let(:order) { create(:order, amount: 34) }
    let(:merchant) { order.merchant }
    let(:fee_configurations_type) { merchant.fee_configurations_type }

    it 'returns disbursement create from a order with true fee_percentage' do
      fee_configurations = fee_configurations.find_by_fee_configurations_type(
        fee_configurations_type.id
      ).find_by_amount(
        order.amount
      )
      disbursements = described_class.call(order)
      expect(disbursements.fee_configurations).to eq(fee_configurations)
    end
  end
end
