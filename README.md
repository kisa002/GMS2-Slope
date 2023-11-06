# GMS2-Slope
Slope implementation for GameMaker: Studio 2

# How to work?
Very simple. Movement, jumping, slope, all in just 88 lines on Create in objPlayer.

It just used place_free to calculate the player position and direction for the slope.

# Status
You can see the value of status in Create on objPlayer.

```GML
/// Create in objPlayer
spd = 8; // speed
jmp = 12; // jump power
dir = 32; // max direction(angle)
gra = 1; // gravity

isJump = false; //jump check
```

# Demo Video
[![GameMaker: Studio 2 Slope](https://img.youtube.com/vi/BSdb45EqEeI/maxresdefault.jpg)](https://www.youtube.com/watch?v=BSdb45EqEeI)
