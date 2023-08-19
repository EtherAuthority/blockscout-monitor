# BlockScout Monitor Script Setup

This repository contains a shell script that monitors the status of the BlockScout service and restarts it if it's down. This guide explains how to clone and set up the script on your Linux Ubuntu server.

## Prerequisites

- Linux Ubuntu server
- Git installed (`sudo apt-get install git`)
- [Tmux](https://github.com/tmux/tmux/wiki/Installing) installed (`sudo apt-get install tmux`)  

## Instructions

1. **Clone the Repository**

   Open a terminal on your Linux Ubuntu server and run the following command to clone the repository:

   ```sh
   git clone https://github.com/dwarkesh8/blockscout-monitor.git
  
2. **Make file executable**

   ```sh
   chmod +x monitor.sh
   
3. **Init Tmux session**

   ```sh
   tmux

4. **Run the shell script**

   ```sh
   ./monitor.sh

5. **Exit/Deteched from Tmux**

   Type keyboard shortcut command

   ```sh
   ctrl+b then d

Enjoy!!!
