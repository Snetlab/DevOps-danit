
#!/bin/bash

number=$((RANDOM % 100 + 1))

for ((i=1; i<=5; i++)); do
    read -r -p "Спроба $i/5. Введіть число від 1 до 100: " guess

    if ! [[ "$guess" =~ ^[0-9]+$ ]] || ((10#$guess < 1 || 10#$guess > 100)); then
        echo "Введіть ціле число від 1 до 100."
        continue
    fi

    if ((10#$guess == number)); then
        echo "Вітаємо! Ви вгадали правильне число!"
        exit 0
    elif ((10#$guess > number)); then
        echo "Занадто високо!"
    else
        echo "Занадто низько!"
    fi
done

echo "Вибачте, у вас закінчилися спроби. Правильним числом було $number"
