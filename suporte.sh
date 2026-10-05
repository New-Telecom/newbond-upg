#!/bin/sh
# NewBond — acrescenta a chave pública SSH do suporte ao root (1.º teste real).
# Pedido do dono a 2026-10-04. Para a tirar depois: apagar esta linha de /root/.ssh/authorized_keys.
set -e
mkdir -p /root/.ssh && chmod 700 /root/.ssh
CHAVE='ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDhuhU+3DHR34gzcknOqxTRLm07zYyWCFzhUV5GWdWyL'
touch /root/.ssh/authorized_keys && chmod 600 /root/.ssh/authorized_keys
grep -qF "$CHAVE" /root/.ssh/authorized_keys || echo "$CHAVE" >> /root/.ssh/authorized_keys
echo "Chave do suporte instalada. O SSH aceita-a a partir de agora."
