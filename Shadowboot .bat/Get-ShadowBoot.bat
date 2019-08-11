copy asm\xboxrom_update.bin xboxromw2d.bin

bin\xenon-as.exe 	asm\ShadowBoot.S 	-o asm\ShadowBoot.elf
bin\xenon-objcopy.exe 	asm\ShadowBoot.elf 	-O binary asm\ShadowBoot.rglp
bin\ShadowBoot.exe 	xboxromw2d.bin 		asm\ShadowBoot.rglp

DEL "asm\ShadowBoot.elf"

DEL "sd.bin"
DEL "finished sd.bin"
DEL "signed sd.bin"