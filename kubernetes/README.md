##  contendo configs de Dominio e Registro
kubectl create configmap config --from-file=/home/thiago/Documentos/GitHub/docker-dns-bind9/kubernetes/db.cloudth.com --namespace dns

## Subindo Servidor DNS
kubectl apply -f ./kubernetes/