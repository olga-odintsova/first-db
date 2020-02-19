# ./start-db.sh - запуск докера, запускать из дерриктории, в которой лежит этот файл
# запустить базу данных (пароль к базе - asd, --net - все порты выставить наружу, -d - работать в фоновом режиме)
sudo docker run -e POSTGRES_PASSWORD=asd --net=host -d --name my-postgres postgres 
