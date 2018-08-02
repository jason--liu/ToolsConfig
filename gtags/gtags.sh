#!/bin/bash
rm .files2gtag
for f in AccessorySDK mDNSResponder Platform PlatformPOSIX Sources Support
do 
    find $f -iregex '.*\(c\|h\|cpp\)' >> .files2gtag
done
gtags -v -f .files2gtag
