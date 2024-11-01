# OS

An educational project about creating an OS from scratch.
Based on "Writing a Simple Operating System - from Scratch" by Nick Blundell.

## Install

```bash
brew install qemu
```

```bash
brew install nasm
```

## Compile

Compile to asssembly

```bash
nasm boot_sect.asm -f bin -o boot_sect.bin
```

Verify assembly

```bash
xxd boot_sect.bin
```

## Run

```bash
qemu-system-i386 -fda boot_sect.bin -boot a
```
