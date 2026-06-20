1. 로컬에서 도커 이미지 빌드 및 테스트
# 1. 도커 이미지 빌드 (이미지 이름: vibe-app, 태그: v1)
docker build -t vibe-app:v1 .

# 2. 빌드된 이미지 확인
docker images

# 3. 컨테이너 실행 (로컬 8000 포트와 컨테이너 8000 포트 연결)
docker run -d -p 8000:8000 --name my-vibe-container vibe-app:v1


2. 도커 이미지 배포하기 (Docker Hub 이용)
# 1. Docker Hub 로그인 (계정이 필요합니다)
docker login

# 2. 기존 이미지에 Docker Hub ID를 포함한 태그 생성
# 형식: docker tag [기존이미지:태그] [Docker_Hub_ID]/[이미지명:태그]
docker tag vibe-app:v1 yourdockerhubid/vibe-app:v1

# 3. Docker Hub로 이미지 업로드(Push)
docker push yourdockerhubid/vibe-app:v1

3. 클라우드나 다른 서버에서 배포(실행)할 때
docker run -d -p 80:8000 yourdockerhubid/vibe-app:v1
