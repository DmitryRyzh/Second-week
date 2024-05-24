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
using System.Xml.Linq;

namespace OOOTechservice.Pages
{
    /// <summary>
    /// Логика взаимодействия для MakeOrders.xaml
    /// </summary>
    public partial class MakeOrders : Page
    {
        BdEntities bd = new BdEntities();

        public MakeOrders()
        {
            InitializeComponent();
            LoadComboBoxData();
            OrderLoad();
            
        }
        private void LoadComboBoxData()
        {

            var statuss = from c in bd.Status
                           select c.name;
            statusComboBox.ItemsSource = statuss.ToList();


            var breakss = from m in bd.Breaks
                               select m.name;
            breakComboBox.ItemsSource = breakss.ToList();


            var equipment = from p in bd.Equipment
                           select p.name;
           equipmentTextBox.ItemsSource = equipment.ToList();


            var task = from n in bd.Status
                       select n.name;
            taskCombobox.ItemsSource = task.ToList();

       
        }

        private void OrderLoad()
        { 
           

        }

        private void CreateOrderButton_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                // Получение имени и фамилии клиента
                string clientName = clientNamee.Text;
                string clientSurname = clientSurnamee.Text;

                // Поиск существующего клиента по имени и фамилии
                var existingClient = bd.Clients.FirstOrDefault(c => c.name == clientName && c.surname == clientSurname);

                int clientId;

                if (existingClient == null)
                {
                    // Создание нового клиента, если он не найден
                    Clients newClient = new Clients()
                    {
                        name = clientName,
                        surname = clientSurname,
                        email = clientEmail.Text // Допустим, что электронная почта также заполняется на форме
                    };

                    bd.Clients.Add(newClient);
                    bd.SaveChanges();

                    clientId = newClient.id_client; // Получение ID нового клиента
                }
                else
                {
                    // Использование ID существующего клиента
                    clientId = existingClient.id_client;
                }

                // Создание новой задачи
                Tasks newTask = new Tasks()
                {
                    name = taskTextBox.Text,
                    description = taskDescription.Text,
                    id_progress = taskCombobox.SelectedIndex + 1
                };

                bd.Tasks.Add(newTask);
                bd.SaveChanges();

                // Создание нового заказа
                Orders newOrder = new Orders()
                {
                    id_client = clientId,
                    id_status = statusComboBox.SelectedIndex + 1,                 
                    id_break = breakComboBox.SelectedIndex + 1,
                    description = descriptionTextBox.Text,
                    id_equipment = equipmentTextBox.SelectedIndex + 1,
                    date_start = startDatePicker.SelectedDate,
                    date_end = endDatePicker.SelectedDate,
                    id_task = newTask.id_task
                };

                bd.Orders.Add(newOrder);
                bd.SaveChanges();

                MessageBox.Show("Заказ успешно создан!", "Уведомление", MessageBoxButton.OK, MessageBoxImage.Information);
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Ошибка при создании заказа:\n{ex.Message}", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            this.NavigationService.GoBack();
        }
    }
}


