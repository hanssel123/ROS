#!/usr/bin/env python
# encoding: utf-8

import rospy      #Interfaz de python-ROS
from std_msgs.msg import String    #Importamos tipo de mensaje String 

def callback(message):
    rospy.loginfo("I heard %s", message.data)

def node():
    #Se inicializa el node y se le asigna un nombre
    rospy.init_node('node_subscriber')
    #Subscripción al tópico: tópico, estructura de mensaje y función de process
    rospy.Subscriber('topic/robot',String, callback)
    #Mantiene corriendo el script hasta ctrl+c
    rospy.spin()

if __name__ == '__main__':
    try:
        node()
    except rospy.ROSInterruptException:
        pass