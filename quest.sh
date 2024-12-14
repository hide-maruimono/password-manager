#!/bin/bash
#user interface

    echo "パスワードマネージャーへようこそ!"
    echo "次の選択肢から入力してください(Add Password/Get Password/Exit)："
    read option

while [ "$option" != "Exit" ]; do
# Add Password が入力された場合
    if [ "$option" == "Add Password" ]; then
        echo "サービス名を入力してください："
        read service

        echo "ユーザー名を入力してください："
        read user

        echo "パスワードを入力してください："
        read password

        echo "$service:$user:$password" >> list.txt
        echo "パスワードの追加は成功しました。"
        echo "次の選択肢から入力してください(Add Password/Get Password/Exit)："
        read option

# Get Password が入力された場合
    elif [ "$option" == "Get Password" ]; then
        echo "サービス名を入力してください："
        read service

## サービス名が保存されていた場合
        if grep -q "$service" "$list.txt" ; then
            echo "サービス名：$service"
            echo "ユーザー名：$user"
            echo "パスワード：$password"


## サービス名が保存されていなかった場合
        else
            echo "そのサービスは登録されていません。"
        fi

# Exit が入力された場合
    elif [ "$option" == "Exit" ]; then
        echo "Thank you!"

## プログラムが終了
        break

# Add Password/Get Password/Exit 以外が入力された場合
    else 
        echo "入力が間違えています。Add Password/Get Password/Exit から入力してください。"
    fi
done
