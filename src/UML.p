@startuml
class TiendaMusica {
  +main(): void
}

class Cliente {
  -nombre: String
  -saldo: double
  +Cliente(nombre: String, saldo: double)
  +getNombre(): String
  +getSaldo(): double
  +abonarSaldo(monto: double): void
  +verCatalogo(): void
  +comprarCancion(cancion: Cancion): void
  +verCancionesCompradas(): void
}

class Administrador {
  +verCatalogo(): void
  +agregarCancion(cancion: Cancion): void
  +eliminarCancion(cancion: Cancion): void
  +verCancionesVendidas(): void
}

class Cancion {
  -nombreCancion: String
  -nombreCantante: String
  -precio: double
  -archivo: String
  -portada: String
  +Cancion(nombreCancion: String, nombreCantante: String, precio: double, archivo: String, portada: String)
  +getNombreCancion(): String
  +getNombreCantante(): String
  +getPrecio(): double
  +getArchivo(): String
  +getPortada(): String
}

class Archivo {
  -nombreArchivo: String
  +Archivo(nombreArchivo: String)
  +leerDeArchivo(): ArrayList<Cancion>
  +escribirEnArchivo(canciones: ArrayList<Cancion>): void
}

class PaginaHTML {
  -nombrePagina: String
  -archivox: Archivo
  -listaCanciones: ArrayList<Cancion>
  -backgroundColor: String
  -textColor: String
  +PaginaHTML(nombreA: String)
  +crearPagina(): void
  +guardarEstilos(backgroundColor: String, textColor: String): void
}

TiendaMusica --> Cliente
TiendaMusica --> Administrador
Cliente --> Cancion
Administrador --> Cancion
PaginaHTML --> Archivo

@enduml
