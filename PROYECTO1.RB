require 'rubygems'
require 'terminal-table/import'
def op3(pila_opcion1)
    libro=pila_opcion1[:tope]
    begin
        nuevo_libro = libro[:siguiente]
        libro=nuevo_libro
        t = table ['ISBN', 'NOMBRE LIBRO']
        t << [libro[:ISBN], libro[:nombre]]
        t << [3, 4]
        t.add_separator
        t << [4, 6]
        puts t
    end while libro[:siguiente]!=nil
    gets()
end

def op1(pila_opcion1)
  puts 'Ingrese el nombre del libro: '
  nombre_libro =gets.chomp
  puts 'Ingrese el autor del libro: '
  autor_libro = gets.chomp
  puts 'Ingrese el ISBN {10 digitos}: '
  isbn = gets.chomp
  puts 'Ingrese el Precio del libro: '
  precio_libro = gets.chomp
  max2 = 0
  libro={
    nombre:nombre_libro,
    autor: autor_libro,
    ISBN: isbn,
    Precio: precio_libro,
    siguente: nil
  }
   if max2 <= pila_opcion1[:max]
    max2+=1
    libro[:siguente] = pila_opcion1[:tope]
    pila_opcion1[:tope] = libro
    aux = pila_opcion1[:tope]
    elsif aux[:ISBN] == isbn
      puts 'El ISBN ya existe'
    else 
        puts "SE ENCUENTRA LLENA"
    end
    puts "tope #{pila_opcion1[:tope]}"
    puts "aux #{aux[:ISBN]}"
    puts "elemento #{libro[:siguente]}"
    gets()
end

pila_opcion1={
  tope: nil,
  max:19,
  libro:nil
}

begin
    puts "\tBiblioteca"
    puts 'Listado de opciones: '
    puts '1- Registro de Nuevos Libros'
    puts '2- Mostrar'
    puts '3- Listado de Libros'
    puts '4- Orden Descendente'
    puts '5- Eliminar un elemento'
    puts '6- Salir'
    print 'Ingrese una opcion: '
    opciones = gets.chomp
    if opciones == '1'
       op1(pila_opcion1)
    elsif opciones == '2'
        mostrar(cola)
    elsif opciones == '3'
        op3(pila_opcion1)
    elsif opciones == '4'
        #orden_descendente(cola)
    elsif opciones == '5'
        #eliminar(cola)
    end
end while opciones != '6'