#!/bin/ash

cp /root/smb.conf /etc/samba/smb.conf

echo "   interfaces = ${INTERFACES}" >> /etc/samba/smb.conf

if [[ "${NETBIOS_NAME}" ]]; then
    echo "   netbios name = ${NETBIOS_NAME}" >> /etc/samba/smb.conf
fi

if [[ "${NETBIOS_ALIASES}" ]]; then
    echo "   netbios aliases = ${NETBIOS_ALIASES}" >> /etc/samba/smb.conf
fi

if [[ "${WINS_SERVER}" ]]; then
    echo "   wins server = ${WINS_SERVER}" >> /etc/samba/smb.conf
fi

echo "" >> /etc/samba/smb.conf

exec $@
