package com;

import java.util.Date;





public class Beans {
     Long id;
String nom;
String prenom;
String numero;

    String email;
    
    private Beans() {}
    public Beans(String nom,String prenom,String email,String numero) {
   
 this.nom = nom;
 this.prenom=prenom;
 this.email=prenom;
 this.numero=numero;
    }
    

    public String getNom() {
        return nom;
    }


    public String getPrenom() {
        return prenom;
    }
    public String getEmail() {
        return email;
    }
    public String getNumero() {
        return numero;
    }
   
    public  void setNom(String nom) {
        this.nom=nom;;
    }


    public void setPrenom(String prenom) {
        this.prenom=prenom;
    }
    public void setEmail(String email) {
       this.email=email;
    }
    public void setNumero(String numero) {
       this.numero=numero;
    }
   
    
}