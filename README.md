# Pongout3D (BreakPong)

Pongout3D (also known as BreakPong) is a web-based 3D hybrid game combining elements of the classic games Pong and Breakout. It's built using HTML, CSS, JavaScript, Three.js for 3D rendering, and Multisynq for real-time multiplayer state synchronization.

## Description

Two players control paddles on opposite sides of a 3D court. A central "curtain" of destructible bricks divides the playfield. Players must hit the ball past their opponent to score points while also strategically breaking bricks to open up new attack angles or defend their goal. The first player to reach the target score wins the round.

## Features

*   **Real-time 2-Player Gameplay:** Uses Multisynq to synchronize game state between two browser instances.
*   **3D Graphics:** Rendered using Three.js, providing a modern take on classic arcade gameplay.
*   **Hybrid Mechanics:** Combines Pong's paddle-and-ball action with Breakout's destructible environment.
*   **Dynamic Brick Wall:** A central wall of "portrait" oriented bricks that can be destroyed by the ball, changing the playfield.
*   **Scoring and Win Conditions:** Classic point-based scoring with a defined win score.
*   **Alternating Serves:** The ball is served by the player who did not score the last point, starting from their paddle.
*   **Game States:** Includes waiting for players, countdown, active play, and game over states.

## Technologies Used

*   **HTML5**
*   **CSS3** (for basic layout and overlay)
*   **JavaScript (ES Modules)**
*   **Three.js (r163):** For 3D rendering, geometry, materials, and lighting.
*   **Multisynq Client (v1):** For real-time model-view synchronization, enabling multiplayer gameplay.

## Getting Started

### Prerequisites

*   A modern web browser that supports ES Modules (e.g., Chrome, Firefox, Edge, Safari).
*   An internet connection (for loading Three.js and Multisynq from CDNs, and for Multisynq to function).

### Running the Game

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/SarcyHedgehog/breakpong.git
    cd breakpong
    ```

2.  **Obtain a Multisynq API Key:**
    This project requires a Multisynq API key to function. The key currently in `index.html` is a **developer preview key** from Multisynq examples and should **NOT** be used for deployed applications or extensive personal use.

    *   Go to **[multisynq.io/coder](https://multisynq.io/coder)** to obtain your own free developer API key.

3.  **Update the API Key in `index.html`:**
    Open the `index.html` file in a text editor. Find the `Multisynq.Session.join` call (near the end of the `<script type="module">` block) and replace the placeholder API key with your own:
    ```javascript
    Multisynq.Session.join({
      apiKey: "YOUR_OWN_MULTISYNQ_API_KEY", // <--- REPLACE THIS
      appId: "com.sarcastichedgehog.pongout3d", // You can keep this or make it unique
      name: Multisynq.App.autoSession(),
      password: Multisynq.App.autoPassword(),
      model: PongModel,
      view: PongView
    });
    ```

4.  **Open `index.html` in your browser:**
    Once you've updated the API key, open the `index.html` file in your web browser.

5.  **Simulate Two Players:**
    To play a 2-player game locally for testing:
    *   Open the `index.html` file (with your API key) in one browser tab or window. This will be Player 1.
    *   Open the *same* `index.html` file in a *second* browser tab or window. This will be Player 2.
    *   Multisynq will automatically assign different `viewId`s, allowing them to join the same game session as distinct players using your API key.

## How to Play

*   **Controls:**
    *   Use the **Arrow Up/Down keys** or **W/S keys** to move your paddle up and down along the depth of the court.
    *   Each browser window controls one of the paddles (Player 1 is Blue/Left, Player 2 is Orange/Right by default).
*   **Objective:**
    *   Hit the ball with your paddle.
    *   Try to get the ball past your opponent's paddle to score a point.
    *   The ball can also destroy bricks in the central wall. Use this to your advantage!
    *   The first player to reach **10 points** (default `C.winScore`) wins the game.
*   **Serving:**
    *   Player 1 (Blue) serves first.
    *   After a point is scored, the player who *did not* score the point will serve the next ball from their current paddle position.

## TODO / Future Enhancements

*   [ ] Add sound effects for ball hits, brick breaks, and scoring.
*   [ ] Implement power-ups (e.g., paddle size change, ball speed change, multi-ball).
*   [ ] Improve visual aesthetics (e.g., particle effects for brick destruction, better court textures).
*   [ ] Add more complex brick patterns or levels.
*   [ ] Option for AI opponent for single-player mode.
*   [ ] More robust UI for game settings or player names.
*   [ ] Mobile controls / Touch support.

## License

This project is licensed under the MIT License.
(Consider adding a `LICENSE` file with the MIT License text: [https://opensource.org/licenses/MIT](https://opensource.org/licenses/MIT))

## Acknowledgements

*   **Three.js:** For the powerful 3D graphics library.
*   **Multisynq:** For the real-time synchronization service.
