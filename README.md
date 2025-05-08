# Pongout3D (BreakPong)

Pongout3D (also known as BreakPong) is a web-based 3D hybrid game combining elements of the classic games Pong and Breakout. It features moving portals and multi-hit bricks, built using HTML, CSS, JavaScript, Three.js for 3D rendering, and Multisynq for real-time multiplayer state synchronization.

<!-- Optional: Add a screenshot or GIF here! -->
<!-- ![Gameplay Screenshot](path/to/your/screenshot.gif) -->

## Description

Two players control paddles on opposite sides of a 3D court. A central "curtain" of destructible bricks divides the playfield. Some bricks require multiple hits. Moving portals add another layer of unpredictability, teleporting the ball across the court. Players must hit the ball past their opponent to score points while strategically breaking bricks and navigating portals. The first player to reach the target score wins the round.

## Features

*   **Real-time 2-Player Gameplay:** Uses Multisynq to synchronize game state between two browser instances.
*   **3D Graphics:** Rendered using Three.js.
*   **Hybrid Mechanics:** Combines Pong and Breakout gameplay.
*   **Destructible Brick Wall:** A central wall of bricks blocks the ball.
*   **Multi-Hit Bricks:** Red bricks require two hits (turning green after the first) to destroy.
*   **Moving Portals:** Two portals move within defined areas on either side of the brick wall.
    *   Portals teleport the ball instantly to the other portal's location, preserving the ball's velocity.
    *   Portals bounce off the top/bottom court edges and their defined inner (wall-side) and outer (paddle-side) boundaries.
    *   Portals bounce off paddles.
*   **Scoring and Win Conditions:** Classic point-based scoring with a win score of 10.
*   **Serving Mechanic:**
    *   The player who didn't score the last point serves.
    *   Includes a 1-second pause after a goal, showing the ball on the serving paddle before launch.
*   **Arcade-Style Score Display:** Large, blocky font for the score overlay.

## Technologies Used

*   **HTML5**
*   **CSS3** (layout, overlay, custom font)
*   **JavaScript (ES Modules)**
*   **Three.js (r163):** For 3D rendering.
*   **Multisynq Client (v1):** For real-time multiplayer synchronization.
*   **Google Fonts:** ('Press Start 2P' for score display)

## Getting Started

### Prerequisites

*   A modern web browser that supports ES Modules (e.g., Chrome, Firefox, Edge, Safari).
*   An internet connection (for loading libraries from CDNs and for Multisynq).

### Running the Game

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/SarcyHedgehog/breakpong.git
    cd breakpong
    ```

2.  **Obtain a Multisynq API Key:**
    This project requires a Multisynq API key.
    *   Go to **[multisynq.io/coder](https://multisynq.io/coder)** to obtain your own free developer API key.

3.  **Update the API Key in `index.html`:**
    Open the `index.html` file in a text editor. Find the `Multisynq.Session.join` call (near the very end of the `<script type="module">` block) and replace the placeholder API key `"YOUR_OWN_MULTISYNQ_API_KEY"` with your actual key:
    ```javascript
    Multisynq.Session.join({
      apiKey: "YOUR_OWN_MULTISYNQ_API_KEY", // <--- REPLACE THIS
      appId: "com.sarcastichedgehog.pongout3d",
      // ... other parameters ...
    });
    ```

4.  **Run Locally (Option 1: Python HTTP Server):**
    *   Navigate to the `breakpong` directory in your terminal.
    *   Run `python -m http.server` (for Python 3) or `python -m SimpleHTTPServer` (for Python 2).
    *   Open your browser to `http://localhost:8000`.

5.  **Run Locally (Option 2: Open File Directly):**
    *   You can often just double-click the `index.html` file to open it directly in your browser (using the `file:///` protocol). For simple projects using CDNs like this, it usually works, but running via a local server is generally better practice for web development.

6.  **Simulate Two Players:**
    *   Open the game (using either method above) in one browser tab/window (Player 1).
    *   Open the game *again* in a *second* browser tab/window (Player 2).
    *   They will connect to the same Multisynq session.

## How to Play

*   **Controls:**
    *   Use **Arrow Up/Down keys** or **W/S keys** to move your paddle along the court's depth. (Up key moves paddle closer to you/bottom of screen, Down key moves it further away/top of screen).
*   **Objective:** Hit the ball past your opponent to score. First to 10 points wins.
*   **Bricks:**
    *   Green bricks break on one hit.
    *   Red bricks turn green on the first hit and break on the second hit.
*   **Portals:**
    *   The blue/orange rings are portals. They move within set areas.
    *   If the ball enters a portal, it exits the other instantly.
    *   Portals bounce off the top/bottom edges, their defined side boundaries, and the paddles.
*   **Serving:** After a point, the ball appears on the serving player's paddle for 1 second before launching automatically.

## TODO / Future Enhancements

*   [ ] Implement portal boundary interaction with *broken* bricks (dynamic inner boundary).
*   [ ] Add sound effects.
*   [ ] Implement power-ups.
*   [ ] Improve visual aesthetics (particles, textures).
*   [ ] More complex brick patterns/levels.
*   [ ] AI opponent option.
*   [ ] Mobile controls.

## License

This project is licensed under the MIT License.
(Consider adding a `LICENSE` file with the MIT License text: [https://opensource.org/licenses/MIT](https://opensource.org/licenses/MIT))

## Acknowledgements

*   **Three.js:** For the 3D graphics library.
*   **Multisynq:** For the real-time synchronization service.
*   **Google Fonts:** For the 'Press Start 2P' font.