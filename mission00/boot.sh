boot2docker init
boot2docker start

boot2docker shellinit > test_file.sh
chmod 777 test_file.sh

eval "$(boot2docker shellinit)"

echo "\n"
echo "					boot2docker status : "
echo "\n"
boot2docker status
echo "\n"
echo "					docker version : "
echo "\n"
docker version
echo "\n"
echo "					docker info : "
echo "\n"
docker info
echo "\n"
echo "					docker images : "
echo "\n"
docker images
echo "\n"
echo "	launch this command in your shell to setup your env : "
echo "\n"
echo "eval \"\$(boot2docker shellinit)\""
echo "\n"
echo "	or setup manually your env : "
echo "\n"
cat test_file.sh
