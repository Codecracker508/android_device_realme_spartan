echo 'Hello! we need to clone stuffs needed for your device, please wait tll process complete'

echo 'Cloning Device Common Tree'
git clone https://github.com/provasish/android_device_oneplus_sm8250-common.git -b 16 device/oneplus/sm8250-common

echo 'Cloning Hardware Dolby Tree'
git clone https://github.com/provasish/android_hardware_dolby.git -b 16 hardware/dolby

echo 'Cloning Hardware Oplus Tree'
git clone https://github.com/provasish/hardware_oplus.git -b 16 hardware/oplus

echo 'Cloning Kernel Tree'
git clone https://github.com/provasish/android_kernel_oneplus_sm8250.git --depth=1 kernel/oneplus/sm8250

echo 'Cloning Vendor Tree'
git clone https://github.com/provasish/proprietary_vendor_oneplus_spartan.git vendor/oneplus/spartan

echo 'Cloning Vendor Common Tree'
git clone https://github.com/provasish/proprietary_vendor_oneplus_sm8250-common.git -b 16 vendor/oneplus/sm8250-common
