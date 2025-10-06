//Sergio Rolando Inestroza Amaya 20182002621
void main()
{
  List<Map<String, String>> contactos = 
  [
    {'nombre' : 'Sergio', 'telefono' : '9999-5555', 'email' : 'sergio.inestroza@unah.hn'},
    {'nombre' : 'Jorge', 'telefono' : '8888-5555', 'email' : 'jorge.matute@unah.hn'},
    {'nombre' : 'Alexa', 'telefono' : '3333-5555', 'email' : 'alexa.rivas@unah.hn'}
  ];

  // mostrarContactos(contactos);
  // print(" ");
  print(buscarContacto(contactos,'Juan'));
  print(" ");
  mostrarContactos(contactos);
}

void mostrarContactos(List contactos)
{
  for(int i = 0; i < contactos.length; i++)
  {
    print(contactos[i]);
  }
}

List? buscarContacto(List<Map<String, String>> contactos, String nombre)
{
  print('Buscando a $nombre...');
  for(int i = 0; i < contactos.length; i++)
  {
    if(contactos[i].containsValue(nombre))
    {
      print('Contacto encontrado ${contactos[i]}');
      contactos.removeAt(i);
    }
    else
    {
      return null;
    }
  }
  List datos = contactos;
  return datos;
}

void eliminarContacto()
{
  
}