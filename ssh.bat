cd /d %~dp0
vagrant ssh -c "docker run -v /home/bargee/src:/home/src -it admin/gcc"
