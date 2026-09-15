//Sesion02B
//Mapas

void main() {
  final Map<String, dynamic> persona = {
    "edad": 28,
    "nombre": "Juan",
    "peso": 70.5,
    "mutante": true,
    "academias": {
      0: "Academia Massachusetts",
      1: "Academia X-Men"
    },
    "poderes": <String>["Telepatía", "Telequinesis", "Vuelo"]
  };
  print("persona: $persona");
  print("Edad: ${persona["edad"]}");
  print("Nombre: ${persona["nombre"]}");
  print("Peso: ${persona["peso"]}");
  print("Mutante: ${persona["mutante"]}");
  print("Academias: ${persona["academias"][0]}");
  print("Poderes: ${persona["poderes"]}");
  print("Poder1: ${persona["poderes"][0]}");

}