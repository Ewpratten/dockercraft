from ubuntu:18.04

# Install basic stuff
run apt-get update
# run apt-get install -y apt-transport-https ca-certificates curl gnupg hicolor-icon-theme libcanberra-gtk* libgl1-mesa-dri libgl1-mesa-glx libpango1.0-0 libpulse0 libv4l-0 fonts-symbola
run apt-get install -y software-properties-common

# Install mcpelauncher
run dpkg --add-architecture i386
run apt-get install -y wget
run wget -O - https://mcpelauncher.mrarm.io/apt/conf/public.gpg.key | apt-key add -
run add-apt-repository -y 'deb http://mcpelauncher.mrarm.io/apt/ubuntu/ bionic main'
run apt-get install -y msa-daemon msa-ui-qt mcpelauncher-client mcpelauncher-ui-qt
run apt-get install -y libegl1:i386


# Add a "minecraft" user
# run groupadd -r minecraft && useradd -r -g minecraft -G audio,video minecraft \
#     && mkdir -p /home/minecraft/Downloads && chown -R minecraft:minecraft /home/minecraft

# user root