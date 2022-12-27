#!/usr/bin/env python
# encoding: utf-8

import rospy      #Interfaz de python-ROS
from std_msgs.msg import String    #Importamos tipo de mensaje String 

def node():
    #Se inicializa el node y se le asigna un nombre
    rospy.init_node('node_publisher')
    #topico, tipo de msensaje, límite mensajes en cola
    pub = rospy.Publisher('topic/robot',String, queue_size=10)
    #Crea un objeto Rate a 10 hz
    rate =rospy.Rate(10)

    while not rospy.is_shutdown(): #Se ejecuta hasta ctrl+c

        message = "Nodo Publisher"
        #print(message)
        rospy.loginfo(message)
        pub.publish(message) # Se publica el mensaje String en el topico topic/robot
        rate.sleep()

if __name__ == '__main__':
    try:
        node()
    except rospy.ROSInterruptException:
        pass