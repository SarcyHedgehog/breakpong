# Pongout3D (BreakPong)

Pongout3D (also known as BreakPong) is a web-based 3D hybrid game combining elements of Pong and Breakout. It features moving portals, multi-hit bricks, a paddle-shrinking power-up, and dynamically appearing indestructible bricks, built using HTML, CSS, JavaScript, Three.js for 3D rendering, and Multisynq for real-time multiplayer state synchronization.

## Description

Two players control paddles on opposite sides of a 3D court. A central "curtain" of destructible bricks divides the playfield. Some bricks are red (requiring two hits) and some are purple (triggering a shrink effect on the opponent's paddle). Moving portals add a layer of unpredictability by teleporting the ball. Periodically, a large portal appears on the back wall, delivering a new, indestructible black brick onto the playfield, altering the brick wall dynamically. Players must hit the ball past their opponent to score points while strategically breaking bricks, navigating portals, and adapting to the changing wall. The first player to reach the target score wins the round.

The game model is designed for deterministic behavior, ensuring that given the same inputs, all players experience a consistent game state, a core principle for reliable multiplayer with Multisynq.

## Features

*   **Real-time 2-Player Gameplay:** Uses Multisynq to synchronize game state with a replicated, deterministic model.
*   **3D Graphics:** Rendered using Three.js.
*   **Hybrid Mechanics:** Combines Pong and Breakout gameplay.
*   **Destructible Brick Wall:**
    *   **Green Bricks:** Break in one hit.
    *   **Red Bricks:** Require two hits (turning green after the first).
    *   **Purple Bricks:** Break in one hit and shrink the opponent's paddle for a limited time.
*   **Dynamic Indestructible Bricks:**
    *   At timed intervals (configurable, currently 30 seconds), a large portal appears on the back wall.
    *   A black, indestructible brick flies out and replaces a random brick (or empty space) in the wall.
    *   These bricks cannot be broken and change the playfield dynamics.
    *   This event can occur a maximum of 10 times per game.
*   **Moving Portals (In-Court):**
    *   Teleport the ball instantly to the other portal's location, preserving velocity.
    *   Bounce off court edges, their defined static boundaries, and paddles.
    *   Feature distinct colored rings and dark centers.
*   **Paddle Shrink Power-Up:** Hitting a purple brick shrinks the opponent's paddle by 50% for 20 seconds.
*   **Scoring and Win Conditions:** Target score of 10 points.
*   **Serving Mechanic:**
    *   Player who didn't score last serves.
    *   1-second pause with ball on paddle before auto-launch.
*   **Arcade-Style Score Display:** Large, blocky font.

## Technologies Used

*   **HTML5, CSS3, JavaScript (ES Modules)**
*   **Three.js (r163)**
*   **Multisynq Client (v1)**
*   **Google Fonts:** ('Press Start 2P')

## Getting Started

### Prerequisites

*   Modern web browser with ES Module support.
*   Internet connection.

### Running the Game

1.  **Clone the repository (if applicable) or ensure you have `index.html`**.
    If from a repository:
    ```bash
    git clone https://github.com/SarcyHedgehog/breakpong.git 
    cd breakpong 
    ```
    (Replace with your actual repository URL if different)

2.  **Obtain a Multisynq API Key (If you don't have one for this project):**
    *   Go to **[multisynq.io/coder](https://multisynq.io/coder)** for your own free developer API key.

3.  **Update the API Key in `index.html` (If necessary):**
    Open `index.html`, find `Multisynq.Session.join`, and ensure the `apiKey` is correct.
    (Current key in your file: `"2atXt6dTbNaKKO83iB4tsYDfmpusH0C6veTYXjy7Om"`)

4.  **Run Locally:**
    *   **Using a simple HTTP server (Recommended):**
        *   Navigate to the directory containing `index.html` in your terminal.
        *   If you have Python 3: `python -m http.server`
        *   If you have Python 2: `python -m SimpleHTTPServer`
        *   Then open `http://localhost:8000` (or the port shown) in your browser.
    *   **Directly opening `index.html`:** Some browsers might have security restrictions (CORS) with ES Modules loaded from `file:///` paths, especially if you add external assets later. Using a local server is generally more reliable.

5.  **Simulate Two Players:** Open the game in two separate browser tabs or windows, navigating to the same local URL (e.g., `http://localhost:8000` for both).

## How to Play

*   **Controls:** **Arrow Up/Down** or **W/S** keys.
*   **Objective:** Be the first player to score 10 points.
*   **Scoring:** Hit the ball past your opponent's paddle.
*   **Bricks:**
    *   **Green:** Break in one hit.
    *   **Red:** Require two hits (turn green after the first).
    *   **Purple:** Break in one hit and shrink the opponent's paddle.
    *   **Black (Indestructible):** Appear dynamically from a back-wall portal. These cannot be broken and will bounce the ball.
*   **Portals (In-Court):** Two smaller portals move around the central area. If the ball enters one, it teleports to the other.
*   **Delivery Portal (Back Wall):** A larger portal that periodically appears to deliver new black indestructible bricks. The ball does not interact with this portal.
*   **Serving:** After a point, the ball appears on the server's paddle for 1 second before automatically launching.

## TODO / Future Enhancements

*   [ ] Refine PBR metallic sheen on bricks.
*   [ ] Add textured walls around the court (back and sides).
*   [ ] Add metallic plating texture to the floor.
*   [ ] Visual enhancement for the "growing" delivery portal (e.g., more elaborate animation than just scaling).
*   [ ] Sound effects.
*   [ ] More power-ups (e.g., multi-ball, speed changes).
*   [ ] AI opponent for single-player mode.
*   [ ] Mobile controls.

## License

This project is licensed under the MIT License. (Consider adding a `LICENSE` file.)

## Acknowledgements

*   Three.js, Multisynq, Google Fonts.