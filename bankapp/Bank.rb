class Bank
  attr_accessor :accounts

  def initialize
    @accounts = {}
  end

  def create_account(timestamp, account_id)
    @accounts[account_id] = Account.new(account_id)
  end

  def deposit(account_id, amount)
    account = @accounts[account_id]
    if account
      account.deposit(amount)
    else
      return "This account does not exists"
    end
  end

  def transfer()

  end
end


class Account
  attr_reader :id, :balance
  def initialize
    @id = id
    @balance = 0
  end
end
