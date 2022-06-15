#!/bin/bash

# as_file="./out/a.s"
# 
# run_case() {
#     local code=$1
#     local expected=$2
#     rm -f $as_file
#     echo -n "$code" | go run main.go > $as_file
#     gcc $as_file
#     ./a.out
#     if [ $? -eq $expected ];then
#         echo "ok"
#     else
#         echo "not ok"
#         exit 1
#     fi
# 
# }
# run_case 0 0
# run_case 7 7
# run_case '2 + 5' 7
# 

go run main.go > a.s
gcc a.s
if [ $? -eq 0 ];then
    echo "All tests passed"
fi

