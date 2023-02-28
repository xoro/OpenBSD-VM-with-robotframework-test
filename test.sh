#!/bin/sh

# Build OpenBSD VM
if ! cd OpenBSD-VM-at-AppleSilicon
then
    printf "%b %bERROR:%b Stepping into the VM build directory was not possible.\n" "$(date "+%Y-%m-%d %H:%M:%S")" "${fmt_red_bold}" "${fmt_end}"
    exit 1
fi

# Start OpenBSD VM
if ! vmrun -T fusion start output-openbsd-packer/packer-openbsd-packer.vmx nogui
then
    printf "%b %bERROR:%b Starting the VM was not possible.\n" "$(date "+%Y-%m-%d %H:%M:%S")" "${fmt_red_bold}" "${fmt_end}"
    exit 2
fi

# Wait till VM is pingable
# Check if VM is sshable
# Install robotframework on VM
# SCP the robotframework script to VM
# Run robotframework test on VM

exit 0
