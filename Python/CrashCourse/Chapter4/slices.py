players = ['charles', 'martina', 'michael', 'florence', 'eli']
print(players[1:3])

print(players[:3]) # If the first number is omitted, then it implicitly starts at the first element

print(players[2:]) # If the last number is omitted, then it implicitly ends at the last element

print("Here are the first three players on my team:")
for player in players[:3]:
    print(player.title())