# Projeto Netflix Fiap - 69AOJ

## Resumo

helppoint-mysql:3306
helppoint-kafka:9092
helppoint-zipkin:9411
helppoint-discovery-server:8761
helppoint-gateway:9090
helppoint-configuration-server:9091

helppoint-product:8092
helppoint-web:8080
helppoint-client:8090
helppoint-salesman:8091

## Atualizando submodules

```
git submodule update --recursive --remote
```

---

## Build projetos

### Discovery Server

cd netflix-discovery-server

Build Project
mvn package

### Gateway

cd netflix-gateway

Build Project
mvn package

### User

cd netflix-user

Build Project
mvn package

---

## Deploy

Iniciando aplicações:

```
sudo docker-compose up -d --build
```

Parando aplicações:

```
sudo docker-compose down
```

Visualizando logs:

```
sudo docker-compose logs -f
```

---

## Iniciar Infra (kafka, zipkin e discovery)

Iniciando aplicações:

```
sudo docker-compose -f docker-compose-infra.yml up -d --build
```

Parando aplicações:

```
sudo docker-compose down
```





<!-- helppoint_kafka 9092
helppoint_zipkin 9411
helppoint_discovery_server 9091
helppoint_gateway 9090
helppoint_custom_net
helppoint_mysql 3306

names:
    helppoint-discovery-server 9091
    helpoint-gateway 9090
    helppoint-product 8092 -->