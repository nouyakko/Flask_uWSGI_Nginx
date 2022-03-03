# 概要
[こちら](https://qiita.com/nouyakko/items/20b1ea23e0086bbe8ae3)のqiitaで作成したリポジトリです。  
ダウンロードは
```
git clone git@github.com:nouyakko/Flask_uWSGI_Nginx.git
```
です。
その後、
```
cd .\Flask_uWSGI_Nginx\
```
でフォルダに入って、
```
docker-compose up -d   
```
でコンテナを作ります。
```
docker-compose exec main bash
```
でコンテナに入った後は、
```
cd /workspace
uwsgi --ini uwsgi.ini
service nginx start
```
でuWSGIとNginxを起動します。  
後はブラウザで
```
http://127.0.0.1:8888
```
にアクセスすれば「Hello world Flask」が表示されます。
