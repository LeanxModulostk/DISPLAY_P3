#!/system/bin/sh
MODDIR ${0%/*}

# @modulostk [telegram]
#####################################
#Pixel Format [RGBA_8888]
resetprop -n ro.surface_flinger.default_composition_pixel_format RGBA_8888
resetprop -n ro.surface_flinger.wcg_composition_pixel_format RGBA_8888
resetprop -n ro.minui.pixel_format RGBA_8888
#####################################
resetprop -n vendor.debug.egl.changepixelformat RGBA_8888
resetprop -n ro.graphics.pixelformat RGBA_8888
resetprop -n ro.minui.pixel_format RGBA_8888
su -c "settings put system ro.graphics.pixelformat RGBA_8888"

#Color Mode [DISPLAY_P3]
resetprop -n persist.sys.sf.color_mode 9
##values:
#INVALID -1
#DEFAULT 0
#BT601_625 1
#BT601_625_UNADJUSTED 2
#BT601_525 3
#BT601_525_UNADJUSTED 4
#BT709 5
#DCI_P3 6
#sRGB 7
#ADOBE_RGB 8
#DISPLAY_P3 9
#resetprop -n persist.sys.sf.color_format

#DataSpace [DISPLAY_P3]
resetprop -n ro.surface_flinger.default_composition_dataspace DISPLAY_P3
resetprop -n ro.surface_flinger.wcg_composition_dataspace DISPLAY_P3

###################
#Color Native Mode Off
resetprop -n persist.sys.sf.native_mode 0
#Saturation Boost
resetprop -n persist.sys.sf.color_saturation 1.1
#
resetprop -n debug.sf.treat_170m_as_sRGB 0

## By @LeanHijosdesusMadres
