# Molecule Testing

Get role from ansible-galaxy

`ansible-galaxy role init myrole`

Create a new role with molecue:

` molecule init role myrole `

Then Test it:

` molecule test `

And test it but leave the container running for debugging:

` molecule converge `

Set a 'breakpoint' using `fail: ` in the tasks.