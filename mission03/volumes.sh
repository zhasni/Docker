docker build -t volumes .
docker run -v /Users/Shared:/test_mission03 -td -p 42 --name mission03 -h m03-MacOS_X volumes
docker commit mission03 volumes
echo '\n\n'$(boot2docker ip):$(docker port mission03 42 | cut -d : -f 2)

docker exec -it mission03 /bin/bash
