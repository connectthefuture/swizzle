#!/bin/bash

TARGET_DIR="${HOME}/.lightpaper/Themes/"
INSTALL_FILE="Swizzle.txt"
SUCCESS_MSG="The Swizzle Markdown editor theme was successfully installed.  You can select this theme in LightPaper Preferences > Styles > Theme (MD tab)."

if [ -d "$TARGET_DIR" ]; then
  cp "$INSTALL_FILE" "$TARGET_DIR"
  echo "$SUCCESS_MSG"
else
  echo "Creating the install directory path..."
  mkdir -p "$TARGET_DIR"
  echo "Done. Installing '$INSTALL_FILE'..."
  cp "$INSTALL_FILE" "$TARGET_DIR"
  echo "$SUCCESS_MSG"
fi
exit 0