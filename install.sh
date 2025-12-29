SKIPMOUNT=false

PROPFILE=true

POSTFSDATA=false

LATESTARTSERVICE=false

# Construct your own list here
REPLACE="
"

print_modname() {
  ui_print " "
  ui_print "======================================"
  ui_print "    Activa Blur en HOS3    "
  ui_print "     by @Tsukiinome        "
"======================================"
  ui_print " "
}


on_install() {
  ui_print "- Extracting module files"
  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
}

set_permissions() {
  set_perm_recursive $MODPATH 0 0 0755 0644

  # Here are some examples:
  # set_perm_recursive  $MODPATH/system/lib       0     0       0755      0644
  # set_perm  $MODPATH/system/bin/app_process32   0     2000    0755      u:object_r:zygote_exec:s0
  # set_perm  $MODPATH/system/bin/dex2oat         0     2000    0755      u:object_r:dex2oat_exec:s0
  # set_perm  $MODPATH/system/lib/libart.so       0     0       0644
}
