squares = []
for value in range(1, 11): # For loop array and append
    square = value ** 2
    squares.append(square)

print(squares)

print(min(squares)) # Minimum element
print(max(squares)) # Maximum element
print(sum(squares)) # Sum of elements

squares = [value ** 2 for value in range(1,11)] # Shorthand loop array aka List Comprehension
print(squares)