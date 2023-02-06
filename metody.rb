# METODY

def buy_cookie(cookie_name)
  p "Kupiłeś ciastko - #{cookie_name}"
end

buy_cookie("ciastko z kremem")
buy_cookie("delicje")

def buy_meal(meal_name = "pizza", drink)
  p "Kupiłeś posiłek - #{meal_name} do picia #{drink}"
end

buy_meal("Schabowy")

def buy_car(car_brand:, color: "czarny", year:)
  p "Kupiłeś samochód - #{car_brand} o kolorze #{color} rocznik #{year}"
end

# buy_car(car_brand: "Volvo", color: "czerwony")
# buy_car(color: 'Volvo', car_brand: "czerwony")
buy_car(car_brand: "BMW", year: 2000)

def metoda(name)
  p "metoda #{name}"
end

metoda "name"
