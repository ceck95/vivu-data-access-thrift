# @Author: Tran Van Nhut <nhutdev>
# @Date:   2017-02-10T09:36:59+07:00
# @Email:  tranvannhut4495@gmail.com
# @Last modified by:   nhutdev
# @Last modified time: 2017-02-10T11:05:50+07:00



#! /bin/bash

for f in `find *.thrift`; do
   thrift -r --gen js:node $f
   thrift -r --gen php $f
done

rm -r ../vivu-common-api/gen-nodejs
cp -rf gen-nodejs ../vivu-common-api/gen-nodejs
