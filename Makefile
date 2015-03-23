#---------------------------------------------------------------------------------
.SUFFIXES:
#---------------------------------------------------------------------------------
TARGET 		:=  Launcher.dat
BUILD		:=	build
ARMIPS    	:=  armips

all: clean 
	mkdir $(BUILD)
	armips source/arm9_code.s
	armips source/arm9hax.s
	armips source/arm11hax.s
	armips source/rop.s
	cp $(BUILD)/rop.bin $(TARGET)

#---------------------------------------------------------------------------------
clean:
	@echo clean ...
	@rm -fr $(BUILD)
