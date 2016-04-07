require 'rails_helper'

RSpec.describe OrderNotifier, type: :mailer do

  describe 'received' do
    let(:mail) { OrderNotifier.received(Order.new(name: 'Xxx')) }

    it 'renders the headers' do
      expect(mail.subject).to eq('Abeamus!')
      expect(mail.to).to eq(['mauro.quaglia@trovaprezzi.it'])
      expect(mail.from).to eq(['mauro.quaglia@trovaprezzi.it'])
    end

    it 'renders the body' do
      expect(mail.body.encoded).to match('Bravo che hai comprato')
    end

  end

end
