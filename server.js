const express = require('express');
const app = express();
const port = 3000;

// Simple Sudoku puzzle generator (static for this example)
function generateSudoku() {
    // A basic 9x9 Sudoku puzzle (some filled cells, others empty)
    return [
        [5, 3, 0, 0, 7, 0, 0, 0, 0],
        [6, 0, 0, 1, 9, 5, 0, 0, 0],
        [0, 9, 8, 0, 0, 0, 0, 6, 0],
        [8, 0, 0, 0, 6, 0, 0, 0, 3],
        [4, 0, 0, 8, 0, 3, 0, 0, 1],
        [7, 0, 0, 0, 2, 0, 0, 0, 6],
        [0, 6, 0, 0, 0, 0, 2, 8, 0],
        [0, 0, 0, 4, 1, 9, 0, 0, 5],
        [0, 0, 0, 0, 8, 0, 0, 7, 9]
    ];
}

app.get('/sudoku', (req, res) => {
    const puzzle = generateSudoku();
    res.json({ puzzle });
});

app.listen(port, () => {
    console.log(`Sudoku API listening at http://localhost:${port}`);
});
