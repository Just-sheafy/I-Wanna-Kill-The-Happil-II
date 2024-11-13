if (saveTimer == 0 && instance_exists(player)) { //Avoids saving several steps in a row
    saveTimer = 30;
    saveControls();
    with(world) {
        saveEncrypt();
        saveDeaths();
    }
	instance_destroy();
}