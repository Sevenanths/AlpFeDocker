# AlpFeDocker
Docker set-up for Fire Emblem: Thracia 776

This is a [Docker Compose](https://docs.docker.com/compose/) set-up for the disassembly of Fire Emblem: Thracia 776. It automatically downloads and compiles the required tools and places them in the correct folders inside the Docker container.

## Instructions

1. Make sure Docker and Docker Compose are installed. There's countless tutorials on the internet for this, and they will probably be kept more up-to-date than this README.
2. Clone this repository (`git clone https://github.com/Sevenanths/AlpFeDocker.git`)
3. Set the repository as the current working directory (`cd AlpFeDocker`)
4. Place your Fire Emblem: Thracia 776 SNES ROM inside the AlpFeDocker directory (filename: `FE5.sfc`)
5. Run `docker compose up`

Your compiled ROM should be inside the BIN/ folder inside AlpFeDocker.