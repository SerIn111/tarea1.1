//Sergio Rolando Inestroza Amaya 20182002621

void main()
{
  List <Empleado> empleados = [Empleado('Sergio', 10, 15000), Empleado('German', 20, 16000), Empleado('Rocio', 30, 15500), Empleado('Aaron', 40, 12000)];
  // final E1 = Empleado('Sergio', 10, 15000);
  // final E2 = Empleado('German', 20, 16000);
  // final E3 = Empleado('Rocio', 30, 12000);
  // final E4 = Empleado('Aaron', 40, 14000);

  print("Salarios antes del aumento");
  for (var empleado in empleados)
  {
    print(empleado);
  }

  aumentarSalario(empleados, porcentaje: 50);

  print("Salarios despues del aumento");
  for (var empleado in empleados)
  {
    print(empleado);
  }
}

class Empleado
{
  final String nombre;
  final int id;
  double salario;

  Empleado(this.nombre, this.id, this.salario)
  {}

  @override
  String toString() 
  {
    return "Empleado: $nombre, ID: $id, Salario: $salario";
  }
}

void aumentarSalario(List<Empleado> empleados, {required double porcentaje})
{
  if(porcentaje <= 0)
  {
    print("El aumento de salario debe ser un porcentaje mayor que cero");
  }
  else
  {
    // empleados.salario += empleados.salario * (porcentaje / 100);

    for(var empleado in empleados)
    {
      empleado.salario += empleado.salario * (porcentaje / 100);
    }
  }
}