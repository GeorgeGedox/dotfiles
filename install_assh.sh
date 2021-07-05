#!/usr/bin/env bash

_VERSION="v2.11.3"
_PLATFORM=""
_ARCH="amd64"

echo "Start platform detection.."
case $(uname -s) in

    "Darwin")
        _PLATFORM="darwin";
        ;;

    "Linux")
        _PLATFORM="linux";
        ;;
esac
echo "Found $_PLATFORM platform..";

if [ $(uname -m) != "x86_64" ]; then
    echo "Currently only 64bit systems are supported by this script.";
    exit 1;
fi

# TODO: Implement arch detection when darwin arm build is done, also find a cleaner way to do the install
echo "Download binary.."
curl -s -L -f -o /usr/local/bin/assh "https://github.com/moul/assh/releases/download/${_VERSION}/assh_${_PLATFORM}_${_ARCH}";
if [ 0 -eq $? ]; then
    chmod +x /usr/local/bin/assh;
    echo "Assh installed!";
    exit 0;
fi
