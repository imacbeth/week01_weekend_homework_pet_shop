def pet_shop_name(pet_shop)
  return pet_shop[:name]
end


def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, cash)
     pet_shop[:admin][:total_cash] += cash
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, sold)
  pet_shop[:admin][:pets_sold] += sold
end

def stock_count(pet_shop)
  return pet_shop[:pets].length
end


def pets_by_breed(pet_shop, breeds)
  all_breeds = []
  for breed_type in pet_shop[:pets]
    if breed_type[:breed] == breeds
      all_breeds.push(breed_type)
    end
  end
  return all_breeds
end


def find_pet_by_name(pet_shop, input_name)
  for pet_name in pet_shop[:pets]
    if pet_name[:name] == input_name
      return pet_name
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop, input_name)
  for pet_name in pet_shop[:pets]
    if  input_name == pet_name[:name]
      pet_shop[:pets].delete(pet_name)
    end
  end
end

def add_pet_to_stock(pet_shop, new_pet_stock)
  pet_shop[:pets].push(new_pet_stock)
end

def customer_cash(customers)
  return customers[:cash]
end

def remove_customer_cash(customer, amount)
  customer[:cash] -= amount
end


def customer_pet_count(customers)
  return customers[:pets].length
end

def add_pet_to_customer(customer, new_pet)
customer[:pets].push(new_pet)
end

def customer_can_afford_pet(customer, new_pet)
  if customer[:cash] >= new_pet[:price]
    return true
  end
  return false
end
