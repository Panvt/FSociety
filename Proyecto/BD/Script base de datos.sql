/* se crea el schema */
CREATE SCHEMA `fsociety` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci ;
/* se deja el schema como activo */
use fSociety

/* se crea la tabla usuario */
CREATE TABLE `fsociety`.`usuario` (
  `id_usuario` INT AUTO_INCREMENT,
  `email` VARCHAR(100) NOT NULL,
  `password` VARCHAR(100) NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido` VARCHAR(45) NOT NULL,
  `rol_usuario` VARCHAR(45) NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE INDEX `idUsuario_UNIQUE` (`id_usuario` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_spanish_ci;

/* se agrega el email como campo no repetible */
ALTER TABLE `fsociety`.`usuario` 
ADD UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE;
;

/* se crea un usuario root de prueba */
INSERT INTO `fsociety`.`usuario` (`id_usuario`, `email`, `password`, `nombre`, `apellido`, `rol_usuario`) VALUES ('1', 'clases.excel01@gmail.com', '123456', 'Mauricio', 'Cadavid', 'root');

/* se crea la tabla producto */

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_producto` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `descripcion_producto` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `presentacion` varchar(70) COLLATE utf8mb4_spanish_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`id_producto`),
  UNIQUE KEY `idproducto_UNIQUE` (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/* se agregan productos para la prueba */

INSERT INTO `fsociety`.`producto` (`id_producto`, `nombre_producto`, `descripcion_producto`, `presentacion`, `cantidad`) VALUES ('1','alcohol','alcohol en tarro para limpieza de superficies.','100 ml','49');
INSERT INTO `fsociety`.`producto` (`id_producto`, `nombre_producto`, `descripcion_producto`, `presentacion`, `cantidad`) VALUES ('2','ambientador','ambientador para interiores, fragancias varias.','1000 ml','74');
INSERT INTO `fsociety`.`producto` (`id_producto`, `nombre_producto`, `descripcion_producto`, `presentacion`, `cantidad`) VALUES ('3','antibacterial','Gel de uso personal.','200 ml','58');
INSERT INTO `fsociety`.`producto` (`id_producto`, `nombre_producto`, `descripcion_producto`, `presentacion`, `cantidad`) VALUES ('4','atomizador','tarro para reenvasar diversos liquidos.','Tarro','17');
INSERT INTO `fsociety`.`producto` (`id_producto`, `nombre_producto`, `descripcion_producto`, `presentacion`, `cantidad`) VALUES ('5','balde','balde pequeño','10 lts','84');
INSERT INTO `fsociety`.`producto` (`id_producto`, `nombre_producto`, `descripcion_producto`, `presentacion`, `cantidad`) VALUES ('6','balde','balde mediano','12 lts','62');
INSERT INTO `fsociety`.`producto` (`id_producto`, `nombre_producto`, `descripcion_producto`, `presentacion`, `cantidad`) VALUES ('7','balde','balde grande','15 lts','28');
INSERT INTO `fsociety`.`producto` (`id_producto`, `nombre_producto`, `descripcion_producto`, `presentacion`, `cantidad`) VALUES ('8','bolsa','bolsa resistente hasta 5 kilogramos','industrial x6','85');
INSERT INTO `fsociety`.`producto` (`id_producto`, `nombre_producto`, `descripcion_producto`, `presentacion`, `cantidad`) VALUES ('9','bolsa','bolsa resistente hasta 5 kilogramos','jumbo x6','67');
INSERT INTO `fsociety`.`producto` (`id_producto`, `nombre_producto`, `descripcion_producto`, `presentacion`, `cantidad`) VALUES ('10','bolsa','bolsa resistente hasta 5 kilogramos','papelera x10','14');
INSERT INTO `fsociety`.`producto` (`id_producto`, `nombre_producto`, `descripcion_producto`, `presentacion`, `cantidad`) VALUES ('11','bolsa','bolsa resistente hasta 5 kilogramos','papelera x6','76');
INSERT INTO `fsociety`.`producto` (`id_producto`, `nombre_producto`, `descripcion_producto`, `presentacion`, `cantidad`) VALUES ('12','bolsa','bolsa resistente hasta 5 kilogramos','institucional x6','53');
INSERT INTO `fsociety`.`producto` (`id_producto`, `nombre_producto`, `descripcion_producto`, `presentacion`, `cantidad`) VALUES ('13','bolsa','bolsa resistente hasta 5 kilogramos','jumbo x10','11');
INSERT INTO `fsociety`.`producto` (`id_producto`, `nombre_producto`, `descripcion_producto`, `presentacion`, `cantidad`) VALUES ('14','bolsa','bolsa resistente hasta 5 kilogramos','papelera x20','89');
INSERT INTO `fsociety`.`producto` (`id_producto`, `nombre_producto`, `descripcion_producto`, `presentacion`, `cantidad`) VALUES ('15','brillador hilaza','paño para limpiar y brillar superficies','40 cm x 20cm','80');
INSERT INTO `fsociety`.`producto` (`id_producto`, `nombre_producto`, `descripcion_producto`, `presentacion`, `cantidad`) VALUES ('16','brillador hilaza','paño para limpiar y brillar superficies','60cm x 20cm','39');
INSERT INTO `fsociety`.`producto` (`id_producto`, `nombre_producto`, `descripcion_producto`, `presentacion`, `cantidad`) VALUES ('17','brillador hilaza','paño para limpiar y brillar superficies','80cm x 20cm','75');
INSERT INTO `fsociety`.`producto` (`id_producto`, `nombre_producto`, `descripcion_producto`, `presentacion`, `cantidad`) VALUES ('18','caneca plástica con tapa','caneca grande','120 lts','87');
INSERT INTO `fsociety`.`producto` (`id_producto`, `nombre_producto`, `descripcion_producto`, `presentacion`, `cantidad`) VALUES ('19','caneca plástica con tapa','caneca mediana','30 lts','44');
INSERT INTO `fsociety`.`producto` (`id_producto`, `nombre_producto`, `descripcion_producto`, `presentacion`, `cantidad`) VALUES ('20','caneca plástica con tapa','caneca pequeña','45 lts','67');
INSERT INTO `fsociety`.`producto` (`id_producto`, `nombre_producto`, `descripcion_producto`, `presentacion`, `cantidad`) VALUES ('21','cepillo cerda dura','cepillo de cerdas metalicas','1 un','23');
INSERT INTO `fsociety`.`producto` (`id_producto`, `nombre_producto`, `descripcion_producto`, `presentacion`, `cantidad`) VALUES ('22','cepillo cerda dura plantilla de madera','cepillo de cerdas metalicas, mango en madera','1 un','52');
INSERT INTO `fsociety`.`producto` (`id_producto`, `nombre_producto`, `descripcion_producto`, `presentacion`, `cantidad`) VALUES ('23','cepillo cerda suave','cepillo de cerdas en nylon','1 un','7');

/* consulta para determinar el rol de un usuario, si devuelve vacio es porque no existe */
/* cambiar los txt por la variable ingresada en la pagina */
select rol_usuario from usuario where email='txtbox_email' and password = 'txtbox_password'

/* consulta para registrar usuario */
INSERT INTO `fsociety`.`usuario` (`email`, `password`, `nombre`, `apellido`, `rol_usuario`) VALUES ('txtbox_email', 'txtbox_password', 'txtbox_nombre', 'txtbox_apellido', 'txtbox_rol');

/* consulta para eliminar un usuario */
select id_usuario from usuario where email = 'txtbox_email';
/* se almacena el resul set obtenido y ese es el que se elimina en la siguiente sentencia */
DELETE FROM `fsociety`.`usuario` WHERE (`id_usuario` = 'resul set');
/* consulta de muestra */
DELETE FROM `fsociety`.`usuario` WHERE (`id_usuario` = (select id_usuario from usuario where email = 'clases.excel01@gmail.com_1') );

/* consulta para crear producto */
INSERT INTO `fsociety`.`producto` ( `nombre_producto`, `descripcion_producto`, `presentacion`, `cantidad`) VALUES ('txtbox_nombreproducto','txtbox_descripcion','txtbox_unidad','txtbox_cantidad');
/* consulta para mostrar que si quedo ingresado el producto */
select * from producto where id_producto = (select max(id_producto) from producto);

/* consulta para eliminar producto */
delete from producto where id_producto = 'txtbox_idproducto';
/* consulta para mostrar que el producto ya no existe en la BD */
select * from producto where id_producto = 'txtbox_idproducto';

/* consulta para ventas */
/* se muestra el resultado de la consulta de aquellos productos que contengan (like) lo escrito en nombre_producto */
select * from producto where nombre_producto like '%txtbox_nombre%';

/*se verifica que la cantidad que el cliente quiere comprar si este disponible */
select cantidad from producto where id_producto='txt_id_producto';
/* si es mayor al resul set obtenido, generar alerta, si es menor o igual usar la siguiente instruccion: */
update producto set cantidad =cantidad - 'txtbox_cantidad' where id_producto ='txtbox_id_producto';



/* consulta para ingresar inventario, solo lo puede hacer un admin o un root */
update producto set cantidad =cantidad +'txtbox_cantidad' where id_producto ='txtbox_id_producto';


/* consulta el inventario disponible */
select * from producto;