strategyTitle = 'Relax&Chill Wager';
strategyAuthor = 'NoRelaxationNoLife';
scripter = 'Vrafasky';


// Simulation Setup
if (currency === 'fun') {
    simulationBalance = 100;
    setSimulationBalance(simulationBalance);
    resetSeed();
    resetStats();
    clearConsole();
}

game = "dice";
betHigh = true;
fastMode = true;


divider = 5500;
initialBetSize = balance / divider;
betSize = initialBetSize;
target = chanceToMultiplier(98);

iol = 120;

engine.onBetPlaced((lastBet) => {

    if (lastBet.win) {
        if (profit >= initialBetSize) {
            betSize = initialBetSize;
        }

    } else {
        betSize = lastBet.amount * (1 + iol / 120);

    }


});