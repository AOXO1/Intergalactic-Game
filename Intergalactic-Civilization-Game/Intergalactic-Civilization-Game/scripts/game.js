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
