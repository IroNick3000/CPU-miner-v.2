#!/bin/bash


# Настройки

WAL=4CY4Cibhs2NQhjXx7DmcF3jJHso96Dxtih # кошель

WKN=26_3700x # имя работника

PW=x # пароль


# Интенсивность

COUNT=4 # кол-во экз

THR=4 # потоки


# Команда для запуска

CMD="sudo java -jar -Xmx8G jtminer-0.8-Stratum-jar-with-dependencies.jar -u ${WAL}.${WKN} -h tht.mine-n-krush.org -p $PW -P 5001 -t $THR"

for i in $(seq 1 $COUNT); do

    SESSION="miner-$i"

    echo "[+] Запускаю screen-сессию $SESSION"

    screen -dmS "$SESSION" bash -c "$CMD"

done

echo "[✓] Все $COUNT screen-сессий запущены."
