import rospy
import time
from mainprs.msg import sensors_flag as sensor

counter = 0
ss_flag = 0

def checkin(data):
    if data.flag == 0:
        counter = 0
        ss_flag = 0

    else:
        ss_flag = data.flag
        counter += 1
        if counter == 10:
            rospy.loginfo('Error! Object nearby! Need help!')

def control():
    rospy.init_node('robot', anonymous =True)
    rospy.Subscriber('sensor_report', sensor, checkin)
    rospy.loginfo('robot status: ')
    rospy.loginfo('sensor flag: %d' %ss_flag)
    rospy.spin()

if __name__ == '__main__':
    control()
