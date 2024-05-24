using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
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
    /// Логика взаимодействия для AuthorizationPage.xaml
    /// </summary>
    public partial class AuthorizationPage : Page
    {
        BdEntities bd = new BdEntities();
        public AuthorizationPage()
        {
            InitializeComponent();
        }

        private void logIn_Click(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrEmpty(passwordd.Password))
            {
                MessageBox.Show("Введите пароль", "Предупреждение", MessageBoxButton.OK);
            }
            else
            {
                var objUser = bd.Users.FirstOrDefault(x => x.login == loginn.Text && x.password == passwordd.Password);
                if (objUser != null)
                {
                    switch (objUser.id_role)
                    {
                        case 1:
                            this.NavigationService.Navigate(new AdministrationPage(objUser.name, objUser.surname, objUser.id_user));
                            break;
                        case 2:
                            this.NavigationService.Navigate(new ManagerShoosePage(objUser.name, objUser.surname,objUser.id_user));
                            break;
                        case 3:
                            this.NavigationService.Navigate(new WorkerPage());
                            break;
                    }
                }
                else
                {
                    MessageBox.Show("Пользователя не существует", "Ошибка", MessageBoxButton.OK);
                }
            }
        }
        private void Hyperlink_Click(object sender, RoutedEventArgs e)
        {
            this.NavigationService.Navigate(new AdministrationPage("дева","памо",1000));
        }
    }
}
