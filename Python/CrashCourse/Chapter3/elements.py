motorcycles = ['honda', 'yamaha', 'suzuki']
print(motorcycles)

motorcycles[0] = 'ducati' # Change element
print(motorcycles)

motorcycles = ['honda', 'yamaha', 'suzuki']
motorcycles.append('ducati') # Append element
print(motorcycles)

motorcycles = [] # Append elements
motorcycles.append('honda')
motorcycles.append('yamaha')
motorcycles.append('suzuki')
print(motorcycles)

motorcycles = ['honda', 'yamaha', 'suzuki']
motorcycles.insert(0, 'ducati') # Insert element
print(motorcycles)

motorcycles = ['honda', 'yamaha', 'suzuki']
del motorcycles[0] # Permanently removes element
print(motorcycles)

motorcycles = ['honda', 'yamaha', 'suzuki']
popped_motorcycles = motorcycles.pop() # Removes the last element
first_owned = motorcycles.pop()
print("The last motorcycle I owned was a " + first_owned + ".")

motorcycles = ['honda', 'yamaha', 'suzuki']
popped_motorcycles = motorcycles.pop(0) # Removes the first element
first_owned = popped_motorcycles
print("The last motorcycle I owned was a " + first_owned + ".")

motorcycles = ['honda', 'yamaha', 'suzuki', 'ducati']
print(motorcycles)
motorcycles.remove('ducati') # Remove the element by value (also removes only the first instance of the value)
print(motorcycles)

motorcycles = ['honda', 'yamaha', 'suzuki', 'ducati']
print(motorcycles)
too_expensive = "ducati"
motorcycles.remove(too_expensive) # Remove the element by value using variable
print(motorcycles)