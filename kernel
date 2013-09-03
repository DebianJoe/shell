#!/bin/sh

get_KernelList()
{
        for v in /boot/vmlinuz-*; do
                Kernel="$(basename $v | sed s/vmlinuz-//)"
                if [ "${Kernel}" != "${ACTUAL}" ]; then
                        meta_package="$(echo $(grep-available \
                                -F Depends linux-image-${Kernel} \
                                -s Package) | cut -d: -f 2)"

                        case $meta_package in
                                *$Kernel* ) # this is an old style kernel
                                        KernelList="${KernelList} ${Kernel}"
                                        continue
                                        ;;
                        esac
                        [ -n "${meta_package}" ] && \
                                meta_status="$(dpkg-query  -f='${STATUS}\n' \
                                        -W  ${meta_package}|\
                                        cut -d ' ' -f 3)" || \
                                meta_status="not-installed"

                        if [ "${meta_status}" = "not-installed" ]; then
                                [ -z "${KernelList}" ] && KernelList="${Kernel}" ||\
                                KernelList="${KernelList} ${Kernel}"
                                # echo KernelList="$KernelList"
                        else
                                :
                        fi
                fi
        done
}
get_KernelList

for kernel in $KernelList; do
    echo $kernel
done
