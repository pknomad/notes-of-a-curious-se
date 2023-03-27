# Chapter 1: Introduction to Linux
What is "Modern Linux"?

Linux plays a prominent roles in:
1. Mobile Devices (Android)
2. Cloud Computing
3. Internet of (Smart) Things
4. Diversity of Processor Architecture(s)

OS provides heavy lifting and abstraction of hardware components via API

System calls (syscalls) - APIs that an OS exposes 

Linux Resources
`id --user` (uses getuid)
1000

"Unix (by extension, Linux) - everything is in a file"

Linux Resources Visibility

Linux Kernel Version
`cat /proc/version`

Linux CPU Resources
`cat /proc/cpuinfo`

Linux Identifies a process using Process ID (PID)
`cat /proc/$$/status | head -n 6`

`dmidecode`
`uname -m`
`cat /proc/cpuinfo`

Kernel sits between the hardware
1. Process Management
2. Memory Management
3. Networking
4. Filesystems
5. Management of character devices and devices drivers

## Process Management
Process is a user-facing unit based on an executable program
Sessions - contains one or more process groups and represent a high-level user-facing unit with optional tty attached. The kernel identifies a session via a number called session ID (SID)
Process Groups - Contain 1 or more process, with at most one process group in a session as the foreground process group. It's identified via a number called process group ID (PGID)
Processes - Abstractions that group multiple resources which the kernel exposes to you via /proc/self
Threads - Implemented by the kernel as processes