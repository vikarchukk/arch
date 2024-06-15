[ unix ]
├─[ синтаксис ]
│ ├─ . поточна папка / .. папка назад / * все
│ ├─ /home/user = ~, $HOME
│ ├─ command | grep текст - виводить тільки ці рядки де є вказаний текст
│ └─ --help - прапор для виводу інформації про команду
├─ cd /... - для переходу між папками
├─ mkdir /папка - створює папку
├─ rm /... - видаляє
├─ sudo ... - виконання команди від root прав
├─ mv /файл /... - перекинути файл в іншу папку або переіминувати його
├─ cp /файл /... - скопіювати файл в іншу папку або скопіювати і переіминувати
├─ ls | /папка - виводить список файлів що є в папці
│     ├─ -a - показує також скриті файли (.file)
│     └─ -l - виводить всю інформацію про файли
├─ cat | /файл - виводить вміст файлу
│      └─ >> записати щось в кінець файлу (enter -> C^)
├─ wget | https://... - скачати щось з інтернету
│       └─ --directory-prefix=/повний_шлях - показує куди скачати файл
├─ echo 'текст' - виводить просто текст
│  └─ "$..." - для вивидиня якоїсь зміної
├─ sleep 1 - пауза на 1 секунду
├─ pwd - виводить шлях до поточної папки
├─ whereis файл - шукає файл тільки в /usr/
├─ top - програма моніторингу пк
└─ clear - очищає консоль

[ bash ]
├─ #!/bin/bash - перший рядок
├─ # ... - коментар
├─ bash name_script.sh - виконати скрипт
├─[ параметри ]
│ ├─ parameter_name=значення - створення парамитра з якимось значенням
│ ├─ $( ... ) - получання значення з котрогось коду
│ ├─ $? - код виходу з останьої команди
│ ├─ bash name_script.sh parameter_1 parameter_2 ...
│ │  │    └─ $0          └─ $1       └─ $2       └─ $...
│ │  ├─ додаткові парамитри - [ $HOME - деректорія користувача (~) ] ... 
│ │  └─ parameter_name=$1 - приямає параметр який переданий при запуску скрипта
│ ├─ read parameter_name - дась вести параметр корестовачеві 
│ └─ $parameter_name - для того щоб використувати параметр
├─[ умови ]
│ ├─[ булеві значення ]
│ │ ├─ true - вірно
│ │ └─ false - хиба
│ ├─[ знаки рівності ]
│ │ ├─ -eq - ==
│ │ ├─ -ne - !=
│ │ ├─ -lt - <
│ │ ├─ -le - <=
│ │ ├─ -gt - >
│ │ └─ -ge - >=
│ ├─[ логічні оператори ]
│ │ ├─ || - або
│ │ └─ && - і
│ └─[ перевірка на наявність файлу чи папки ]
│   ├─ -f імя_файлу - провірка на найвність файлу
│   ├─ -d імя_папки - провірка на найвність папки
│   └─ -e імя_файлу_або_папки - провірка на найвність файлу або папки
├─[ конструкції ]
│ ├─[ умови ]
│ │ ├─┐ if [[ ... ]] || [[ ... ]]
│ │ │ │ then ...
│ │ │ │ elif [[ ... ]] || [[ ... ]]
│ │ │ │ then ...
│ │ │ │ else ...
│ │ │ └ if
│ │ └─┐ case $... in ...) ....;;
│ │   │ ...) ...;;
│ │   │ *) ...;;
│ │   └ esac
│ └─[ цикли ]
│   ├─┐ for i in {1..9}
│   │ │ do ...
│   │ └ done
│   ├─┐ for ((i = 0; i < 10; i++))
│   │ │ do ...
│   │ └ done
│   ├─┐ while [[ ... ]]
│   │ │ do ...
│   │ └ done
│   ├─ break - вийти з циклу
│   └─ continue - перйти до наступного циклу
├─[ матиматичні операції ]
│ ├─ let " ... "
│ └─ $(( ... ))
├─ trap " ... " сигнал - виконається команда коли надійде очікуваний сегнал
│  └─ trap -- сигнал - перестає очікувати сегнал
├─[ функція ]
│ └─┐ function ... { echo "$..."
│   │ ...
│   │ return ... # повртає код виходу функції 0 - 255
│   └ }








