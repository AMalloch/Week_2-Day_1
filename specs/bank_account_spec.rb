require('minitest/rg')
require('minitest/autorun')
require_relative('../bank_account')

class TestBankAccount < MiniTest::Test

  def test_account_name
    bank_account = BankAccount.new('John', 500, 'buisness')
    assert_equal("John", bank_account.holder_name())
  end

  def test_account_amount
    bank_account = BankAccount.new('John', 500, 'buisness')
    assert_equal(500, bank_account.amount())
  end

  def test_account_type
    bank_account = BankAccount.new('John', 500, 'buisness')
    assert_equal("buisness", bank_account.type())
  end

  def test_set_account_name()
    bank_account = BankAccount.new("John", 500, "buisness")
    bank_account.holder_name = ("Steve")
    assert_equal("Steve", bank_account.holder_name())
  end

  def test_set_account_type()
    bank_account = BankAccount.new("John", 500, "buisness")
    bank_account.type = ("Personal")
    assert_equal("Personal", bank_account.type())
  end

  # def test_direct_debit()
  #   bank_account = BankAccount.new("John", 500, "buisness")
  #   bank_account.direct_debit(50)
  #   assert_equal(450, bank_account.amount())
  # end

  def test_direct_debit_buisness()
    bank_account = BankAccount.new("John", 500, "buisness")
    bank_account.direct_debit()
    assert_equal(400, bank_account.amount())
  end

  def test_direct_debit_personal()
    bank_account = BankAccount.new("John", 500, "personal")
    bank_account.direct_debit()
    assert_equal(450, bank_account.amount())
  end

end
