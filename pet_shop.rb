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
end
