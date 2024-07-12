// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SineWave(time, period, amplitude, midpoint) {
    return sin(time * 2 * pi / period) * amplitude + midpoint;
}