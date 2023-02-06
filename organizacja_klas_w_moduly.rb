# ORGANIZACJA KLAS W MODUŁY

module Database
  class Config

  end

  class Connection
    class ConnectionTimeoutError < StandardError

    end

  end
end

new_config = Database::Config.new
connection = Database::Connection.new
Database::Connection::ConnectionTimeoutError.new
