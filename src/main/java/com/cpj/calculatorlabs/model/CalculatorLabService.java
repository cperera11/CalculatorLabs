/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cpj.calculatorlabs.model;

/**
 *
 * @author CPere
 */
public class CalculatorLabService {

    public String calculateRectangleArea(int length, int width) {
        return ("The area of the rectangle: " + (length * width));
    }

    public String calculateAreaOfaCircle(int redius) {
        return ("The area of the circle: " + (Math.PI * redius * redius));
    }

    public String calculateHypotenuseOfaTriangle(int adjacent, int opposite) {
        return ("The hypotenuse of the triangle: " + (Math.sqrt(Math.pow(adjacent, 2) + Math.pow(opposite, 2))));
    }

}
