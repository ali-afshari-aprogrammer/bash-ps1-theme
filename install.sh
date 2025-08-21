#!/bin/bash
echo "Which theme do you want to install? (light/dark)"
read theme

if [[ "$theme" == "light" ]]; then
    cp themes/light.sh ~/.bash_ps1_theme.sh
elif [[ "$theme" == "dark" ]]; then
    cp themes/dark.sh ~/.bash_ps1_theme.sh
else
    echo "Invalid choice"
    exit 1
fi

# اضافه کردن به bashrc اگر قبلاً اضافه نشده
grep -qxF "source ~/.bash_ps1_theme.sh" ~/.bashrc || echo "source ~/.bash_ps1_theme.sh" >> ~/.bashrc

echo "Theme installed! Restart your terminal."
