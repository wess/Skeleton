
#!/usr/bin/env bash

define PSI_CONFIG <<EOF
{
  "psi-header.variables": [
    ["projectname", "$PROJECT"],
    ["author", "$AUTHOR"],
    ["authoremail", "$AUTHOR_EMAIL"],
    ["company", "$COMPANY"]
  ]
}
EOF

OUT_DIR="$(pwd)/.vscode/settings.json"

if [ ! -f $OUT_DIR ]; then
  echo "Creating initial VSCode settings" | status
  echo "$PSI_CONFIG" >> $OUT_DIR
fi
