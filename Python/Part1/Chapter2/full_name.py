first_name = "ada"
last_name = "lovelace"

# Format in Python 3.6+
full_name = f"{first_name} {last_name}"

# Format in Python < 3.6
# full_name = "{} {}".format(first_name, last_name)
print(full_name)

print(f"Hello, {full_name.title()}!") # Interpolation