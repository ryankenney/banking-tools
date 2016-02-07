#!/bin/bash

INJECT_TRANSACTIONS_DELIMETERS='s/\([0-9]\{2\}\/[0-9]\{2\}\)/@@@END@@@\n@@@START@@@\n\1\n@@@AFTERDATE@@@/g'
NEWLINES_TO_TABS='1{x;d};${H;x;s/\n/\t/g;p};{H}'
TRANSACTION_BOUNDS_TO_NEWLINES='s/@@@END@@@\t@@@START@@@\t/\n/g'
SPLIT_VALUE_FROM_DESCRIPTION='s/@@@AFTERDATE@@@\t\([0-9\.,]\+\)\s\(.\+\)/\1\t\2/g'

sed $INJECT_TRANSACTIONS_DELIMETERS < /dev/stdin | sed $NEWLINES_TO_TABS | sed $TRANSACTION_BOUNDS_TO_NEWLINES | sed $SPLIT_VALUE_FROM_DESCRIPTION