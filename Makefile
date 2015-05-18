image_name = yuki/docker-tstanza
container_name = docker-tstanza
port_num = 8888
interface_path = /vagrant/docker-tstanza/interface

# --------------------------------------------------

setup:		build run
		echo "Completed."
setup-nc:	build-nc run
		echo "Completed."
build:
		docker build -t $(image_name) .
build-nc:
		docker build --no-cache -t $(image_name) .
run:
		docker run -itd -p $(port_num):8080 -v $(interface_path):/interface \
			--name $(container_name) $(image_name):latest
bash:
		docker exec -it $(container_name) /bin/bash
destroy:	stop rm rmi
		echo "Completed."
clean:		stop rm
		echo "Completed."
stop:
		docker stop $(container_name)
restart:
		docker restart $(container_name)
rm:
		docker rm $(container_name)
rmi:
		docker rmi $(image_name)
logs:
		docker logs $(container_name)
