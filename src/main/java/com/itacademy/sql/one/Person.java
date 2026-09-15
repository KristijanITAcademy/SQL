package com.itacademy.sql.one;

import java.io.Serializable;
import java.time.LocalDate;

public class Person implements Serializable {
    private Integer id;
    private String name;
    private String surname;
    private String nin;
    private LocalDate birthday;

    //Klasa Person ce imati svoj ekvivalnet tabelu Persons
    //Plain old Java Object POJO
    //Java Bean

    /**
     * Dobro je da klasa koja se veze sa tabelom bude Java Bean, uslov:
     * - da posjeduje konstruktor bez parametara  no -arg constructor
     * - sva polja private vidljivosti
     * - implementirati Serializable - interfejs bez abstract metode
     * - public getter i setter
     *
     *
     */
    public Person() {
    }

    public Person(Integer id, String name, String surname, String nin, LocalDate birthday) {
        this.id = id;
        this.name = name;
        this.surname = surname;
        this.nin = nin;
        this.birthday = birthday;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getNin() {
        return nin;
    }

    public void setNin(String nin) {
        this.nin = nin;
    }

    public LocalDate getBirthday() {
        return birthday;
    }

    public void setBirthday(LocalDate birthday) {
        this.birthday = birthday;
    }

    @Override
    public String toString() {
        return "Person{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", surname='" + surname + '\'' +
                ", nin='" + nin + '\'' +
                ", birthday=" + birthday +
                '}';
    }
}
