#!/usr/bin/env python
# encoding: utf-8

import rospy

import actionlib

from package_robot.msg import DoCarWashAction,DoCarWashResult, DoCarWashFeedback

class DoActionServer:

    def __init__(self):
        self.server = actionlib.SimpleActionServer('do_car_wash', DoCarWashAction, self.execute, False)
        self.server.start()
        print("Running action server do_wash_car ...")
    
    def execute(self, goal):

        feedback = DoCarWashFeedback()
        result = DoCarWashResult()
        rate = rospy.Rate(1)

        for x in range(0,goal.number_of_cars):
            result.total_cars_cleaned += 1
            feedback.percent_cars_complete = (result.total_cars_cleaned*100.0)/goal.number_of_cars
            self.server.publish_feedback(feedback)                #Publicamos el feedback
            rate.sleep()

        self.server.set_succeeded(result)                         #Publicamos el resultado


if __name__ == '__main__':
    rospy.init_node('nodo_action_server')
    server = DoActionServer()                                      #Creamos una instancia de la Clase DoActionServer
    rospy.spin()                                                   #Mantiene corriendo el script hasta que se detiene la ejecución del script con Crtl+C