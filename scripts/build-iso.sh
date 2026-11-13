#!/usr/bin/env bash
set -euo pipefail

# 1. Копируем стандартный минимальный профиль archiso прямо из системы
cp -r /usr/share/archiso/configs/baseline ./profile

# 2. (Опционально) Можно добавить свои пакеты в список
# echo "virtualbox-guest-utils" >> ./profile/packages.x86_64

# 3. Собираем ISO
mkdir -p out
mkarchiso -v -w ./work -o ./out ./profile

echo "[Kaming] Готово:"
ls -lh out/*.iso
