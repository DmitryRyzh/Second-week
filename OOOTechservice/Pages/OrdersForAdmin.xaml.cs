using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace OOOTechservice.Pages
{
    /// <summary>
    /// Логика взаимодействия для OrdersForAdmin.xaml
    /// </summary>
    public partial class OrdersForAdmin : Page
    {
        BdEntities bd = new BdEntities();
        public int itemCount;
        public int bdCount;
        public OrdersForAdmin()
        {
            InitializeComponent();
            var orderList = from orders in bd.Orders
                            join clients in bd.Clients
                            on orders.id_client equals clients.id_client

                            join status in bd.Status
                            on orders.id_status equals status.Id_status

                            join breaks in bd.Breaks
                            on orders.id_break equals breaks.id_break

                            join equipment in bd.Equipment
                            on orders.id_equipment equals equipment.id_equipment


                            join tasks in bd.Tasks
                            on orders.id_task equals tasks.id_task
                            where orders.id_user == null

                            select new
                            {
                                Id = orders.id_order,
                                UserId = orders.id_user,
                                ClientId = orders.id_client,
                                ClientName = clients.name,
                                ClientSurname = clients.surname,
                                StatusBar = status.name,
                                Description = orders.description,
                                BreakId = orders.id_break,
                                TaskId = orders.id_task,
                                EquipmentId = orders.id_equipment,
                                DateStart = orders.date_start,
                                DateEnd = orders.date_end,
                                Break = breaks.name,
                                Equipment = equipment.name,
                                Task = tasks.name
                            };



            listView.ItemsSource = orderList.ToList();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            this.NavigationService.GoBack();
        }

        private void listView_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            this.NavigationService.Navigate(new EditOrderPage());
        }

        private void MenuItem_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
