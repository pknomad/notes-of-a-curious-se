motorcycles = ['honda', 'yamaha', 'suzuki']
print(motorcycles)

# Modifying elements to a list
motorcycles = ['honda', 'yamaha', 'suzuki']
motorcycles[0] = 'ducati'
print(motorcycles)

# Appending elements to a list
motorcycles = ['honda', 'yamaha', 'suzuki']
motorcycles.append('ducati')
print(motorcycles)

# Inserting elements to a list
motorcycles = ['honda', 'yamaha', 'suzuki']
motorcycles.insert(0, 'ducati')
print(motorcycles)

# Deleting elements from a list using delete statement
motorcycles = ['honda', 'yamaha', 'suzuki']
del motorcycles[0]
print(motorcycles)

# Removing elements using pop() method. (Pop allows you to work with the affected element)
motorcycles = ['honda', 'yamaha', 'suzuki']
popped_motorcycles = motorcycles.pop() # removes the last element by default
print(motorcycles)
print(popped_motorcycles)

# Example of pop
motorcycles = ['honda', 'yamaha', 'suzuki']
last_owned = motorcycles.pop()
print(f"The last motorcycle I owned was a {last_owned.title()}.")

# Popping items from any positions in a list
motorcycles = ['honda', 'yamaha', 'suzuki']
first_owned = motorcycles.pop(0)
print(f"The first motorcycle I owned was a {first_owned.title()}.")

# Removing items by value
motorcycles = ['honda', 'yamaha', 'suzuki', 'ducati']
motorcycles.remove('ducati')
print(motorcycles)

# Removing items by variables
motorcycles = ['honda', 'yamaha', 'suzuki', 'ducati']
too_expensive = 'ducati'
motorcycles.remove(too_expensive)
print(motorcycles)
print(f"\nA {too_expensive.title()} is too expensive for me.")