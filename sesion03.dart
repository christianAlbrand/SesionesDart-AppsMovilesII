//Estructuras de control
void main(){
  final edad = 28;
  final List<int> numeros = [1, 2, 3, 8, 5, 2];
  final int opcion = 0;
  int bandera = 10;

  print("Edad: $edad");
  print("El numero 0: ${numeros[0]}");

  //if
  // if (edad > 18){
  //   print("Es mayor de edad");
  // }else{
  //   print("Es menor de edad");
  // }
  print("${edad > 18 ? 'Es mayor de edad' : 'Es menor de edad'}");
  //if-else
  //switch
  switch(opcion){
    case 0:{
      print("La opcion fue 0");
      break;
    }
    case 1:{
      print("La opcion fue 1");
      break;
    }
    case 2:{
      print("La opcion fue 2");
      break;
    }
    case 3:{
      print("La opcion fue 3");
      break;
    }
    default:{
      print("La opcion no es valida");
      break;
    }
  }
  //for
  for(int i=0; i < numeros.length; i++){
    print("El elemento $i es: ${numeros[i]}");
  }

  //for-in
  for(int numero in numeros){
    print("El numero es: $numero");
  }
  //while
  while(bandera > 0){
    print("Bandera = ${bandera--}");
  }
  //dowhile

  print("------CALCULAR MODA, MEDIANA Y MEDIA DE UN ARREGLO------");
  print("Los valores fueron: $numeros");
  print("Numeros ordenados: ${numerosOrdenados(numeros)}");
  print("Cantidad de muestras: ${numeros.length}");
  print("Media: ${media(numeros)}");
  print("Mediana: ${mediana(numeros)}");
  print("Moda: ${moda(numeros)}");
}

int sumaDeArreglos(List<int> numeros) {
  int total = 0;

  for (int numero in numeros) {
    total = total + numero;
  }

  return total;
}

double media(List<int> numeros) {
  double mediaTotal = sumaDeArreglos(numeros) / numeros.length;
  return mediaTotal;
}

double mediana(List<int> numeros) {
  List<int> ordenados = numerosOrdenados(numeros);

  int mitad = ordenados.length ~/ 2;

  if (ordenados.length % 2 == 0) {
    return (ordenados[mitad - 1] + ordenados[mitad]) / 2;
  } else {
    return ordenados[mitad].toDouble();
  }
}

int moda(List<int> numeros) {
  Map<int, int> repeticiones = {};
  for (int numero in numeros) {
    repeticiones[numero] = (repeticiones[numero] ?? 0) + 1;
  }

  int moda = numeros[0];
  for (int numero in repeticiones.keys) {
    if (repeticiones[numero]! > repeticiones[moda]!) moda = numero;
  }
  return moda;
}

List<int> numerosOrdenados(List<int> numeros) {
  numeros.sort();
  return numeros;
}