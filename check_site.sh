#!/bin/bash

SITES="https://google.com https://yandex.ru https://github.com https://mail.ru https://oracle.com"

for URL in $SITES; do
    RESPONSE=$(curl -sL -o /dev/null -w "%{http_code}" $URL)

    if [ "$RESPONSE" -eq 200 ]; then
	echo "Сайт $URL работает отлично! Код: $RESPONSE"
    else
        echo "ВНИМАНИЕ! Сайт $URL недоступен. Код ошибки: $RESPONSE"
    fi
done	 				 
