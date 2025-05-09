# Pongout3D (BreakPong)

Pongout3D (also known as BreakPong) is a web-based 3D hybrid game combining elements of Pong and Breakout. It features moving portals, multi-hit bricks, and a paddle-shrinking power-up, built using HTML, CSS, JavaScript, Three.js for 3D rendering, and Multisynq for real-time multiplayer state synchronization.



## Description

Two players control paddles on opposite sides of a 3D court. A central "curtain" of destructible bricks divides the playfield. Some bricks are red (requiring two hits) and some are purple (triggering a shrink effect on the opponent's paddle). Moving portals add another layer of unpredictability by teleporting the ball. Players must hit the ball past their opponent to score points while strategically breaking bricks and navigating portals. The first player to reach the target score wins the round.

## Features

*   **Real-time 2-Player Gameplay:** Uses Multisynq to synchronize game state.
*   **3D Graphics:** Rendered using Three.js.
*   **Hybrid Mechanics:** Combines Pong and Breakout gameplay.
*   **Destructible Brick Wall:**
    *   **Green Bricks:** Break in one hit.
    *   **Red Bricks:** Require two hits (turning green after the first).
    *   **Purple Bricks:** Break in one hit and shrink the opponent's paddle for a limited time.
*   **Moving Portals:**
    *   Teleport the ball instantly to the other portal's location, preserving velocity.
    *   Bounce off court edges, their defined static boundaries, and paddles.
*   **Paddle Shrink Power-Up:** Hitting a purple brick shrinks the opponent's paddle by 50% for 20 seconds.
*   **Scoring and Win Conditions:** Target score of 10 points.
*   **Serving Mechanic:**
    *   Player who didn't score last serves.
    *   1-second pause with ball on paddle before launch.
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

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/SarcyHedgehog/breakpong.git
    cd breakpong
    ```

2.  **Obtain a Multisynq API Key:**
    *   Go to **[multisynq.io/coder](https://multisynq.io/coder)** for your own free developer API key.

3.  **Update the API Key in `index.html`:**
    Open `index.html`, find `Multisynq.Session.join`, and replace `"YOUR_OWN_MULTISYNQ_API_KEY"` with your key.

4.  **Run Locally:**
    *   (Option 1) Python HTTP Server: In the `breakpong` directory, run `python -m http.server` (Python 3) then open `http://localhost:8000`.
    *   (Option 2) Open `index.html` directly in your browser.

5.  **Simulate Two Players:** Open the game in two separate browser tabs/windows.

## How to Play

*   **Controls:** **Arrow Up/Down** or **W/S** keys. (Up key moves paddle closer/bottom of screen, Down key moves it further/top).
*   **Objective:** Score 10 points.
*   **Bricks:** Green (1-hit), Red (2-hit, turns green), Purple (1-hit, shrinks opponent's paddle).
*   **Portals:** Teleport the ball. Bounce off boundaries and paddles.
*   **Serving:** Ball appears on server's paddle for 1 second before auto-launch.

## TODO / Future Enhancements

*   [ ] Add visual enhancement to portals (e.g., "black hole" center).
*   [ ] Sound effects.
*   [ ] More power-ups.
*   [ ] Dynamic portal inner boundaries based on broken bricks.
*   [ ] AI opponent.
*   [ ] Mobile controls.

## License

This project is licensed under the MIT License. (Consider adding a `LICENSE` file.)

## Acknowledgements

*   Three.js, Multisynq, Google Fonts.