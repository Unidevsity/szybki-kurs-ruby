# KLASY

class Building

  @@city = "New York"
  MATERIAL = "cegła"

  # konstruktor
  def initialize(name)
    @name = name
  end

  def description
    "To jest #{@name} w #{@@city} wykonana z #{MATERIAL}"
  end

  def change_city
    @@city = "Tokio"
  end
end

school = Building.new("szkoła")

p school.description

house = Building.new("dom")
house.change_city
p house.description

p school.description

p Building::MATERIAL

class Notification
  def self.send(message)
    p "#{message} sent"
  end

  class << self
    def metoda_statyczna
      p "Statyczna"
    end
  end
end

Notification.send("Hello")
Notification.metoda_statyczna
