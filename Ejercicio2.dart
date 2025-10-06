//Sergio Rolando Inestroza Amaya 20182002621

void main()
{
  final Map<int, dynamic> inventario = 
  {
    1 : {'nombre' : 'Lechuga', 'cantidad' : 20, 'precio' : 15.00},
    2 : {'nombre' : 'Libra de tomate', 'cantidad' :  15, 'precio' : 7.5},
    3 : {'nombre' : 'Cereal Fans', 'cantidad' : 17, 'precio' : 90.00}
  };

  // print(inventario[1]['nombre']);

  print("Inventario inicial");
  mostrarInventario(inventario);
  print(" ");
  actualizarInventario(inventario, 2, 40);
  print("Inventario despues de la actualizacion");
  mostrarInventario(inventario);
  print(" ");
  print("Valor total del inventario: ${calcularValorTotal(inventario)}");
}

mostrarInventario(Map<int, dynamic> inventario)
{
  print(inventario);
  //Para ver si muestra la cantidad de productos---------------------------------
  // int cont = 0;
  // for(int producto in inventario.keys)
  // {
  //   cont++;
  // }
  // print(cont);
  //Para ver si muestra la cantidad de productos---------------------------------
}

actualizarInventario(Map<int, dynamic> inventario, int id, int nuevaCantidad)
{
  if(inventario.containsKey(id))
  {
    inventario[id]['cantidad'] = nuevaCantidad;
  }
  else
  {
    print("Ese producto no existe");
  }
}

double calcularValorTotal(Map<int, dynamic> inventario)
{
  double valorTotal = 0;

  for(int producto in inventario.keys)
  {
    valorTotal += inventario[producto]['precio'];
  }
  return valorTotal;
}