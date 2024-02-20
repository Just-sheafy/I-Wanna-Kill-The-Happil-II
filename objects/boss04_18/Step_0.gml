if (!world.screen_effect_enable) { instance_destroy(); exit; }

if (!but_recover and (instance_exists(player) or not_check)) {
    if (twist > -1) twist -= 0.01;
} else {
    if (twist < 1) twist += 0.02;
    else instance_destroy();
}