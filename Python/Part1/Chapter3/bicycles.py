# List is a collection of items in a particular order.

# Creating a list
bicycles = ['trek', 'cannondale', 'redline', 'specialized']
print(bicycles)

# Accesing a list
print(bicycles[0])

# Accesing a list and applying method to the element
print(bicycles[0].title()) # Index starts at 0

# Reverse access
print(bicycles[-1])

# F-string a list element
message = f"My first bicycle was a {bicycles[0].title()}."

print(message)