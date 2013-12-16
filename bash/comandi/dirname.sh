#!/bin/bash

a=/path-non-esistente/bozo/fake-file.txt

echo "basename di [/path-non-esistente/bozo/fake-file.txt]" = `basename $a`
echo "dirname  di [/path-non-esistente/bozo/fake-file.txt]" = `dirname $a`

