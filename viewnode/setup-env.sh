#!/usr/bin/env bash

set -e

cd /etc/sia

export SIA_DATA_DIR=/etc/sia

ORDINAL_ID=`echo -n $HOSTNAME | rev | cut -d "-" -f1 | rev`
WALLET_PASSWORD_ENVNAME="SIA_WALLET_PASSWORD_$ORDINAL_ID"
export SIA_WALLET_PASSWORD=`printf '%s' "${!WALLET_PASSWORD_ENVNAME}"`
API_PASSWORD_ENVNAME="SIA_API_PASSWORD_$ORDINAL_ID"
export SIA_API_PASSWORD=`printf '%s' "${!API_PASSWORD_ENVNAME}"`