//#include <my_global.h>
#include <mysql.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
int main(int argc, char **argv)
{
   MYSQL *conn;
   int err;
   MYSQL_RES *resultado;
   MYSQL_ROW row;

   conn = mysql_init(NULL);
   if (conn==NULL) {
   	printf ("Error al crear la conexi￳n: %u %s\n",
                 	mysql_errno(conn), mysql_error(conn));
   	exit (1);
   }
 
conn = mysql_real_connect (conn, "localhost","root", "mysql", "Campeonato",0, NULL, 0);
   if (conn==NULL) {
   	printf ("Error al inicializar la conexion: %u %s\n",
                 	mysql_errno(conn), mysql_error(conn));
   	exit (1);
   }
  
   printf ("Dame el nombre del jugador\n");
   scanf ("%s", nom);
  
   char consulta [80];
   strcpy (consulta,"SELECT Jugadores.Nombre FROM Jugadores, Ranking WHERE Jugadores.Nombre = ‘ nom’");
   strcat (consulta, nom)  
   err=mysql_query (conn, consulta);
   if (err!=0) {
   	printf ("Error al consultar datos de la base %u %s\n",
                 	mysql_errno(conn), mysql_error(conn));
   	exit (1);
   }
resultado = mysql_store_result (conn);
row = mysql_fetch_row (resultado);
int contador = 0;
if (row == NULL)
printf ("No se han obtenido datos en la consulta\n");
else
   	while (row !=NULL) {
	contador++;
	return contador;
   }
  printf(“%s ha jugado %u partidas\n”, nom, contador);
mysql_close (conn);
exit(0);
}
