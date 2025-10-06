//Sergio Rolando Inestroza Amaya 20182002621
void main()
{
  List<Map<String, String>> agenda = 
  [
    {'nombre' : 'Sergio', 'telefono' : '9999-5555', 'email' : 'sergio.inestroza@unah.hn'},
    {'nombre' : 'Jorge', 'telefono' : '8888-5555', 'email' : 'jorge.matute@unah.hn'},
    {'nombre' : 'Alexa', 'telefono' : '3333-5555', 'email' : 'alexa.rivas@unah.hn'}
  ];

  print(buscarContacto(agenda,'Alexa'));
  print(" ");
  eliminarContacto(agenda, 'Alexa');
  print(" ");
  print("Agenda después de la eliminación:");
  mostrarContactos(agenda);
}

void mostrarContactos(List agenda)
{
  print(agenda);
  // for(int i = 0; i < agenda.length; i++)
  // {
  //   print(agenda[i]);
  // }
}

Map? buscarContacto(List<Map<String, String>> agenda, String nombre)
{
  Map<String, String> datos = {};
  print('Buscando a $nombre...');
  for(int i = 0; i < agenda.length; i++)
  {
    if(agenda[i].containsValue(nombre))
    {
      datos = agenda[i];
      break;
    }
    else
    {
      if(i == agenda.length - 1)
      {
        return null;
      }
    }
  }

  return datos;
}

void eliminarContacto(List <Map<String, String>> agenda, String nombre)
{
  print('Eliminando a $nombre...');
  for(int i = 0; i < agenda.length; i++)
  {
    if(agenda[i].containsValue(nombre))
    {
      agenda.removeAt(i);
      break;
    }
    else
    {
      if(i == agenda.length - 1)
      {
        return null;
      }
    }
  }
}