# Pythonベースの軽量イメージ
FROM python:3.11-slim

# 作業ディレクトリ
WORKDIR /code

# パッケージインストール
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# アプリケーションコードをコピー
COPY . .

# ポート開放
EXPOSE 8000

# サーバ起動コマンド
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
