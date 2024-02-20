var num = 100;

while(file_exists("screenshot" + string(num) + ".png")) num++;
screen_save("screenshot" + string(num) + ".png");