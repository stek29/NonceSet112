#!/bin/sh
make clean
rm -f NonceSet1112.ipa

make
cp .theos/obj/debug/NonceSet1112.app/NonceSet1112 Payload/NonceSet1112.app/

zip -0r NonceSet1112.ipa Payload

