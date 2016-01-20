echo "<!DOCTYPE html><html><head><title></title></head><body><h1>Hello World</h1></br><p>By zhasni</p></body></html>" > index.html

docker build -t="hello/world:v42" .
docker run -td -p 80 --name mission01 -h 42born2code hello/world:v42
docker commit mission01 hello/world:v42

echo '\n\n'$(boot2docker ip):$(docker port mission01 80 | cut -d : -f 2)

docker exec -it mission01 /bin/bash service nginx start

open http://$(boot2docker ip):$(docker port mission01 80 | cut -d : -f 2)

docker exec -it mission01 /bin/bash
