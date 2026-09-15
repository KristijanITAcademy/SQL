package com.itacademy.sql.one;

import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import java.util.List;


/**
 * kreiram klasu koja ce dobiti poatke : List<>Person</>
 *
 * PersonTable treba da vizualno prikaze podatke
 */
public class PersonTableBuilder {

    private final List<Person> personList;

    public PersonTableBuilder(List<Person> personList){
        this.personList = personList;
    }

    public List<Person> getPersonList() {
        return personList;
    }

    //JTable - kako ce se modelirati prikazivanje podataka DefaultTableModel <--->List<Persona>
    //defaultna, ona predstavlja bridge, imzedu ucitane liste i JTable
    public JTable toTab(){
        String [] columnNames = {"ID", "First Name", "Last Name", "JMBG", "Birthday"};
        DefaultTableModel model = new DefaultTableModel(columnNames, 0);
        for (Person person : personList){
            Object[] row = {person.getId(), person.getName(), person.getSurname(), person.getNin(), person.getBirthday()};
            model.addRow(row);
        }
        JTable jTable = new JTable(model);
        return jTable;
    }
}
