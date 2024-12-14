#!/bin/bash
#user interface
echo "パスワードマネージャーへようこそ!"
echo "次の選択肢から入力してください(Add Password/Get Password/Exit)："
read option

echo "サービス名を入力してください："
read service

echo "ユーザー名を入力してください："
read user

echo "パスワードを入力してください："
read password

# Add Password が入力された場合
if [ "$option" == "Add Password" ]; then
echo "サービス名を入力してください："
read service

echo "ユーザー名を入力してください："
read user

echo "パスワードを入力してください："
read password

echo "パスワードの追加は成功しました。"

# Get Password が入力された場合
elif [ "$option" == "Get Password" ]; then
echo "サービス名を入力してください："
read service
## サービス名が保存されていなかった場合

echo "そのサービスは登録されていません。"

## サービス名が保存されていた場合
echo "サービス名：hoge"
echo "ユーザー名：fuga"
echo "パスワード：piyo"

# Add Password/Get Password/Exit 以外が入力された場合

# Exit が入力された場合
elif [ "$option" == "Exit" ]; then
echo "Thank you!"
## プログラムが終了
echo "$service:$user:$password" >> list.txt