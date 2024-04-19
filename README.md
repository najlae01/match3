
# Match-3 - A Match Made in Heaven

This is a simple implementation of the classic arcade game Match-3, created using Lua programming language and Love2D framework.

![match3](https://github.com/najlae01/match3/assets/88176530/18c22ed6-eaa3-4af0-8f18-62ac306f177a)


## Introduction

Breakout is a fun puzzle game where the player's goal is to swap adjacent tiles to make a match of three or more tiles of the same color, either horizontally or vertically. As matches are made, tiles are cleared from the board, allowing new tiles to fall into place. The game offers various levels of increasing difficulty.

## Features

-  Swap adjacent tiles to create matches and clear them from the board.
-  Time addition on matches: Scoring a match extends the timer by 1 second per tile in the match.
-  Level progression: Start with simple flat blocks in Level 1, with later levels generating blocks with patterns and offering more points.
-  Shiny blocks: Random shiny versions of blocks that destroy an entire row on match (or column), granting points for each block in the row.
-  Smart swapping: Only allow swapping when it results in a match, resetting the board if no matches are available.

## Controls

- **Arrow keys**: Move cursor to swap tiles.
- **Enter key:**: Select a tile to swap with adjacent tiles.

## Installation

To run the game, you need to have Love2D framework installed on your system. You can download Love2D from [the official website](https://love2d.org/).

Clone this repository to your local machine:

```
git clone https://github.com/najlae01/match3
```

## Usage

Navigate to the project directory and run the game with Love2D:

```
cd match3
```
```
love .
```

## Credits

Developed with Love2D (Lua) as part of the CS50 Introduction to Game Development course.
