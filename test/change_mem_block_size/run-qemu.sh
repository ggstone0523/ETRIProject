# run-qemu.sh
#!/bin/bash
qemu-system-x86_64 \
  -m 1024 \
  -kernel ./bzImage \
  -initrd ./initramfs.cpio.gz \
  -append "console=ttyS0 memblksizeorder=29" \
  -nographic
