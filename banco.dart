
void main(){
CuentaBancaria cuentanueva= CuentaBancaria('Marvin Perdomo', 15000);

cuentanueva.consultar();

cuentanueva.depositar(1000.00);
cuentanueva.retirar(200.50);
cuentanueva.retirar(20000.00);
cuentanueva.retirar( -10.00);

}


class CuentaBancaria{
final String titular;
 double saldo;

CuentaBancaria(this.titular, this.saldo);

void depositar(double cantidad){
  if(cantidad >0){
    saldo+=cantidad;
    print('Se ha realizado el deposito, su saldo actual es:$saldo');

  }else{
    print('La cantidad s depositar no puede ser negativa');
  }
}

void retirar(double cantidad){
if(cantidad>0){
  if(cantidad<=saldo){
    saldo-=cantidad;
    print('Se ha realizado su retiro correctamente, su saldo actual es:$saldo');
  } else{
    print('la cantidad a retirar supera a la cantidad de saldo actual');
  }
  
}
else{
    print('el monto a retirar deber ser mayor a cero');
  }
}

void consultar(){
  print('Su saldo actual es:$saldo');
}
}
