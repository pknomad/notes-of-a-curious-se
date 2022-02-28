### Unix and Linux System Administration Handbook

# Chapter 1 (Where to start)
Duties of a System Administrator
1. Controlling access
2. Adding hardware
3. Automating tasks
4. Overseeing backups
5. Installing and upgrading software
6. Monitoring
7. Troubleshooting
8. Maintaining local documentation
9. Vigilantly monitoring security
10. Tuning performance
11. Developing site policies
12. Working with vendors
13. Fire fighting

Helpful tools for finding software on OS
`which`
`whereis` - independent of shell path
`locate` - can find any type of file

# Chapter 2 (Booting and System Management Daemons)
Booting (dfn) - Finding, loading, and running boostrapping code

In the unix and linux world, there is Systemd and init. Systemd streamlines the boot process by adding dependency management support for concurent startup processes, and a comprehensive approach to logging.

Order of Boot
1. Power
2. Load BIOS/UEFI from NVRAM
3. Probe for hardware
4. Select for boot device
5. Identity EFI system partition
6. Load boot loader (e.g. GRUB)
7. Determine which kernel to boot
8. Load kernel
9. Instantiate kernel data structures
10. Start init/systemd on PID1
11. Execute startup scripts
12. Run System
