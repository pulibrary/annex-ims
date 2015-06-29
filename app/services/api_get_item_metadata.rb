class ApiGetItemMetadata
  attr_reader :barcode

  def self.call(barcode)
    new(barcode).get_data!
  end

  def initialize(barcode)
    @barcode = barcode
  end

  def get_data!
    ApiHandler.get(action: :record, params: { barcode: barcode })
  end
end
