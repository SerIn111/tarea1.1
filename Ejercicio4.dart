//Sergio Rolando Inestroza Amaya 20182002621
void main()
{
  final coche1 = Coche('Ford', 'Focus');
  final coche2 = Coche('Toyota', 'Corolla', anio: 2009, color: 'Azul');
  mostrarDetalles(coche1, false);
  mostrarDetalles(coche1, true);
  mostrarDetalles(coche2, false);
  mostrarDetalles(coche2, true);
}

class Coche
{
  final String marca;
  final String modelo;
  int anio;
  String color;

  Coche(this.marca, this.modelo, {this.anio = 0, this.color = ''})
  {

  }
}

void mostrarDetalles(Coche coche, bool incluircolor)
{
  if(incluircolor)
  {
    print('Detalles del coche:');
    if(coche.color != '')
    {
      print('Marca ${coche.marca}, Modelo ${coche.modelo}, Año ${coche.anio}, Color ${coche.color}');
    }
    else
    {
      print('Marca ${coche.marca}, Modelo ${coche.modelo}, Año ${coche.anio}');
    }
    
  }
  else
  {
    print('Detalles del coche (sin color):');
    print('Marca ${coche.marca}, Modelo ${coche.modelo}, Año ${coche.anio}');
  }
}