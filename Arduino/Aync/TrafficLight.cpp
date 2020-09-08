#include "TrafficLight.h"

void TrafficLight::Update(long time) {
    switch (state)
    {
    case 0:
        // [red + red]
        break;
    case 1:
        // [red + red,yellow]
        break;
    case 2:
        // [red + green]
        break;
    case 3:
        // [red + yellow]
        break;
    case 4:
        // [red,yellow + red]
        break;
    case 5:
        // [green + red]
        break;
    case 6:
        // [yellow + red]
        break;
    default:
        break;
    }
}