# CompTIA A+ Notes

## Safety and Professionalism

### :material-tools: Tools of the trade

- Screwdriver and Precision screwdriver with bits
- Hemostat(hemostatic clamp)
- Tweezers
- Spudgers
- Pry bars metal/plastic
- Voltage tester
- Volt/ohm meter (multimeter)
- Thumb drives
- [_iFixit Pro Tech Toolkit_](https://www.ifixit.com/Store/Tools/Pro-Tech-Toolkit/IF145-307 "Best toolkit for IT technician!")

### Troubleshooting Theory

!!! warning

    If the customer is using their organization's laptop, there might be procedures and policies that they must follow when using the laptop. They should check it with their organization's IT.

**Step 1:** Identify the problem

- Question the User and identify User changes to computer and perform backups before making changes
- Inquire regarding environmental or Infrastructure changes
- Review system and application logs

**Step 2:** Establish a theory of probable cause(question the obvious)

- If necessary, conduct external or internal research based on symptoms

**Step 3:** Test the theory to determine cause

- Once the theory is confirmed, determine the next steps to resolve problem
- If theory is not confirmed re-establish new theory or escalate

**Step 4:** Establish a plan of action to resolve the problem and implement the solution

**Step 5:** Verify full system functionality and, if applicable, implement preventive measures

**Step 6:** Document findings, actions and outcome

!!! info "ChatGPT Troubleshooting Theory"

    The troubleshooting theory typically consists of the following steps:

    1. Identify the problem: The first step is to identify the problem that needs to be solved. This can be done by gathering information from the user or system logs.

    2. Gather information: Once the problem is identified, gather as much information as possible about the problem. This may include error messages, system logs, user reports, or any other relevant information.

    3. Analyze the information: Analyze the information gathered to identify the root cause of the problem. This may involve identifying patterns or commonalities between different incidents.

    4. Develop a hypothesis: Based on the analysis, develop a hypothesis about what is causing the problem. This hypothesis should be testable and verifiable.

    5. Test the hypothesis: Test the hypothesis by taking action and observing the results. This may involve making changes to the system or software, or gathering additional information.

    6. Iterate: If the hypothesis is not correct, go back to step 4 and develop a new hypothesis based on the new information. Iterate until the problem is solved.

    7. Implement a solution: Once the root cause of the problem is identified, implement a solution to fix it. This may involve making changes to the system, software, or user behavior.

    8. Monitor and evaluate: Monitor the system or software to ensure that the problem has been fully resolved. Evaluate the effectiveness of the solution and make further changes if necessary.

    By following these steps, you can effectively troubleshoot and solve problems in various systems and software.

## The Visible Computer

### Primary PC Connections

System unit;

- Motherboard
- Central Processing Unit (CPU)
- Random Access Memory (RAM)
- Mass storage; Hard Disk Drive (HDD) or Solid State Drive (SSD)
- Power Supply Unit (PSU)
- Cooling Fans
- Optical Drive (CD/DVD/Blu-ray)
- Expansion Cards (e.g., graphics card, sound card, network card)
- Ports (e.g., USB, Ethernet, HDMI, DisplayPort)
- Internal Cables (e.g., SATA, power cables)

Peripheral;

- Keyboard
- Mouse
- Monitor
- Printer
- Scanner
- Speakers
- Microphone
- External hard drive
- Webcam
- Game controllers

### External Connections

Common connections on system units;

- Power connector
- USB ports
- Audio jacks
- Ethernet port
- HDMI port
- VGA port
- DisplayPort
- DVI port
- PCI/PCIe expansion slots
- SATA ports
- Memory slots
- CMOS battery

Older connectors;

- PS/2 ports
- Parallel port
- Serial port
- SCSI port
- IDE ports
- Floppy drive connector
- AT power connector

New connectors;

- Thunderbolt 3 port
- USB-C port
- M.2 slot
- DisplayPort 1.4
- RJ45 2.5GbE/5GbE Ethernet port
- HDMI 2.1
- Wi-Fi antennas

### Types of Computers

1. Personal computers(PCs): These are computers designed for personal use by individuals. Examples include desktops, laptops, tablets, and all-in-one computers.
2. Workstations: These are high-performance computers designed for specialized tasks like video editing, 3D modeling, and scientific simulations. Examples include HP Z Workstations, Dell Precision Workstations, and Apple Mac Pro.
3. Servers: These are computers that provide services to other computers or devices on a network. Examples include web servers, file servers, and email servers. Some popular server brands include Dell, HP, and Lenovo.
4. Mainframes: These are large, powerful computers designed for processing massive amounts of data and running critical applications. Examples include IBM System z mainframes and Unisys ClearPath systems.
5. Supercomputers: These are the fastest and most powerful computers in the world, used for complex scientific simulations and data analysis. Examples include Summit and Sierra, two of the world's most powerful supercomputers.
6. Embedded computers: These are computers that are built into other devices, such as cars, appliances, or industrial equipment. Examples include the Raspberry Pi, Arduino boards, and Intel NUCs.
7. Gaming computers: These are computers designed for playing video games, often with high-end graphics and processing power. Examples include Alienware, ASUS ROG, and MSI Gaming laptops and desktops.
8. Smartphones: These are mobile devices that have computing capabilities, internet connectivity, and other features like cameras and sensors. Examples include the Apple iPhone, Samsung Galaxy, and Google Pixel.
9. Wearable computers: These are computers that can be worn on the body, such as smartwatches, fitness trackers, and augmented reality glasses. Example include the Apple Watch, Fitbit, and Google Glass.

## CPUs

###

























<!--
## cooling pc - not complete

1. heat sink draws heat from components
2. fans blows heated air through and out of the system
3. fan speed can be controlled through firmware or software

## troubleshooting power supplies - not complete

1. die fast with burning smell, smoke or both
2. die slow cause intermittent problems

- test power supply with psu tester or multimeter.
- power supply designed overvoltage, if power supply going undervoltage overtime, maybe the system slow death, maybe the system going to automatic shutdown, reboot. need to change power supply.
- test power supply when connected to mobo using voltmeter. connect to any color and ground on the black cable.

## troubleshooting core components - not complete

- some CPU dont have GPU built in. AMD called the CPU with GPU is APU.
- if using CPU dont have GPU built in, the video connection at mobo will not work.
- start over if the system not working after building it.
- speaker to identify the system unit issue.
- clear cmos jumper pin to clear mobo settings.

- incorrectly installed CPU or RAM can make system unit look like dead.
- install core components and test before connect other things
- error in system setup can cause a dead PC, try clear cmos jumper
- windows offer memory diagnostic tools to help with potentially bad RAM
- only fan make noise, if the PC sound wrong, check the fan

## Introduction to Mass Storage

- Mass storage is devices for storing data.
- Types of mass storage is optical media, Hard disk drive(HDD), Solid state drive(SSD), etc.
- HDD:Sector, SSD:block, Optical media:track.
- Disk sector; a sector is a subdivision of a track on a magnetic disk or optical disk.
- SSD block; the smallest unit of an SSD is a page, which is composed of several memory cells, and is usually 4 KB in size. Several pages on the SSD are summarized to a block. A block is the smallest unit of access on a SSD. Currently, 128 pages are mostly combined into one block; therefore, a block contains 512 KB.
- Operating Systems see mass storage as Logical block addressing(LBA). Mass storage organized into LBA.
- Logical block addressing(LBA) is a common scheme used for specifying the location of blocks of data stored on computer storage devices, generally secondary storage systems such as hard disk drives. LBA is particularly simple linear addressing scheme; llocks are located by an integer index, with the first block being LBA 0, the second LBA 1, and so on.

- mass storage capacity?IEC values? kilo, mega, giga, tera, peta, exa. kibi, mebi, gibi, tebi, pebi, exbi
- sata pass one bit at a time
- sata vs parellel

https://unacademy.com/content/nda/study-material/computer/list-of-storage-devices/
https://en.wikipedia.org/wiki/Disk_sector
https://short-fact.com/what-is-an-ssd-block/

### HDD

- how HDD work?
- LBA language?ATA. PATA-old. SATA-now. e-sata?
- data connector, power connector.
- HDD use spinning platter to store data via magnetism and read write heads
- HDD come in 3.5, 2.5, 1.8
- advanced technology attachment protocol to communicate with hdd
- dominant ATA is called serial ATA

### SSD

- SSD, inside got electronic chip. SSD organized into pages in chip. in page got many block.
- data stored in blocks and pages
- ssd size,3.5", 2.5 inch SSD. m.2 ssd.
- ssd faster than hdd. sata 6Gbit/s. nvme drive(single notches) faster then m.2(2 notches) sata ssd.
- nvme and m.2 sata drive different port?
- some ssd use nvme protocol instead of sata for increased performance

### SCSI

- what scsi
- parellel ATA vs iscsi
- sas
- modern scsi standards, sas and iscsi
- sata+scsi?

### boot order

- uefi
- legacy
- what is boot order.
- boot order is defined in the cmos system setup

## Mass storage -->
