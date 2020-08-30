make && sudo qemu-system-x86_64 -machine q35,kernel_irqchip=split,accel=kvm \
	-m 4G -smp cpus=1 -enable-kvm \
	-serial stdio \
	-device isa-debug-exit -device intel-iommu,intremap=on,caching-mode=on,device-iotlb=on \
	-cpu host \
	-kernel ./x86/vmx.flat
