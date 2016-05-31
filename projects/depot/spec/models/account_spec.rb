require 'rails_helper'

RSpec.describe Account do

  it 'should deposit an amount' do
    account = described_class.new(balance: 1000, number: '12345')
    account.save!

    expect(account.balance).to eq(1000)

    account.deposit(33)
    expect(account.balance).to eq(1033)
  end

  it 'should withdraw an amount' do
    account = described_class.new(balance: 1000, number: '12345')
    account.save!

    expect(account.balance).to eq(1000)

    account.withdraw(33)
    expect(account.balance).to eq(967)
  end

  it 'should transfer amount' do
    mauro = described_class.new(balance: 1000, number: '123')
    lorenzo = described_class.new(balance: 1000, number: '456')

    expect(mauro.balance).to eq(1000)
    expect(lorenzo.balance).to eq(1000)

    Account.transaction do
      lorenzo.withdraw(100)
      mauro.deposit(100)
    end

    expect(mauro.balance).to eq(1100)
    expect(lorenzo.balance).to eq(900)
  end


end