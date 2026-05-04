# PART 1: NETWORKING (THEORY + PRACTICAL)

## Basic Concepts

**Q1: What is the OSI model?**
The OSI (Open Systems Interconnection) model is a framework that standardizes communication between systems.
It consists of 7 layers:

- Physical
- Data Link
- Network
- Transport
- Session
- Presentation
- Application

**Q2: What is the difference between TCP and UDP?**

- **TCP (Transmission Control Protocol):** Reliable, connection-oriented (used in HTTP, SSH)
- **UDP (User Datagram Protocol):** Faster, connectionless, no delivery guarantee (used in DNS, streaming)

**Q3: What is an IP address?**
A unique identifier assigned to devices on a network.

- IPv4: 32-bit
- IPv6: 128-bit

---

## Intermediate Networking

**Q4: What is a subnet?**
A logical division of a network used to reduce congestion and improve routing efficiency.

**Q5: What is NAT (Network Address Translation)?**
A method that translates private IP addresses into public IP addresses.
Commonly used in cloud and VPC environments.

**Q6: What is DNS?**
The Domain Name System translates domain names into IP addresses.

---

## Practical Networking Commands

**Q7: How do you check your IP address in Linux?**

```bash
ip a
```

**Q8: How do you test connectivity to a server?**

```bash
ping google.com
```

**Q9: How do you check open ports?**

```bash
netstat -tuln
# or
ss -tuln
```

**Q10: How do you troubleshoot DNS issues?**

```bash
nslookup google.com
dig google.com
```

---

## Scenario-Based Questions

**Q11: You cannot SSH into a server. What should you check?**

- Network connectivity (`ping`)
- Security groups / firewall rules
- SSH service status:

```bash
systemctl status ssh
```

- Ensure port 22 is open

**Q12: A website is not loading. What steps do you take?**

- Check DNS resolution
- Ping the server
- Verify web server (Nginx/Apache)
- Check firewall rules
- Review logs

---

# PART 2: LINUX (THEORY + PRACTICAL)

## Basic Linux Concepts

**Q13: What is Linux?**
An open-source operating system based on Unix.

**Q14: What is a kernel?**
The core component of the OS that manages hardware and system processes.

---

## File System & Commands

**Q15: What are common Linux commands?**

```bash
ls    # list files
cd    # change directory
pwd   # print working directory
cp    # copy files
mv    # move files
rm    # remove files
```

**Q16: What are file permissions?**

- Read (r)
- Write (w)
- Execute (x)

Example:

```bash
chmod 755 file.sh
```

---

## Process Management

**Q17: How do you check running processes?**

```bash
ps aux
top
```

**Q18: How do you kill a process?**

```bash
kill <PID>
kill -9 <PID>
```

---

## Package Management

**Q19: How do you install a package on Ubuntu?**

```bash
sudo apt install nginx
```

**Q20: How do you install a package on CentOS?**

```bash
sudo yum install nginx
```

---

## Services

**Q21: How do you manage services?**

```bash
systemctl start nginx
systemctl stop nginx
systemctl enable nginx
```

---

# PART 3: PRACTICAL SCENARIOS

## Scenario 1: Disk Full

**Q22: The server disk is full. What do you do?**

```bash
df -h        # check disk usage
du -sh *     # find large files
```

- Delete unnecessary files
- Clean up logs
- Implement log rotation

---

## Scenario 2: High CPU Usage

**Q23: How do you troubleshoot high CPU usage?**

```bash
top
htop
```

- Identify the resource-heavy process
- Kill or optimize it

---

## Scenario 3: Service Not Running

**Q24: Nginx is not working. What do you check?**

```bash
systemctl status nginx
journalctl -u nginx
```

---

## Scenario 4: Permission Issues

**Q25: How do you fix a “permission denied” error?**

```bash
chmod +x script.sh
chown user:user file
```

---

# PART 4: CLOUD-FOCUSED QUESTIONS

**Q26: What is a VPC (Virtual Private Cloud)?**
An isolated virtual network in the cloud.

**Q27: What is a Security Group?**
A virtual firewall controlling inbound and outbound traffic.

**Q28: What is the difference between a Security Group and a NACL?**

- Security Group: Stateful
- NACL (Network ACL): Stateless

**Q29: What is a Load Balancer?**
A service that distributes incoming traffic across multiple servers.

**Q30: What is SSH?**
A secure protocol for remote login and command execution.

---

# ADVANCED NETWORKING

## Subnetting

**Q31: What is CIDR?**
Classless Inter-Domain Routing notation for IP ranges (e.g., 192.168.1.0/24).

**Q32: How many hosts are in a /24 subnet?**
Formula:

```
2^(32 - subnet_mask) - 2
```

For /24:

```
2^8 - 2 = 254 hosts
```

**Q33: What are private IP ranges?**

- 10.0.0.0/8
- 172.16.0.0 – 172.31.255.255
- 192.168.0.0/16

**Q34: What is subnet mask vs prefix length?**

- Subnet mask: 255.255.255.0
- Prefix length: /24
  Both represent the same concept.

**Q35: What are network and broadcast addresses?**

- Network: First IP in a subnet
- Broadcast: Last IP in a subnet

Example:

- Network: 192.168.1.0
- Broadcast: 192.168.1.255

**Q36: What is VLSM?**
Variable Length Subnet Masking allows different subnet sizes within the same network.

---

## Routing & Switching

**Q37: What is a routing table?**
A table that determines where network packets are sent.

**Q38: Static vs dynamic routing?**

- Static: Manually configured
- Dynamic: Uses protocols like OSPF or BGP

**Q39: What is ARP?**
Address Resolution Protocol maps IP addresses to MAC addresses.

**Q40: What happens when you enter a URL in a browser?**

1. DNS lookup
2. TCP handshake
3. HTTP request
4. Server response

---

## Protocols

**Q41: What is the TCP 3-way handshake?**

1. SYN
2. SYN-ACK
3. ACK

**Q42: HTTP vs HTTPS?**

- HTTP: Unencrypted
- HTTPS: Encrypted using TLS

**Q43: What is a port?**
A logical communication endpoint.

Examples:

- 22 → SSH
- 80 → HTTP
- 443 → HTTPS

---

## Cloud Networking

**Q44: What is an Internet Gateway?**
Allows a VPC to connect to the internet.

**Q45: What is a NAT Gateway?**
Allows private subnets to access the internet.

**Q46: Public vs private subnet?**

- Public: Has route to internet gateway
- Private: No direct internet access

---

# LINUX THEORY (ADVANCED)

## System Concepts

**Q47: Process vs thread?**

- Process: Independent program
- Thread: Lightweight unit within a process

**Q48: What is a daemon?**
A background service (e.g., sshd, nginx).

**Q49: Hard link vs soft link?**

- Hard link: Same inode
- Soft link: Pointer (shortcut)

**Q50: What is an inode?**
A data structure that stores file metadata.

---

## File System

**Q51: Linux file hierarchy**

- / → root
- /home → user directories
- /etc → configuration files
- /var → logs
- /bin → binaries

---

## Permissions

**Q52: What does 777 mean?**
Read, write, and execute permissions for all users.

**Q53: What is SUID?**
Allows a file to run with the owner's permissions.

**Q54: What is the sticky bit?**
Restricts file deletion to the file owner in shared directories.

---

# LINUX SCRIPTING

## Basics

**Q55: What is a shell script?**
A file containing commands executed by a shell.

**Q56: What is a shebang?**

```bash
#!/bin/bash
```

Defines the script interpreter.

---

## Variables

**Q57: How do you define a variable?**

```bash
name="John"
```

**Q58: How do you use a variable?**

```bash
echo $name
```

---

## Conditionals

**Q59: If statement example**

```bash
if [ $age -gt 18 ]; then
  echo "Adult"
fi
```

---

## Loops

**Q60: For loop**

```bash
for i in 1 2 3; do
  echo $i
done
```

**Q61: While loop**

```bash
while [ $i -lt 5 ]; do
  echo $i
done
```

---

## Functions

**Q62: Function in Bash**

```bash
myfunc() {
  echo "Hello"
}
```

---

## Input/Output

**Q63: Read input from user**

```bash
read name
echo $name
```

---

## Exit Status

**Q64: What is an exit code?**

- 0 → success
- Non-zero → failure

---

## Advanced Scripting

**Q65: What is cron?**
A job scheduler for automating tasks.

**Q66: What is piping?**

```bash
ls | grep file
```

**Q67: What is redirection?**

```bash
>   # overwrite
>>  # append
```

**Q68: How do you automate tasks in Linux?**
Use cron jobs with shell scripts.

**Q69: Script to check if a service is running**

```bash
if systemctl is-active --quiet nginx; then
  echo "Running"
else
  echo "Stopped"
fi
```

**Q70: How do you debug a shell script?**

```bash
bash -x script.sh
```

**Q71: What happens if a script fails midway?**
Use error handling:

```bash
set -e
```
