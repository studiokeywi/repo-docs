import { confetti, konami } from 'https://cdn.jsdelivr.net/gh/studiokeywi/play/index.js';
const { init, render } = confetti();
konami({ once: false, payload: () => (init(), render()) }).load();
