#include <iostream>
#include <fstream>
#include <string>
#include <stdio.h>      /* printf, scanf, puts, NULL */
#include <stdlib.h>     /* srand, rand */
#include <set>
#include <vector>
#include <algorithm>
#include<sys/stat.h>
#include<sys/types.h>

using namespace std;

int main() {
   // Crea un fichero de salida

   string nombreCarpeta;
   cout << "Indica el nombre de este set de pruebas: " << endl;
   cin >> nombreCarpeta;
   nombreCarpeta += "-JP";
   if(mkdir(nombreCarpeta.c_str(),0777)==-1)//creating a directory
   {
	cout << "error al crear carpeta" << endl;
        exit(1);
   }
   
   int maxPreparadores, boolPredecesor, boolTiempo;
   cout << "introduce el numero maximo de preparadores por ejericio" << endl;
   cin >> maxPreparadores;
   cout << "introduce si deseas que los ejercicios puedan tener predecesores(1 si, 0 no)" << endl;
   cin >> boolPredecesor;
   cout << "introduce si deseas que los ejercicios puedan tener tiempo de ejercicio(1 si, 0 no)" << endl;
   cin >> boolTiempo;
   
   for(int numeroArchivos = 0; numeroArchivos < 10; ++numeroArchivos){
      string aux = nombreCarpeta;
      aux += "/prueba-";
      aux += to_string(numeroArchivos);
      aux += ".pddl";
      ofstream fs(aux.c_str()); 

      fs << 
	    "(define (problem prueba-1)" << endl <<
				    "(:domain exercises)" << endl <<
				    "(:objects level1 level2 level3 level4 level5 level6 level7 level8 level9 level10 - level" << endl <<
						      "gap0 gap1 gap2 gap3 gap4 gap5 gap6 - margin" << endl <<
						      "lmax - ultra-level" << endl <<
						      "day1 day2 day3 day4 day5 day6 day7 day8 day9 day10 day11 day12 day13 day14 day15 - date" << endl <<
						      "exercise1 exercise2 exercise3 exercise4 exercise5 exercise6 exercise7 - exercise)" << endl <<
			    "(:init" << endl <<
			    
			    "(sucesor gap0 gap1)" << endl <<
			    "(sucesor gap1 gap2)" << endl <<
			    "(sucesor gap2 gap3)" << endl <<
			    "(sucesor gap3 gap4)" << endl <<
			    "(sucesor gap4 gap5)" << endl <<
			    "(sucesor gap5 gap6)" << endl <<

			    "(sucesor day1 day2)" << endl <<
			    "(sucesor day2 day3)"<< endl <<
			    "(sucesor day3 day4)"<< endl <<
			    "(sucesor day4 day5)"<< endl <<
			    "(sucesor day5 day6)"<< endl <<
			    "(sucesor day6 day7)"<< endl <<
			    "(sucesor day7 day8)"<< endl <<
			    "(sucesor day8 day9)"<< endl <<
			    "(sucesor day9 day10)"<< endl <<
			    "(sucesor day10 day11)"<< endl <<
			    "(sucesor day11 day12)"<< endl <<
			    "(sucesor day12 day13)"<< endl <<
			    "(sucesor day13 day14)"<< endl <<
			    "(sucesor day14 day15)"<< endl <<
			    "(sucesor day15 END)" << endl <<

			    "(sucesor level1 level2)"<< endl <<
			    "(sucesor level2 level3)"<< endl <<
			    "(sucesor level3 level4)"<< endl <<
			    "(sucesor level4 level5)"<< endl <<
			    "(sucesor level5 level6)"<< endl <<
			    "(sucesor level6 level7)"<< endl <<
			    "(sucesor level7 level8)"<< endl <<
			    "(sucesor level8 level9)"<< endl <<
			    "(sucesor level9 level10)"<< endl <<

			    "(current-day day1)" << endl;
			    

	    if(maxPreparadores <= 7) maxPreparadores = 6; 
	    
	    for(int numEjercicios = 1; numEjercicios <= 7; ++numEjercicios){
		int numLevel = rand() % 10 + 1; //del 1 al 10, que son el numero de niveles
		fs << "(achieved exercise" << numEjercicios <<" level" << numLevel << ")" << endl;
	    }
	    
	    
	    set<int> mySet;
	    for(int numEjercicios = 1; numEjercicios <= 7; ++numEjercicios){
		mySet.clear();
		for(int i = 1; i < maxPreparadores; ++i){
		    int numSegundoEjercicio = rand() % 7 + 1;
		    if (mySet.find(numSegundoEjercicio) == mySet.end()){
			mySet.insert(numSegundoEjercicio);
			fs << "(preparador exercise" << numEjercicios <<" exercise" << numSegundoEjercicio << ")" << endl;
		    }
		}
	    }
	    
	    mySet.clear();
	    
	    if(boolPredecesor == 1){
		for(int numEjercicios = 1; numEjercicios <= 7; ++numEjercicios){
		    int numSiNo = rand() % 1;
		    if(numSiNo == 1){
			int numSegundoEjercicio = rand() % 7 + 1;
			fs << "(predecesor exercise" << numEjercicios <<" exercise" << numSegundoEjercicio << ")" << endl;
		    } 
		}
	    }
	    fs << ")" << endl;
	    
	    if(boolTiempo == 1){
		for(int numEjercicios = 1; numEjercicios <= 7; ++numEjercicios){
		  //int minutos = rand() % 90 + 1;
		  //fs << "(time exercise" << numEjercicios <<" level" << numLevel << ")" << endl;
		}
	    }
	    
	    
	    int numEjerciciosGoal = rand() % 6 + 1; //del 1 al 7
	    
	    if(numEjerciciosGoal > 1) fs << "(:goal (and ";
	    else fs << "(:goal ";
	    for(int i = 1; i <= numEjerciciosGoal; ++i){
		int numEjercicio = rand() % 7 + 1;
		if(mySet.find(numEjercicio) == mySet.end()){
		    mySet.insert(numEjercicio);
		    int numLevel = rand() % 10 + 1;
		    fs << "(achieved exercise" << numEjercicio <<" level" << numLevel << ")" << endl;
		}
	    }
	    if(numEjerciciosGoal > 1) fs << ")))" << endl;
	    else fs << "))" << endl;
	    fs.close();
	    mySet.clear();
   }
}
   
   