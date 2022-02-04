## Поиск log4j библиотек

## Описание работы
Плейбук по списку хостов раскидывает скрипт в /tmp/Log4Check.sh 
Скрипт ищет в /home/panbet/ папку webapps, в которой ожидается
наличие *.war | *.jar
И собственно с помощью 
```
jar tf $j | grep log4j | grep .jar | cut -d '/' -f 3
```
вытаскивает сами log4j библиотеки

## Запуск ansible-playbook и дальнейшая обработка
```
ansible-playbook -i <inventory-file> log4j.yml | tee <out-file>

cat tmp | grep 'results' | cut -d: -f 2,3 | sed -e 's/"//g' | sed 's/\\r/ /g' | sed 's/\\n/ /g'                                                                       

 affiliateservice.jar 1.5.1  log4j-to-slf4j-2.12.1.jar log4j-api-2.12.1.jar
 ahservice.war 3.0.908  log4j-over-slf4j-1.7.32.jar
 
 allbestbetsservice.jar 1.73#DEV  log4j-to-slf4j-2.13.3.jar log4j-api-2.13.3.jar
 antifraud.war 0.45  log4j-api-2.13.3.jar log4j-to-slf4j-2.13.3.jar
 antifraud.war 0.45  log4j-api-2.13.3.jar log4j-to-slf4j-2.13.3.jar
 
 kd-standalone-publishers.jar 3.0.5  log4j-over-slf4j-1.7.25.jar

```