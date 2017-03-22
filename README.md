# SQLWorkbench/J-docker
This is to build out an container that runs headlessly and designed to connect VIA vnc. The purpose of this is to create a thin client for SQLWorkbench/J. 

# Build
```bash
docker build --rm -t yuntsewu/sqlworkbenchj .
```
# Run
```bash
docker run -d -p 5901:5901 -p 6901:6901 yuntsewu/sqlworkbenchj
```
# Client
=> connect via VNC viewer localhost:5901, default password: vncpassword

=> connect via noVNC HTML5 client: http://localhost:6901/vnc_auto.html?password=vncpassword

## reference 
https://github.com/ConSol/docker-headless-vnc-container
