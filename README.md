This project simulates a 3D starfield effect using Processing, creating the illusion of stars moving toward the viewer through space.

#How it works:

    The screen is filled with 800 stars positioned randomly in 3D space.

    Each star has x, y, and z coordinates representing its position in space.  

    As time progresses, stars move closer by decreasing their z-coordinate.

    When a star moves past the viewer (z < 1), it is reset to a far distance.

    The star's size and position on the 2D screen are calculated based on its 3D coordinates,         simulating perspective.

    A trailing line shows the star’s motion path, enhancing the depth effect.

#Key concepts demonstrated:

    3D to 2D perspective projection

    Animation and frame updates

    Object-oriented programming with a Star class

    Use of Processing's drawing functions for smooth animation
