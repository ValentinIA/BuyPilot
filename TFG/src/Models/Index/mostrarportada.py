import random
from mysql.connector import Error
from mysql.connector import ProgrammingError
from Models.Conexion_db import get_conexion

def mostrar_portada():
    try:
        # Realizamos la conexión a la base de datos
        conexion = get_conexion()

        if conexion.is_connected():
            cursor = conexion.cursor()
            try:
                # Obtener todos los IDs disponibles
                sql = "select id from productos_favoritos"
                cursor.execute(sql)
                cantidad = cursor.fetchall()

                # Mezclamos los IDs para obtener un orden aleatorio
                ids_disponibles = [fila[0] for fila in cantidad]
                random.shuffle(ids_disponibles)

                favoritos = []
                titulos_añadidos = set()

                # Vamos recorriendo los IDs hasta tener 18 productos únicos o acabar la lista
                for id_producto in ids_disponibles:
                    if len(favoritos) >= 18:
                        break

                    sqlfinal = "select titulo, precio, imagen_url, url, tienda, id_usuario from productos_favoritos where id=%s"
                    cursor.execute(sqlfinal, (id_producto,))
                    consultas = cursor.fetchone()

                    if consultas is None:
                        continue  # En caso de que no haya resultado, saltamos

                    titulo_actual = consultas[0]

                    if titulo_actual not in titulos_añadidos:
                        favorito = {
                            "titulo": titulo_actual,
                            "precio": str(consultas[1]),
                            "imagen_url": consultas[2],
                            "url": consultas[3],
                            "tienda": consultas[4],
                            "usuario": consultas[5]
                        }
                        favoritos.append(favorito)
                        titulos_añadidos.add(titulo_actual)

                return favoritos

            except ProgrammingError as e:
                return {"error": True, "msg": "Error en la consulta"}

    except Error as e:
        return {"error": True, "msg": f"Error al conectarse a la base de datos: {e}"}

    finally:
        if "conexion" in locals() and conexion.is_connected():
            cursor.close()
            conexion.close()
