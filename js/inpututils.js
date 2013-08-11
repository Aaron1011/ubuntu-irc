function processInput(input) {
    commandInput.remove(0, commandInput.length)
    if (input[0] == '/') {
        processCommand(input.slice(1));
    }
    else {
        processMessage(input);
    }
}

function processCommand(command) {
    if (command.indexOf('server') == 0) {
        joinServer(command.slice(6));
    }
}
function processMessage(command) {}
