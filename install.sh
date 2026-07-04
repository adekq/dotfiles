#!/bin/bash

# Target the active shell configuration file
TARGET_RC="$HOME/.bashrc"
if [ -f "$HOME/.zshrc" ]; then
    TARGET_RC="$HOME/.zshrc"
fi

# Override default GitHub tokens if AI_PAT_TOKEN exists
if [ -n "$AI_PAT_TOKEN" ]; then
    echo "" >> "$TARGET_RC"
    echo "# Override default Codespace token with AI_PAT_TOKEN" >> "$TARGET_RC"
    echo "export GITHUB_TOKEN=\"\$AI_PAT_TOKEN\"" >> "$TARGET_RC"
    echo "export GH_TOKEN=\"\$AI_PAT_TOKEN\"" >> "$TARGET_RC"
fi
