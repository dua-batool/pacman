# Pacman Project

## Introduction
This repository contains the documentation and source code for the Pacman game developed as a project for the Digital Logic and Design course (EE-172L/CS-130L) at Habib University.

## Game Overview
Pacman is a classic arcade game where the player controls a character named Pacman, navigating through a maze while consuming red pills scattered throughout. The objective is to eat all the pills while avoiding collisions with ghosts roaming the maze. If Pacman collides with a ghost, the game is lost. However, if Pacman successfully consumes all the pills, the player wins.

## Features
- Pacman movement controlled by joystick inputs.
- Reset functionality using a switch.
- Dynamic display of maze, Pacman, red pills, and ghosts.
- Collision detection for walls, pills, and ghosts.
- Winning and losing screens.

## Playing Instructions
- Use the joystick to move Pacman in four directions: up, down, left, and right.
- Use the switch to reset the game.

## Project Structure
- **Input Block**: Manages input stream from the joystick.
- **Control Block**: Administers display, Pacman and ghost movements, and collision detection.
- **Output Block**: Displays maze, Pacman, pills, and ghosts.
- **Implementation Modules**: Detailed implementation of input, control, and output functionalities.

## Implementation Details
- **Input Block**: Utilizes Pmod ports from the BASYS-3 board to read joystick outputs.
- **Output Block**: Uses h_counter, v_counter, and pixel_gen modules to generate display outputs.
- **Control Block**: Implements Pacman movement, collision detection, and ghost movements.
- **Top Level Control Block**: Manages overall game flow and screen display.

## Results
- Screens displayed upon winning and losing are included in the documentation.

## Authors
- Bushraa Yousuf
- Dua Batool
- Hijab Fatima
- Zainab Haider

## Footnotes
Source code for joystick functionality was adapted from [Digilent/Basys3](https://github.com/Digilent/Basys3).

This README provides a high-level overview of the project. For detailed technical information, please refer to the corresponding sections in the project documentation.

