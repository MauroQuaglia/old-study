require_relative '../lib/ticket_shop'

RSpec.describe TicketShop do

  subject { described_class.new }

  it 'should sell a one way ticket' do
    expect(
        subject.get('ONEWAY')
    ).to be_instance_of(OneWayTicket)
  end

  it 'should sell a daily ticket' do
    expect(
        subject.get('DAILY')
    ).to be_instance_of(DailyTicket)
  end

  it 'should sell a weekly ticket' do
    expect(
        subject.get('WEEKLY')
    ).to be_instance_of(WeeklyTicket)
  end

end