# KILL : An Emergencey wiper 
**KILL** is used to wipe the whole disk just in minutes just by creating a cryptographic key , encrypting the whole disk and then remove the key , making the data untracable.

## Pre-requirements

**Debian**
```
sudo apt install hdparm
```

And 

```
sudo apt install nvme-cli
```

if you have both HDD and SSD

Then 

```bash
chmod +x KILL.sh
```

Then

```bash
./KILL.sh
```

it will promote ```KILL? (y/n)``` click lower-case `y` if yes and lower-case `n` if no

