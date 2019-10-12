FROM ghostlink/service-base-steamcmd:latest

WORKDIR /home/steam/steamcmd

RUN ./steamcmd.sh +login anonymous +force_install_dir ../Server1 +app_update 4020 validate +quit
#RUN ./steamcmd.sh +login anonymous +force_install_dir ../content/tf2 +app_update 232250 validate +quit

ENTRYPOINT [ "/bin/bash", "-c", "/home/steam/Server1/srcds_run -game garrysmod +maxplayers 12 -debug" ]
