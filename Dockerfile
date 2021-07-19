FROM px4io/px4-dev-simulation-focal:latest
LABEL Description="Docker image for network evaluations using px4 and gazebo"

ENV DEBIAN_FRONTEND noninteractive

WORKDIR /root
RUN git clone https://github.com/PX4/PX4-Autopilot 
WORKDIR /root/PX4-Autopilot
RUN DONT_RUN=1 make px4_sitl gazebo

#COPY entry.sh /
#ENTRYPOINT "/entry.sh"
