require('minitest/autorun')
require ('minitest/rg')
require_relative('../bank_account.rb')


class TestBankAccount < MiniTest::Test
  @bank_account

  def setup
    @bank_account = BankAccount.new('Tony', 500, 'business')
  end

  def test_account_name
    assert_equal('Tony', @bank_account.holder_name)
  end

  def test_amount_in_account
    assert_equal(500, @bank_account.amount)
  end

  def test_account_type
    assert_equal('business', @bank_account.type)

  end

  def test_set_account_name
    @bank_account.holder_name='Darren'
    assert_equal('Darren', @bank_account.holder_name)
  end

  def test_set_amount
    @bank_account.amount=500
    assert_equal(500, @bank_account.amount)
  end

  def test_set_type
    @bank_account.type='personal'
    assert_equal('personal', @bank_account.type)
  end

  def test_pay_into_account
    @bank_account.pay_in(1000)
    assert_equal(1500, @bank_account.amount)
  end


  def test_pay_monthly_fee_by_account_personal
    account = BankAccount.new('Jarrod', 1000, 'personal')
    account.monthly_fee()

    assert_equal(990, account.amount)
  end

  def test_pay_monthly_fee_by_account_business
    @bank_account.monthly_fee()
    assert_equal(450, @bank_account.amount)
  end


end
