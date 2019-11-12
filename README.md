# Projeto Netflix Fiap - 69AOJ

## Resumo

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