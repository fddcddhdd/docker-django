# Docker + Django 開発環境

このプロジェクトは、Docker を使って Django + PostgreSQL の開発環境を構築するためのテンプレートです。

---

## 📦 セットアップ手順

### 1. リポジトリをクローン

```
git clone https://github.com/fddcddhdd/docker-django.git
cd docker-django
```

---

### 2. `.env` ファイルを作成

プロジェクト直下に `.env` ファイルを作成し、以下のように記述してください：

```
DB_NAME=mydb
DB_USER=user
DB_PASSWORD=password
DB_HOST=db
DB_PORT=5432
```

---

### 3. Docker イメージをビルドして起動

```
docker-compose up --build
```

---

### 4. マイグレーションを実行

```
docker-compose run web python manage.py migrate
```

---

### 5. 管理ユーザーを作成（必要に応じて）

```
docker-compose run web python manage.py createsuperuser
```

---

### 6. ブラウザでアクセス

http://localhost:8000 にアクセスして Django が起動しているか確認してください。

---

## 📁 プロジェクト構成

```
docker-django/
├── docker-compose.yml      # Dockerサービス定義
├── Dockerfile              # DjangoアプリのDocker設定
├── requirements.txt        # Pythonパッケージ
├── .env                    # 環境変数（git管理しない）
└── myproject/              # Djangoプロジェクト本体
```

---

## 📝 備考

- PostgreSQL のデータは Docker volume に永続化されます。
- Django の設定ファイル `settings.py` では `.env` の内容を参照して DB 接続しています。
- コンテナを停止するには：

```
docker-compose down
```

---

## 🐳 前提条件

- Docker
- Docker Compose
- Git

---

## 🧑‍💻 作者

- GitHub: https://github.com/fddcddhdd
