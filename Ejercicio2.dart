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
  actualizarInventario(inventario, 1, 40);
   print("Inventario despues de la actualizacion");
  mostrarInventario(inventario);
  
}

mostrarInventario(Map<int, dynamic> inventario)
{
  print(inventario);
  int cont = 0;
  for(int producto in inventario.keys)
  {
    cont++;
  }
  print(cont);
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

calcularValorTotal(Map<int, dynamic> inventario)
{

}