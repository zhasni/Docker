ssh-keygen -C "zhasni" -t rsa

cp ~/.ssh/id_rsa.pub ./

cat id_rsa.pub > /nfs/zfs-student-4/users/2014/zhasni/.ssh/known_hosts

docker build -t sshd .
docker run -td -p 42 --name mission02 -h m02-sshd sshd
docker commit mission02 sshd
echo '\n\n'$(boot2docker ip):$(docker port mission02 42 | cut -d : -f 2)

ssh zhasni@$(boot2docker ip) -p $(docker port mission02 42 | cut -d : -f 2)

# ssh zhasni@192.168.59.103 -p 32771

