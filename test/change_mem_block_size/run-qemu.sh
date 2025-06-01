# run-qemu.sh
#!/bin/bash
qemu-system-x86_64 \
  -machine q35,accel=tcg \
  -smp 2 \
  -m 1G,slots=4,maxmem=4G \
  -object memory-backend-ram,id=ram1,size=1G \
  -device pc-dimm,id=dimm1,memdev=ram1 \
  -object memory-backend-ram,id=ram2,size=2G \
  -device pc-dimm,id=dimm2,memdev=ram2 \
  -kernel ./bzImage \
  -initrd ./initramfs.cpio.gz \
  -append "console=ttyS0 memblksize=512M root=/dev/ram0 rw" \
  -nographic
