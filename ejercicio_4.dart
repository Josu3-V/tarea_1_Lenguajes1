//crear una clase libro con las propiedades de titulo, autor y anioPublicacion. Crear una clase 
//Biblioteca que contega una lista de libros y funciones para:

void main(){
    Bibblioteca miEstante = Bibblioteca();
    Libro libro_1 = Libro("Marvin", "My life", 2025);
    Libro libro_2 = Libro("Jane Austen", "Orgullo y Prejuicio", 1813);
    Libro libro_3 = Libro("Harper Lee", "Matar a un risuenio",1960);
    Libro libro_4 = Libro("James Joyce","Ulises",1922);

    miEstante.agregarLibro(libro_1);
    miEstante.agregarLibro(libro_2);
    miEstante.agregarLibro(libro_3);
    miEstante.agregarLibro(libro_4);

    print("Libros de mi biblioteca\n $miEstante");
    //print (miEstante.miE);

    print("\n\nLibros por anio de publicacion");
    miEstante.por_anioPublicacion(1813);
    
    
    print ("\n\nlibros por autor");
    miEstante.buscarLibro("James Joyce"); 
    

    print("\n\nEliminar libro despues del eliminar");
    miEstante.deletelibro(libro_3);
     print("Libros de mi biblioteca\n $miEstante");

}

class Libro {
    String titulo;
    String autor;
    int anioPublicacion;

    Libro(this.autor, this.titulo, this.anioPublicacion);
        //this.autor = autor;
        //this.titulo = titulo;
        //this.anioPublicacion = anioPublicacion;
    
    String toString() => "autor: $autor, titulo: $titulo, anioPublicacion: $anioPublicacion";
}

class Bibblioteca{
    List<Libro> libros = [];


    void agregarLibro(Libro libro){
        this.libros.add(libro);}
        
    

    void deletelibro(Libro titulo){
        this.libros.remove(titulo);
    
    }
    void buscarLibro(String autor){
        for (int i=0; i<libros.length; i++){
            if (libros[i].autor == autor){
                print(libros[i]);
            }
        }
    }
    void por_anioPublicacion(int anioPublicacion){
        //int temp=0;
        for (int i=0;i>libros.length -1;i++){
            for (int j=0;j<libros.length -i -1;j++){
                if (libros[j].anioPublicacion > libros[j+1].anioPublicacion){
                   Libro temp =libros[j+1]; 
                   libros[j+1]=libros[j+1];
                   libros[j+1]=temp;
                   // temp = libro[j].anioPublicacion;
                    //libro [j]= libro [j+1];
                    //libro [j+1].anioPublicacion = temp;
                } 
            
            }
            
        }
    }

    String toString() {
      return libros.join("\n");
    }
}