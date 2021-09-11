Unoffical Reverse F8lure docker.

Usage (Docker)
docker build . -t reversef8lure
docker run -env TID=<secret-id> reversef8lure

Usage (Docker-Compose)  - RECCOMENDED 
edit tid.env and put your test id
docker-compose up

OR 

If you wish not to attach to the console.

docker-compose up -d