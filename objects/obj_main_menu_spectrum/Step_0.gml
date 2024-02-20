///Animate spectrum

var i;

if(t mod t_next == 0)
{
    
    for (i = 0; i < lines_num * 2; i += 1)
    {
        bars_num[i] = (bars_num[i] + irandom_range(0,2)) mod 6;
        bars_num[i] += 1; 
    }    
}

t += 1;