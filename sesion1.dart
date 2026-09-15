//sesion2

void main(){
  final int edad = 28;
  final double altura = 5.5;
  final String nombre = "Juan";
  final bool esAlumno = true;
  //final materias = ["Patrones de diseño", "Apps moviles", "Apps moviles II"];
  //final List<String> materias = ["Patrones de diseño", "Apps moviles", "Apps moviles II"];
  //final materias = <String>["Patrones de diseño", "Apps moviles", "Apps moviles II"];

  final List<String> materias = <String>["Patrones de diseño", "Apps moviles", "Apps moviles II"];

  print(
"""
  Edad: $edad
  Altura: $altura
  Nombre: $nombre
  Es alumno: $esAlumno
""");
  print("Materias: $materias");
  print("Materia1: ${materias[0]}");
  print("Materia2: ${materias[1]}");
  print("Materia3: ${materias[2]}");
}