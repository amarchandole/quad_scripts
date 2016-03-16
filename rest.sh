
#***********************************************************
echo " Making directory REST_Home..."
mkdir /home/quad/rest_home


#***********************************************************
echo " Making sub-directory for REST_Server..."
mkdir /home/quad/rest_home/rest_server
cp ./REST_Server.py /home/quad/rest_home/REST_Server


#***********************************************************
echo " Making sub-directory for REST_Client..."
mkdir /home/quad/rest_home/rest_client


#***********************************************************
cd /home/quad/rest_home/rest_client
dd if=/dev/urandom of=file1 bs=8M count=2 # Binary File 1
echo " Created file1 in Client space"
dd if=/dev/urandom of=file2 bs=16M count=2 # Binary File 2
echo " Created file2 in Client space"


# RUN commands
# curl -H "Content-type: application/octet-stream" -X POST http://127.0.0.1:5000/aaa --data-binary @file1
# curl -H "Content-type: application/octet-stream" -X POST http://127.0.0.1:5000/bbb --data-binary @file2

curl -H "Content-type: application/octet-stream" -X POST http://127.0.0.1:5000/quadlogo.jpg --data-binary @projectscloud.jpg
http://127.0.0.1:5000/mypage.html

curl -H "Content-type: text/html" -X POST http://127.0.0.1:5000/mypage.html --data-ascii @index.html
http://127.0.0.1:5000/mypage.html

# curl http://127.0.0.1:5000/aaa
# curl http://127.0.0.1:5000/bbb





