#include <TrafficLight.h>

TrafficLight t1 = TrafficLight();
unsigned long startTime = millis();

void setup() {
    
}

void loop() {
    unsigned long endTime = millis();
    unsigned long delta = startTime - endTime;

    t1.Update(delta);

    startTime = endTime;
}