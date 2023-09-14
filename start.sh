#!/bin/bash

kubectl apply -f namespace.yml
kubectl config set-context --current --namespace=totp

kubectl create secret tls ip-proekt-certs --key certs/key.pem --cert certs/cert.pem
kubectl apply -f secrets/mysql.yml

kubectl apply -f pvc.yml
kubectl apply -f mysql.yml

kubectl apply -f php.yml

kubectl apply -f nginx.yml

kubectl apply -f ingress.yml