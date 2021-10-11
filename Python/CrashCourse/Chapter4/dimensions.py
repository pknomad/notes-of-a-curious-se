dimensions = (200, 50)
print(dimensions[0])
print(dimensions[1])

# dimensions[1] = 250 does not work since tuple is immutable

for dimension in dimensions:
    print(dimension)

print("Original dimensions:")
for dimension in dimensions:
    print(dimension)

modified_dimensions = (400, 100) # You can write over the original tuples as a whole
print("\nModified dimensions:")
for modified_dimension in modified_dimensions:
    print(modified_dimension)
