# MODYFIKATORY DOSTĘPU

# PUBLIC
class User
  attr_reader :registered

  def initialize
    @registered = false
  end

  def register
    @registered = true
  end
end

user = User.new
user.registered
user.register
user.registered

# PRIVATE
class User
  def initialize
    @registered = false
  end

  def register
    @registered = true
    send_confirmation
  end

  private

  attr_reader :registered
  attr_writer :registered

  def send_confirmation
    return unless registered
    #... Send confirmation email
  end

end

user = User.new


# PROTECTED
class Account
  def initialize(amount)
    @amount = amount
  end

  def compare(other_account)
    self.amount <=> other_account.amount
  end

  protected

  attr_reader :amount
end

account1 = Account.new(1000)
account2 = Account.new(500)

p account1.compare(account2)












