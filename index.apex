// tipos de variables 

Integer edad = 21; //entero
Decimal precio = 1.12; // decimal
String nombre = 'Vicky';
Boolean activo = true;
Date today = Date.today();
System.debug('Hola', nombre);

// otros tipos de variable

// Long
// Double
// Datetime
// Id
// Account 
// Contact

//Colecciones 
List<String> frutas new List<>{'Manzana', 'Pera'};
Frutas.add('uva')

Sat<String> unicos = new Set<String>{'A', 'B', 'A'};

Map<String, Integer> stock = new Map<String, Integer>();
stock.put('Manzana, 10');
System.debug(stock.get('Manzana'));


// Condicionales y bucles

if (edad >= 18) {
    System.debug('Mayor de edad');
} else {
    System.debug('Menor de edad');
}

for (Integer i = 0; i < 3; i++) {
    System.debug(i);
}

for (String fruta : frutas) {     
    System.debug(fruta);
}

Integer n = 0;
while (n < 3) { n++; }

// Clases y metodos

public class Calculadora {
    public Integer sumar(Integer a, Integer b) {
        return a + b;
    }
    public static String saludar(String nombre) {
        return 'Hola ' + nombre;
    }
}

Calculadora c = new Calculadora();
System.debug(c.sumar(2, 3));
System.debug(Calculadora.saludar('Victoria'));

// Asi con SOQL y DML

// registro (DML: insert)
Account cuenta = new Account(Name = 'Empresa Prueba');
insert cuenta;

// Consultar registros (SOQL)
List<Account> cuentas = [SELECT Id, Name FROM Account LIMIT 5];
for (Account a : cuentas) {
    System.debug(a.Name);
}

// Actualizar (DML: update)
cuenta.Name = 'Empresa Prueba SAS';
update cuenta;