# Notes

Tweaks that have not been automated yet.

### Sudo with Touch ID

Add `auth sufficient pam_tid.so` after the header line in **/etc/pam.d/sudo**.

### TinkerTool

This application is not available on Homebrew. It can be downloaded from this page: https://www.bresink.com/osx/0TinkerTool/download.php.

### Trackpad: enable three fingers drag

- System Preferences... > Accessibility > Pointer Control > Trackpad Options...
- Check **Enable dragging** with **three finger drag**

### QuickLook plugins permissions

Currently needed for: [QLStephen](https://github.com/whomwah/qlstephen#permissions-quarantine), QLMarkDown.

```bash
xattr -cr ~/Library/QuickLook/QLStephen.qlgenerator
xattr -cr ~/Library/QuickLook/QLMarkDown.qlgenerator
qlmanage -r
qlmanage -r cache
killall Finder
```

