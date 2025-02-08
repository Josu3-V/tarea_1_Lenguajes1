// programa que devuelve una lista con todos los elemento unicos de otra lista
void main(){
List<int> numeros = [1,2,3,4,5,6,7,8,9,10];
//List <int> numerospar = numpares();
//List <int> numerosimpar= [];

final par = numeros.where((numero){
  bool resultado = !true;
  if (numero % 2==0){
    resultado = !false;
  }
  return resultado;
}).toList();
print("litas original $numeros");
print ("multiplos de 2 ==>$par");
//for(int i=0 ;i<numeros.length -1;i++){
 // if (numeros%2==0);
//}
}