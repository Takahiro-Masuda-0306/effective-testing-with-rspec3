class Tea
  def initialize(flavor, temperature)
    @flavor = flavor
    @temperature = temperature
  end

  def flavor
    @flavor
  end

  def temperature
    @temperature == :hot ? 205.0 : 190.0
  end
end

RSpec.configure do |config|
  config.example_status_persistence_file_path = '02-running-specs/logs/rspec_logs.txt'
end

RSpec.describe Tea do
  let(:tea) { Tea.new(:earl_grey, :hot) }

  it 'tastes like Earl Grey' do
    expect(tea.flavor).to be :earl_grey
  end

  it 'is hot' do
    expect(tea.temperature).to be >200.0
  end
end