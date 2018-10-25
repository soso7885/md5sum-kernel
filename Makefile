obj-m   := md5sum.o
KDIR    := /users/phil.chang/workspace/Mstar/kernel/manifest/linaro
ccflags-y := -std=gnu99

modules:
	$(MAKE) -C $(KDIR) SUBDIRS=$(shell pwd) modules

clean:
	rm -f modules.order Module.symvers *.o *.ko
	rm -f .*.ko.cmd .*.mod.o.cmd .*.o.cmd
	rm -rf .tmp_versions
	rm -f *.mod.c
