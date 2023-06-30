Bootstrap: docker
From: ubuntu:22.04

%post
    apt-get -y update && apt-get install -y git build-essential zlib1g-dev
		git clone --depth 1 --branch v2.26 https://github.com/lh3/minimap2
		cd minimap2 && make
		pwd
		cp ./minimap2 /usr/local/bin/

%labels
    Author klin938@gmail.com
    Version 2.26-1

%help
    Test
