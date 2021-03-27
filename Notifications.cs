namespace Classes
{
    public class Notifications
    {
        public string class_notification;
        public string user_notification;

        public Notifications()
        {
            static void setNotifications()
            {
                class_notification = Classes.getDueDates().ToString();
            }

            static void customNotification()
            {

            }
        }
    }
}