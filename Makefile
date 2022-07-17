# 起動
up:
	docker-compose up -d

# 停止
stop:
	docker-compose stop

# 削除
down:
	docker-compose down

# ボリュームも削除
destroy:
	docker-compose down --volumes

# コンテナに入る
CONTAINER=web
bash:
	docker-compose exec ${CONTAINER} bash

# IMAGEを除いて未使用なものを削除
prune:
	docker system prune --volumes -f