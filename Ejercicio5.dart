//Sergio Rolando Inestroza Amaya 20182002621

void main()
{
  Map<String, List<double>> notasEstudiantes = 
  {
    'Sergio': [70, 80, 90, 100],
    'Jeffry' : [90, 80, 95, 100],
    'Nelson' : [65, 65, 65, 65]
  };

  print('Promedio de Sergio: ${calcularPromedio(notasEstudiantes['Sergio']!)}');
  print('Promedio de Jeffry: ${calcularPromedio(notasEstudiantes['Jeffry']!)}');
  print('Promedio de Nelson: ${calcularPromedio(notasEstudiantes['Nelson']!)}');
  print('');
  print('El mejor estudiante es ${obtenerMejorEstudiante(notasEstudiantes)} con un promedio de ${calcularPromedio(notasEstudiantes[obtenerMejorEstudiante(notasEstudiantes)]!)}');
}

double calcularPromedio(List<double> notas)
{
  double prom = 0;
  for(int i = 0; i <= notas.length - 1; i++)
  {
    prom += notas[i];
  }
  prom = prom / (notas.length);
  return prom;
}

String obtenerMejorEstudiante(Map<String, List<double>> notasEstudiantes)
{
  List<String> estudiantes = [];
  List<double> notas = [];
  String mejorestudiante = '';
  double promedioactual, promediomasalto = 0;

  //Para extraer los estudiantes del mapa
  for(int i = 0; i < notasEstudiantes.length; i++) 
  {
    estudiantes.add(notasEstudiantes.keys.toList().elementAt(i));
  }

  //Recorrer las notas de cada estudiante
  for(int j = 0; j < estudiantes.length; j++)
  {
    notas.clear();
    promedioactual = 0;

    //Para calcular el promedio de las notas obtenidas del estudiante actual
    for(int k = 0; k < notasEstudiantes[estudiantes[j]]!.toList().length; k++) 
    {
      promedioactual += notasEstudiantes[estudiantes[j]]!.toList().elementAt(k);
    }
    promedioactual = promedioactual / notasEstudiantes[estudiantes[j]]!.toList().length;
    
    if(promedioactual > promediomasalto) //Si el promedio actual es mayor al promedio mas alto hasta el momento
    {
      promediomasalto = promedioactual;
      mejorestudiante = estudiantes.elementAt(j);
    }
    
  }
  return mejorestudiante;
}