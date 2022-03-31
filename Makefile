all: build flash

build:	
	./bazelisk.sh build --strip=never :example.elf --host_platform=@SSEB_platforms//atmega328p

flash: build
	avrdude -p $(MCU) -P $(PORT) -c arduino -U flash:w:bazel-bin/examples/uart/echo_multiple_bytes/example.elf -C ./bazel-Solida-Software-Embedded-Base/external/avr_tools/tools/avr/avrdude/avrdude.conf 

permissions:
	sudo chmod a+rw $(PORT)

clean:
	./bazelisk.sh clean --expunge

simavr: build
	simavr bazel-bin/project.elf -g -m atmega328p -f 16000000

rebuild: clean build

serial_port:
	cat /dev/ttyUSB0