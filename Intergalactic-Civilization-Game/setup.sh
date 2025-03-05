#!/bin/bash

# Create the project directory structure
mkdir -p Intergalactic-Civilization-Game/{assets,scripts,styles}
cd Intergalactic-Civilization-Game

# Create essential files
touch index.html styles/style.css scripts/game.js README.md

# Add basic content to index.html
cat > index.html <<EOL
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Intergalactic Civilization Game</title>
    <link rel="stylesheet" href="styles/style.css">
</head>
<body>
    <div class="main-menu">
        <nav class="top-nav">
            <button class="nav-btn" id="play-btn">Play</button>
            <button class="nav-btn">Customize</button>
            <button class="nav-btn">Community</button>
            <button class="nav-btn">Shop</button>
        </nav>
        <div class="content-section">
            <div class="game-modes">
                <button class="mode-btn" id="campaign-btn">Campaign</button>
                <button class="mode-btn">Multiplayer</button>
                <button class="mode-btn">Academy</button>
                <button class="mode-btn">Custom Game</button>
            </div>
            <div id="news-section" class="card">
                <h2>Latest News</h2>
                <p>Unravel the mysteries of the Intergalactic Realm</p>
            </div>
        </div>
    </div>

    <div id="character-selection" class="hidden">
        <h1>Select Your Character</h1>
        <div class="character-options">
            <button id="engineer-btn">Engineer</button>
            <button id="scientist-btn">Scientist</button>
            <button id="explorer-btn">Explorer</button>
        </div>
    </div>

    <script src="scripts/game.js" defer></script>
</body>
</html>
EOL

# Add styles to style.css
cat > styles/style.css <<EOL
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-image: url('../assets/background.jpg');
    background-size: cover;
    background-position: center;
    color: #ffffff;
    margin: 0;
    padding: 0;
    overflow: hidden;
}

.main-menu {
    position: relative;
    width: 100%;
    height: 100vh;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    padding: 20px;
    box-sizing: border-box;
}

.top-nav {
    display: flex;
    justify-content: space-evenly;
    background-color: rgba(27, 38, 59, 0.8);
    padding: 10px;
    border-radius: 8px;
}

.content-section {
    display: flex;
    justify-content: space-between;
    align-items: center;
    height: 80%;
    padding: 20px;
}

.card {
    flex: 1;
    margin: 20px;
    background-color: rgba(27, 38, 59, 0.8);
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}

.game-modes {
    flex: 1;
    display: flex;
    flex-direction: column;
    align-items: center;
    gap: 15px;
}

button {
    padding: 10px 20px;
    border-radius: 8px;
    border: none;
    cursor: pointer;
    transition: background-color 0.3s;
    background-color: #1b263b;
    color: #e0e1dd;
}

button:hover {
    background-color: #415a77;
}

.character-options {
    display: flex;
    justify-content: center;
    gap: 20px;
    margin-top: 50px;
}

.hidden {
    display: none;
}
EOL

# Add script to game.js
cat > scripts/game.js <<EOL
document.addEventListener('DOMContentLoaded', () => {
    document.getElementById('play-btn').onclick = () => toggleCharacterSelection();
    document.getElementById('engineer-btn').onclick = () => selectCharacter('Engineer');
    document.getElementById('scientist-btn').onclick = () => selectCharacter('Scientist');
    document.getElementById('explorer-btn').onclick = () => selectCharacter('Explorer');
});

function toggleCharacterSelection() {
    document.querySelector('.main-menu').classList.toggle('hidden');
    document.getElementById('character-selection').classList.toggle('hidden');
}

function selectCharacter(character) {
    alert('You selected: ' + character);
}
EOL

# Add a simple README.md
cat > README.md <<EOL
# Intergalactic Civilization Game

An immersive game where players learn, build, and collaborate to create a thriving intergalactic civilization.
EOL

echo "Project setup complete!"
