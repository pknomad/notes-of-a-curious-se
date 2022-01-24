cars = ['bmw', 'audi', 'toyoya', 'subaru']
print(cars)

# Sort alphabetically
cars.sort()
print(cars)

# Sort alphabetically, but in reverse
cars.sort(reverse=True)
print(cars)

# Sort alphabetically temporarily with sorted() function
cars = ['bmw', 'audi', 'toyoya', 'subaru']
print("Here is the original list:")
print(cars)

print("Here is the sorted list:")
print(sorted(cars))

print("\nHere is the original list again")
print(cars)

# Sort reverse with reverse() function
cars = ['bmw', 'audi', 'toyoya', 'subaru']
print("Here is the original list:")
print(cars)

cars.reverse()

print("\nHere is the reversed list")
print(cars)

# Find the length of a list
cars = ['bmw', 'audi', 'toyoya', 'subaru']
print(len(cars))
