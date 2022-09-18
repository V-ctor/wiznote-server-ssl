#!/bin/bash

out_dir=../image/ssl_wiz/cert
country=RU
city=Yekaterinburg
organization="SSLWizExample Tech."
domain=wizexample.com

rm -rf $out_dir
mkdir $out_dir

openssl req -new -newkey rsa:2048 -days 3650 -nodes -x509 -out $out_dir/wiz-ca.crt -keyout $out_dir/wiz-ca.key -subj "/C=${country}/ST=${city}/L=${city}/O=${organization}/OU=Web Secutiry/CN=${domain}"
openssl genrsa -out $out_dir/wiz-server.key 2048
openssl req -new -key $out_dir/wiz-server.key -out $out_dir/wiz-server.csr -config openssl.cnf
openssl x509 -req -days 3650 -in $out_dir/wiz-server.csr -CA $out_dir/wiz-ca.crt -CAkey $out_dir/wiz-ca.key -CAcreateserial -extensions v3_req -extfile openssl.cnf -out $out_dir/wiz-server.crt
openssl x509 -inform PEM -outform DER -in $out_dir/wiz-server.crt -out $out_dir/wiz-server.der.crt
