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
    /// Логика взаимодействия для EditOrderPage.xaml
    /// </summary>
    public partial class EditOrderPage : Page
    {
        BdEntities bd = new BdEntities();
        public EditOrderPage()
        {
            InitializeComponent();
        }

        private void SaveButton_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (int.TryParse(ordernumber.Text, out int orderId) && int.TryParse(username.Text, out int employeeId))
                {
                    var order = bd.Orders.FirstOrDefault(o => o.id_order == orderId);
                    if (order != null)
                    {
                        order.id_user = employeeId;
                        bd.SaveChanges();
                        MessageBox.Show("Сотрудник успешно добавлен к заявке!", "Уведомление", MessageBoxButton.OK, MessageBoxImage.Information);
                        this.NavigationService.GoBack();
                    }
                    else
                    {
                        MessageBox.Show("Заказ с указанным номером не найден.", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                }
                else
                {
                    MessageBox.Show("Пожалуйста, введите корректные номера заявки и сотрудника.", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Warning);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Ошибка при сохранении сотрудника:\n{ex.Message}", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            this.NavigationService.GoBack();
        }
    }
}

    


