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
    /// Логика взаимодействия для ManagerShoosePage.xaml
    /// </summary>
    public partial class ManagerShoosePage : Page
    {
        public ManagerShoosePage(string name,string surname, int id_user)
        {
            InitializeComponent();
            FIOText.Text = "Сотрудник:" + " "+ name + " " + surname;
            RoleText.Text = "Должность:" + " " + "Менеджер";
            UserNomer.Text = "Номер сотрудника:" + " "+ id_user;
        }

        private void ListOrder_Click(object sender, RoutedEventArgs e)
        {
            this.NavigationService.Navigate(new ListOrders());
        }

        private void MakeOrder_Click(object sender, RoutedEventArgs e)
        {
            this.NavigationService.Navigate(new MakeOrders());
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            this.NavigationService.GoBack();
        }
    }
}
