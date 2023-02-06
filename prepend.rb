# MODUŁY - MIXINY
# PREPEND

module Logger
  def log
    p "Log: #{Time.now} - #{super}"
  end
end


class RegisterUser
  prepend Logger
  # ...
  def call
    # ... akcja rejestrowania użytkownika
    # log zarejestrowano usera
    log
  end

  private

  def log
    "Użytkownik został zarejestrowany"
  end
end

RegisterUser.new.call
