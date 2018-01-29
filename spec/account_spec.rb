require 'account'

describe Account do
  TEST_DEPOSIT = 20
  TEST_WITHDRAWAL = 10

  it { is_expected.to respond_to(:deposit).with(1).argument }
  it { is_expected.to respond_to(:withdraw).with(1).argument }

  it 'can be deposited into' do
    test_account = Account.new()

    expect{test_account.deposit(TEST_DEPOSIT)}.to change{test_account.balance}.by(TEST_DEPOSIT)
  end

end
