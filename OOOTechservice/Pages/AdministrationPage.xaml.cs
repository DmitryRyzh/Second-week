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
    /// Логика взаимодействия для AdministrationPage.xaml
    /// </summary>
    public partial class AdministrationPage : Page
    {
        public AdministrationPage(string name, string surname, int id_user)
        {
            InitializeComponent();
            FIOText.Text = "Сотрудник:" + " " + name + " " + surname;
            RoleText.Text = "Должность:" + " " + "Администратор";
            UserNomer.Text = "Номер сотрудника:" + " " + id_user;
        }

        private void ListOrder_Click(object sender, RoutedEventArgs e)
        {
            this.NavigationService.Navigate(new OrdersForAdmin());
        }

        private void MakeOrder_Click(object sender, RoutedEventArgs e)
        {

        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            this.NavigationService.GoBack();
        }
    }
}
