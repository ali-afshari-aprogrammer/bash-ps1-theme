#!/bin/bash
sed -i '/source ~\/.bash_ps1_theme.sh/d' ~/.bashrc
rm -f ~/.bash_ps1_theme.sh
echo "Theme removed! Restart your terminal."
