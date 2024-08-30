#!/usr/bin/env python
import argparse
import mmap
import numpy
import os
import struct


def parse_args():
    parser = argparse.ArgumentParser()
    parser.add_argument('--path', default='resource0')
    parser.add_argument('--offset', type=int_or_hex, default=0)
    parser.add_argument('--value', type=int_or_hex_or_string, default=None,
                        nargs='+')
    parser.add_argument('--n', type=int, default=1)
    return parser.parse_args()


def int_or_hex(value):
    if value.startswith('0x'):
        return int(value, 16)

    return int(value)


def int_or_hex_or_string(value):
    if value.startswith('0x') or value.isdigit():
        return int_or_hex(value)

    return struct.pack('I', value.encode('utf-8')[:4])


def main():
    args = parse_args()
    fd = os.open(args.path, os.O_RDWR | os.O_SYNC)
    mm = mmap.mmap(fd, 0, mmap.MAP_SHARED, mmap.PROT_READ | mmap.PROT_WRITE)
    os.close(fd)
    # workaround for nasty bug in python
    # see https://github.com/python/cpython/issues/87297
    mv = numpy.frombuffer(mm, dtype=numpy.uint32)

    for _ in range(args.n):
        if args.value is not None:
            # write if a value was passed
            for val in args.value:
                mv[args.offset // 4] = val
        else:
            print('0x{:08x}'.format(mv[args.offset // 4]))


if __name__ == '__main__':
    main()
