package com.itacademy.sql.one;

import javax.swing.*;
import java.sql.*;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

/**
 * JDBC nije implementacija konekcije na bazu(Connction, PrepareStatment...)
 *
 *Driver : koji implementira te interfejse definirane u KDBC biblioteci
 *
 * Kada se povezujemo sa bazom podataka:
 * 1.povezati se na izvor podataka : Baza -> Connection
 * 2. Slati SQL upit - >Statment, PreparedStatment...
 * 3. Evaluirati rezultat upita -> ResultSet
 */

public class MainDemo {
    public static void main(String[] args)  {
        //on je interfejs koji je autoclosable
        /**
         * da bi ostvario konekciju moram znati
         * gdje je baza = url ili adresa
         * username :root
         * password :route
         */
//        String sqlUpit ="SELECT * FROM persons";
//        //prepare ce izvrsit ovaj upit
        List<Person> personList = new ArrayList<>();
        try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/shop","root", "route");
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM persons");
            ResultSet resultSet = preparedStatement.executeQuery();)
        {
            //jedan red jedan while

            while (resultSet.next()) {
                //jedan red ce kreirati jedan objekat po sablonu klase
                Person person = new Person();

                Integer id = resultSet.getInt("id");
                String firstName = resultSet.getString("first_name");
                String lastName = resultSet.getString("last_name");
                String nin = resultSet.getString("nin");
                Date birthDate = resultSet.getDate("birthday");
                LocalDate localDate = birthDate.toLocalDate();


                person.setId(id);
                person.setName(firstName);
                person.setSurname(lastName);
                person.setNin(nin);
                person.setBirthday(localDate);

                personList.add(person);

            }

            //kad lamda ne radi nista drugo nego poziva println nad out objektom onda kazemo ovako
            //znamo da su u person listi sve persone
            personList
                    .forEach(System.out::println);
        }catch (SQLException exception){
            System.err.println(exception.getMessage());
        }
        PersonTableBuilder personTableBuilder = new PersonTableBuilder(personList);
        JTable tableView = personTableBuilder.toTab();
        JFrame jFrame = new JFrame("Persons");
        JScrollPane scrollPane = new JScrollPane(tableView);
        jFrame.add(scrollPane);
        jFrame.setSize(800,400);
        jFrame.setVisible(true);

    }
}
