# APFrog's Physiscs library for Retro Gadgets
## This library provides the following functions
```
physap.collision(startpoint:vec2, endpoint:vec2, vc:VideoChip, cubeheight:number)
physap.gravity(startpoint:vec2, endpoint:vec2, acceleration:number, fallspeed:number, cpu:CPU, grounded:boolean)
```
## Physap Collision
The collision function recieves the startpoint of a cube, its endpoint, a videochip, and its height.
As of 0.1.2, VideoChip counts its height from the top to the bottom unlike in other games![^collision]
### Retro Gadgets Version
![RG Version 0.1.2](https://apfrog.github.io/images/forprojects/currentver.png)

## Physap Gravity
The gravity functions returns the startpoint of your cube, its endpoint and an acceleration value which you need to define in your cpu
As of currently, gravity is still in its infancy[^gravity]

[^collision]: RG Version 0.1.2 <sub>Last updated 2022-12-10</sub>
[^gravity]: Gravity is still useless because of its limited functionality, it does serve its name however. <sub>Last updated 2022-12-10</sub>
