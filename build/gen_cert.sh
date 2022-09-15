#!/bin/bash

out_dir=../image/ssl_wiz/cert
country=RU
city=Yekaterinburg
organization="SSLWizExample Tech."
domain=wizexample.com

rm -rf $out_dir
mkdir $out_dir

openssl req -new -newkey rsa:2048 -sha256 -nodes -out $out_dir/wiz-server.csr -keyout $out_dir/wiz-server.key -subj "/C=${country}/ST=${city}/L=${city}/O=${organization}/OU=Web Secutiry/CN=${domain}"

openssl x509 -req -days 30 -in $out_dir/wiz-server.csr -signkey $out_dir/wiz-server.key -out $out_dir/wiz-server.crt
