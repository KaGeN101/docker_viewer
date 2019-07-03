
docker run --name test-image -t -i ubuntu /bin/bash

#Type
#touch /SUCCESS
#exit

docker commit $(docker ps -lq) test-image
docker tag test-image localhost:5000/test-image
docker push localhost:5000/test-image