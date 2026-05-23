## OrangeFox for TECNO CAMON 30S (`TECNO-CLA5`)

This tree builds OrangeFox/TWRP for the TECNO CAMON 30S (`CLA5`).

## Install

This device uses a `vendor_boot`-style recovery layout.

### Requirements

- Unlocked bootloader
- `fastboot` working on your PC

### Check build number and prepare stock images

Before flashing anything, check the exact build number in Android:

```text
Settings > My Phone > Version Info > Build number
```

Download the matching stock ROM for that exact build. From the ROM package, extract:

- `vbmeta.img`
- `vendor_boot.img`
- `boot.img`

Do not mix images from a different firmware or build version!!!

### Flash OrangeFox

Reboot to bootloader:

```bash
adb reboot bootloader
```

Disable Android verification first:

```bash
fastboot --disable-verity --disable-verification flash vbmeta vbmeta.img
```

Check the current slot (`a` or `b`):

```bash
fastboot getvar current-slot
```

```bash
fastboot flash vendor_boot_<slot> vendor_boot.img
fastboot reboot recovery
```

### First boot notes

- On first boot, OrangeFox should load normally.
- If `/data` or `/sdcard` is unreadable and you intentionally want a clean setup, you may need to format `data` from OrangeFox.
- After formatting `data`, boot Android once and finish setup without a lock screen first.
- Then reboot back to OrangeFox and verify that `/sdcard` and `/data` are visible.
