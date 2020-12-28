/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE IF NOT EXISTS `intelo_pack` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `intelo_pack`;

CREATE TABLE IF NOT EXISTS `auditoria_cross_overs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `paquete_id` int(11) DEFAULT NULL,
  `socursal_id` int(11) DEFAULT NULL,
  `empleado_operador_id` int(11) DEFAULT NULL,
  `transporte_id` int(11) DEFAULT NULL,
  `empleado_carga_id` int(11) DEFAULT NULL,
  `tipo` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40000 ALTER TABLE `auditoria_cross_overs` DISABLE KEYS */;
INSERT INTO `auditoria_cross_overs` (`id`, `paquete_id`, `socursal_id`, `empleado_operador_id`, `transporte_id`, `empleado_carga_id`, `tipo`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, 5, 7, 1, 'CARGA PAQUETE', '2020-12-10 09:46:58', '2020-12-10 09:46:58'),
	(2, 2, 1, 5, 7, 1, 'CARGA PAQUETE', '2020-12-10 09:46:58', '2020-12-10 09:46:58'),
	(3, 3, 1, 5, 7, 1, 'CARGA PAQUETE', '2020-12-10 09:46:58', '2020-12-10 09:46:58'),
	(4, 1, 1, 1, 7, 1, 'DESCARGA DE PAQUETE', '2020-12-10 10:53:09', '2020-12-10 10:53:09'),
	(5, 2, 1, 1, 7, 1, 'DESCARGA DE PAQUETE', '2020-12-10 10:53:09', '2020-12-10 10:53:09'),
	(6, 3, 1, 1, 7, 1, 'DESCARGA DE PAQUETE', '2020-12-10 10:53:09', '2020-12-10 10:53:09'),
	(7, 4, 1, 5, 7, 1, 'CARGA PAQUETE', '2020-12-10 11:13:54', '2020-12-10 11:13:54'),
	(8, 5, 1, 5, 7, 1, 'CARGA PAQUETE', '2020-12-11 17:15:11', '2020-12-11 17:15:11');
/*!40000 ALTER TABLE `auditoria_cross_overs` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `clientes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_cliente` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apellido_1_cliente` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apellido_2_cliente` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `razon_social_cliente` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rfc_cliente` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado_cliente` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `municipio_cliente` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `codigo_postal_cliente` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `colonia_cliente` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `calle_cliente` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_exterior_cliente` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_interior_cliente` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cliente` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono_1_cliente` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono_2_cliente` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estatus_cliente` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `empleado_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `clientes_empleado_id_foreign` (`empleado_id`),
  CONSTRAINT `clientes_empleado_id_foreign` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` (`id`, `nombre_cliente`, `apellido_1_cliente`, `apellido_2_cliente`, `razon_social_cliente`, `rfc_cliente`, `estado_cliente`, `municipio_cliente`, `codigo_postal_cliente`, `colonia_cliente`, `calle_cliente`, `no_exterior_cliente`, `no_interior_cliente`, `email_cliente`, `telefono_1_cliente`, `telefono_2_cliente`, `estatus_cliente`, `empleado_id`, `created_at`, `updated_at`) VALUES
	(6, 'EMMANUEL ALVARO', 'RODRIGUEZ', 'HERNANDEZ', 'EMMANUEL SA DE CV', 'ROHE969325MYS', 'Querétaro', 'Querétaro', '76147', 'San José el Alto', '4', '127', NULL, 'manejetskate@gmail.com', '4423058637', NULL, '1', 1, '2020-06-12 15:34:46', '2020-08-25 05:02:55'),
	(10, 'ULISES', 'MAYA', 'CASTILLO', 'ULISES SA. DE CV', '12389929732423', 'Querétaro', 'Querétaro', '76147', 'San José el Alto', '4', '127', '123', 'ulises.maya@intelo.com.mx', '773123719', NULL, '1', 1, '2020-12-01 12:53:01', '2020-12-01 12:53:01'),
	(11, 'CESAR', 'MORELOS', 'LOPEZ', 'CEASR SA. DE CV.', '21739817237123', 'Querétaro', 'Querétaro', '76147', 'Jardines de San José', '4', '127', '123', 'cesar.morelos@intelo.com.mx', '4515236212', NULL, '1', 1, '2020-12-01 13:08:37', '2020-12-11 17:27:02'),
	(12, '123', '123', '123', '123131313', '1232131313', 'Ciudad de México', 'Álvaro Obregón', '01040', 'Campestre', '123', '123', '123', '123@123123', '123', '123', '1', 1, '2020-12-11 17:36:49', '2020-12-11 17:36:49');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `cross_overs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `hora_cross_over` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_cross_over` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estatus_cross_over` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `paquete_id` bigint(20) unsigned DEFAULT NULL,
  `empleado_id` bigint(20) unsigned DEFAULT NULL,
  `socursal_id` bigint(20) unsigned DEFAULT NULL,
  `transporte_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cross_overs_empleado_id_foreign` (`empleado_id`),
  KEY `cross_overs_paquete_id_foreign` (`paquete_id`),
  KEY `cross_overs_socuersal_id_foreign` (`socursal_id`) USING BTREE,
  CONSTRAINT `cross_over_paquete_id_foreign` FOREIGN KEY (`socursal_id`) REFERENCES `socursals` (`id`),
  CONSTRAINT `cross_overs_empleado_id_foreign` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`id`),
  CONSTRAINT `cross_overs_paquete_id_foreign` FOREIGN KEY (`paquete_id`) REFERENCES `paquetes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40000 ALTER TABLE `cross_overs` DISABLE KEYS */;
INSERT INTO `cross_overs` (`id`, `hora_cross_over`, `fecha_cross_over`, `estatus_cross_over`, `paquete_id`, `empleado_id`, `socursal_id`, `transporte_id`, `created_at`, `updated_at`) VALUES
	(1, '6:42:39 pm', '2020-12-01', '1', 1, 1, 1, NULL, '2020-12-01 18:42:39', '2020-12-01 18:42:39'),
	(2, '9:34:31 am', '2020-12-10', '1', 2, 1, 1, NULL, '2020-12-10 09:34:32', '2020-12-10 09:34:32'),
	(3, '9:39:19 am', '2020-12-10', '1', 3, 1, 1, NULL, '2020-12-10 09:39:20', '2020-12-10 09:39:20'),
	(4, '9:41:42 am', '2020-12-10', '1', 4, 1, 1, NULL, '2020-12-10 09:41:42', '2020-12-10 09:41:42'),
	(5, '9:46:58 am', '2020-12-10', '2', 1, 1, 1, 7, '2020-12-10 09:46:58', '2020-12-10 09:46:58'),
	(6, '9:46:58 am', '2020-12-10', '2', 2, 1, 1, 7, '2020-12-10 09:46:58', '2020-12-10 09:46:58'),
	(7, '9:46:58 am', '2020-12-10', '2', 3, 1, 1, 7, '2020-12-10 09:46:58', '2020-12-10 09:46:58'),
	(8, '10:53:08 am', '2020-12-10', '3', 1, 1, 1, 7, '2020-12-10 10:53:09', '2020-12-10 10:53:09'),
	(9, '10:53:08 am', '2020-12-10', '3', 2, 1, 1, 7, '2020-12-10 10:53:09', '2020-12-10 10:53:09'),
	(10, '10:53:08 am', '2020-12-10', '3', 3, 1, 1, 7, '2020-12-10 10:53:09', '2020-12-10 10:53:09'),
	(11, '11:13:54 am', '2020-12-10', '2', 4, 1, 1, 7, '2020-12-10 11:13:54', '2020-12-10 11:13:54'),
	(12, '5:11:43 pm', '2020-12-11', '1', 5, 1, 1, NULL, '2020-12-11 17:11:43', '2020-12-11 17:11:43'),
	(13, '5:15:11 pm', '2020-12-11', '2', 5, 1, 1, 7, '2020-12-11 17:15:11', '2020-12-11 17:15:11'),
	(14, '12:50:20 pm', '2020-12-24', '4', 4, 5, 1, 7, '2020-12-24 12:50:20', '2020-12-24 12:50:20');
/*!40000 ALTER TABLE `cross_overs` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `empleados` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `no_empleado` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre_empleado` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apellido_1_empleado` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apellido_2_empleado` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estatus_empleado` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `estatus_asignado_transporte` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `tipo_empleado_id` bigint(20) unsigned DEFAULT NULL,
  `tipo_transporte_id` bigint(20) unsigned DEFAULT NULL,
  `socursal_id` bigint(20) unsigned DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `empleados_email_unique` (`email`),
  KEY `empleados_tipo_empleado_id_foreign` (`tipo_empleado_id`),
  KEY `empleados_tipo_transporte_id_foreign` (`tipo_transporte_id`),
  KEY `empleados_socursal_id_foreign` (`socursal_id`),
  CONSTRAINT `empleados_socursal_id_foreign` FOREIGN KEY (`socursal_id`) REFERENCES `socursals` (`id`),
  CONSTRAINT `empleados_tipo_empleado_id_foreign` FOREIGN KEY (`tipo_empleado_id`) REFERENCES `tipo_empleados` (`id`),
  CONSTRAINT `empleados_tipo_transporte_id_foreign` FOREIGN KEY (`tipo_transporte_id`) REFERENCES `tipo_transportes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` (`id`, `no_empleado`, `nombre_empleado`, `apellido_1_empleado`, `apellido_2_empleado`, `email`, `email_verified_at`, `password`, `estatus_empleado`, `estatus_asignado_transporte`, `tipo_empleado_id`, `tipo_transporte_id`, `socursal_id`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'EMP-1', 'EMMANIUEL ALVARO', 'RODRIGUEZ', 'HERNANDEZ', 'emmanuel.hernandez@intelo.com.mx', NULL, '$2y$10$xQuvtT.7uFB4nl40gI9UjOYLhZdCYGWrpwB6oygs7QudgXudg7feu', '1', '0', 1, NULL, 1, 'y8WwnAHVPJsIKbR8G76qXDej4BUghA5rlpFZWn7Y9vmKWqbhTrJWEaH6bCDP', '2020-06-09 13:56:12', '2020-09-18 22:41:28'),
	(4, 'EMP-4', 'ULISE', 'MAYA', 'CASTILLO', 'ulises.castillo@intelo.com.mx', NULL, '$2y$10$nrqfkhfMJAFKKsg9Sr304OS6CYwsdsTpVqTTWb8sNx5LgLHRFY90K', '1', '0', 1, NULL, 2, NULL, '2020-06-10 15:02:30', '2020-06-19 15:51:42'),
	(5, 'EMP-5', 'ERNESTO', 'MARTINEZ', 'SALAZAR', 'ernesto@intelo.com.mx', NULL, '$2y$10$NmCXkkqjwSo6LuqVS5hQ4.62XbU7s1W9xP/0LK.MBc0GXrZa.XLsa', '1', '1', 4, NULL, 1, NULL, '2020-07-07 16:13:39', '2020-07-07 16:13:39'),
	(6, 'EMP-6', 'MIGUEL', 'GOMEZ', 'HERNANDEZ', 'miguel.gomez@intelo.com.mx', NULL, '$2y$10$g91kGf3EFiZ7uOW4dg2erehkN8Nlb243GCN6d3vRaPIvMNcSrVsIm', '1', '1', 4, NULL, 1, NULL, '2020-07-07 16:15:51', '2020-07-07 16:15:51'),
	(7, 'EMP-7', 'OBED', 'DEL VALLE', 'FELIX', 'obed.delvalle@gmail.com', NULL, '$2y$10$BDnC/6/y.SwYDJYWYS7HDetvWC7NPeqq/ecm4U7TYaD78aBm6r/Ha', '1', '0', 3, NULL, 1, NULL, '2020-08-05 16:36:09', '2020-08-05 16:36:09'),
	(8, 'EMP-8', 'LUIS', 'MARTINEZ', 'SALAZAR', 'luis.martinez@intelo.com.mx', NULL, '$2y$10$ee0nw6Ix0DEeghlUNh7VruI3FBpjbAiqoQHQ.OKNmVg7FW82srtOW', '1', '0', 4, NULL, 1, NULL, '2020-08-05 17:52:39', '2020-08-05 17:52:39'),
	(9, 'EMP-9', 'CESAR', 'MORELOS', 'LOPEZ', 'cesar.morelos@intelo.com.mx', NULL, '$2y$10$/14xOPvY4uNxBRqz6VEeNOB/ulsaK0ezT1baY1brxpTgW9YHqfGiy', '1', '0', 1, NULL, 1, NULL, '2020-08-25 21:23:36', '2020-08-25 21:23:36'),
	(10, 'EMP-10', 'LETICIA', 'GAMBOA', 'N', 'leticia.gambo@intelo.com.mx', NULL, '$2y$10$Ao0vnISKtaZN2V19Ds18reiWgr37/NqyoXlgRUT1D..7FJ10aGrJC', '1', '0', 2, NULL, 1, NULL, '2020-08-25 21:27:58', '2020-08-25 21:27:58'),
	(11, 'EMP-11', 'ADRIANA', 'PEREZ', 'N', 'adriana.perez@intelo.com.mx', NULL, '$2y$10$9//S5.311QShn9lD2GBv8ut8v/2GtgZGpa.pBDUX5LXdHalLdM1kC', '1', '0', 2, NULL, 1, NULL, '2020-08-25 21:29:24', '2020-12-11 17:27:37'),
	(12, 'EMP-12', 'MIGUEL', 'LOPEZ', 'LOZANO', 'miguel.lopez@intelo.com.mx', NULL, '$2y$10$sXv1ZU7pXDnWPKPSqUFR4OyLjMoqqjGdDkstbTGdm0s3tZh0LoQ9O', '1', '0', 4, NULL, 2, NULL, '2020-08-25 21:32:12', '2020-08-25 21:32:12'),
	(13, 'EMP-13', 'OSCAR', 'MEDINA', 'LAZARO', 'oscar.medina@intelo.com.mx', NULL, '$2y$10$Ql2EQ4bityzmu7ahHVtKQOBxn5vB16tTF9otqP9DfpFkMvD4UHLOu', '1', '0', 4, NULL, 2, NULL, '2020-08-25 21:32:55', '2020-08-25 21:32:55'),
	(14, 'EMP-14', 'GUILLERMO', 'HIDALGO', 'SUAREZ', 'guillermo.hidalgo@intelo.com.mx', NULL, '$2y$10$hYyIBhh/R2JdfMJV9P4pseHQTauTqnZUhD0UgWPTjPMCmzEs4OEu2', '1', '0', 4, NULL, 2, NULL, '2020-08-25 21:34:18', '2020-08-25 21:34:18'),
	(15, 'EMP-15', 'JUAN', 'TORRES', 'HERNANDEZ', 'juan.torres@intelo.com.mx', NULL, '$2y$10$jG2ARNZ6FiRrEc6F3RABX.W3ZU5ROQnOkjVa3FktEKhtKc/DOfCb.', '1', '0', 4, NULL, 3, NULL, '2020-08-25 21:35:28', '2020-08-25 21:35:28'),
	(16, 'EMP-16', 'ARTURO', 'HERNANDEZ', 'GUTIERRES', 'arturo.hernandez@intelo.com.mx', NULL, '$2y$10$u2YZB8b2oRYcJZG.lcELAO.Zw24yFT697kP/OU8ryHpTQqIRjfHOi', '1', '0', 4, NULL, 3, NULL, '2020-08-25 21:36:58', '2020-08-25 21:36:58'),
	(17, 'EMP-17', 'FERNANDO', 'GONZALES', 'RAMIREZ', 'fernando.gonzales@intelo.com.mx', NULL, '$2y$10$pdAp3KaPfLtvcmyopN1ib./m.8F/aoPnWcFOBMrlSJwR1hPpcuJZ2', '1', '0', 4, NULL, 3, NULL, '2020-08-25 21:38:15', '2020-08-25 21:38:15'),
	(18, 'EMP-18', 'JUAN', 'RAMIREZ', 'JUAREZ', 'juan.ramirez@intelo.com.mx', NULL, '$2y$10$GCd7vBPEkxDfbeLn.JO3N.qNjxFJAIBDcTyxbupkcQnVBmlaMx/BK', '1', '0', 4, NULL, 4, NULL, '2020-08-25 21:40:00', '2020-08-25 21:40:00'),
	(19, 'EMP-19', 'ALFREDO', 'HERRERA', 'NUÑEZ', 'alfredo.herrera@intelo.com.mx', '2020-09-14 13:37:08', '$2y$10$0cXmhp/YaJeN.VS.wi9hEuyFZ5yGKBn8iFzP1GfnBFXJ66zF4S46G', '1', '0', 4, NULL, 4, NULL, '2020-08-25 21:41:18', '2020-08-25 21:41:18'),
	(20, 'EMP-20', 'MANUEL', 'SUAREZ', 'ACUÑA', 'manuel.suarez@intelo.com.mx', NULL, '$2y$10$JPBkYrk14/.XezHQh9DpMeE8aXR6n6SEuUaRPMxbHcmEUlUP1ors.', '1', '0', 4, NULL, 4, NULL, '2020-08-25 21:42:43', '2020-08-25 21:42:43'),
	(21, 'EMP-21', 'SERGIO', 'HERNADEZ', 'TORRES', 'sergio.hernandez@intelo.com.mx', NULL, '$2y$10$p1UpH1qzzT41gOF8cY5ZQeT99tzjAbdVA0ykIB9OWSJL.eCDzIf7m', '1', '0', 4, NULL, 5, NULL, '2020-08-25 22:31:30', '2020-08-25 22:31:30'),
	(22, 'EMP-22', 'PABLO', 'DIAZ', 'GARCIA', 'pablo.diaz@intelo.com.mx', NULL, '$2y$10$EBcqDfVyo6xyr2012cO9PugXUHnmd.aOtslxTbnoBS3IU5wD1Xcs.', '1', '0', 4, NULL, 5, NULL, '2020-08-25 22:33:16', '2020-08-25 22:33:16'),
	(23, 'EMP-23', 'DAVID', 'ALVAREZ', 'ACOSTA', 'david.alvarez@intelo.com.mx', NULL, '$2y$10$WtlZZvS/9JGQbyj5Yxh/2uwvzZYyUF5lNYtUsremqZoOxSG/eyPsy', '1', '0', 4, NULL, 5, NULL, '2020-08-25 22:34:08', '2020-08-25 22:34:08'),
	(24, 'EMP-24', 'MARCO', 'SANCHEZ', 'SOSA', 'marco.sanchez@intelo.com.mx', NULL, '$2y$10$iPGDn73/7EzEDgtpy6OMJunNxlHijYXMMPhPIgQLweis/peTPtO1.', '1', '0', 4, NULL, 6, NULL, '2020-08-25 22:35:14', '2020-08-25 22:35:14'),
	(25, 'EMP-25', 'CARLOS', 'FERNANDEZ', 'ROMERO', 'carlos.fernandez@intelo.com.mx', NULL, '$2y$10$goUtW5xKwePl6PwlV7wnFOpB6u9irXhDAJTuyM833B6fWO3TwAa3G', '1', '0', 4, NULL, 6, NULL, '2020-08-25 22:35:55', '2020-08-25 22:35:55'),
	(26, 'EMP-26', 'IVAN', 'RIOS', 'MORENO', 'ivan.rios@intelo.com.mx', NULL, '$2y$10$Gs5ooSDjWjhXL/LWsu92vOfFgoeLnx7zzMCEcMEBl4gY7uoT.VA5W', '1', '0', 4, NULL, 6, NULL, '2020-08-25 22:37:16', '2020-08-25 22:37:16'),
	(27, 'EMP-27', 'LUCAS', 'MORELOS', 'CARRIZO', 'lucas.morelo@intelo.com.mx', NULL, '$2y$10$IzrFDhcE0vYJmmLdWHOnqusWbL25WDRRs8nVrMr3vRRTKRkug0ygC', '1', '0', 4, NULL, 7, NULL, '2020-08-25 22:38:52', '2020-08-25 22:38:52'),
	(28, 'EMP-28', 'JAVIER', 'DOMINGUEZ', 'PERALTA', 'javier.dominguez@intelo.com.mx', NULL, '$2y$10$3aVTQstkc9WT79xqebLLJuAPTZRmQG39hKnWqFQgOJjiDxLFjzYpq', '1', '0', 4, NULL, 7, NULL, '2020-08-25 22:40:01', '2020-08-25 22:40:01'),
	(29, 'EMP-29', 'ANGEL', 'ARIAS', 'VARGAS', 'angel.arias@intelo.com.mx', NULL, '$2y$10$Z1I6KSyy0bksJnK3zWb37exPpqvm1ZOLONECqdyoqOzpN7GB5dT72', '1', '0', 4, NULL, 7, NULL, '2020-08-25 22:40:51', '2020-08-25 22:40:51'),
	(30, 'EMP-30', 'HECTOR', 'NAVARRO', 'RAMOS', 'hector.navarro@intelo.com.mx', NULL, '$2y$10$yIzvYGkKFbaO3A7TOv.7wuCEb0./AmymFrFM2BUNZVkAP8kbTghDi', '1', '0', 4, NULL, 8, NULL, '2020-08-25 22:42:36', '2020-08-25 22:42:36'),
	(31, 'EMP-31', 'JOAQUIN', 'PAZ', 'MIRANDA', 'joaquin.paz@intelo.com.mx', NULL, '$2y$10$nmj5RR7/U1.9CTwUuMRvO.BKdifQk1DadsFxP3VTEnaNtzqtl4SFi', '1', '0', 4, NULL, 8, NULL, '2020-08-25 22:43:43', '2020-08-25 22:43:43'),
	(32, 'EMP-32', 'ÁLVARO', 'GUZMAN', 'MENDEZ', 'alvaro.guzman@intelo.com.mx', NULL, '$2y$10$P2jzRLkLXcWoAJjEGKU/9Or1WsGzGKxMioYlKR1q..ak/ww8e34zG', '1', '0', 4, NULL, 8, NULL, '2020-08-25 22:45:27', '2020-08-25 22:45:27'),
	(33, 'EMP-33', 'JORGE', 'CORDOBA', 'MANSILLA', 'jorge.cordoba@intelo.com.mx', NULL, '$2y$10$QXjaFJcwrvjoM9z11zXKGODobbcpyfN.1bCDfwCdurKcYNs5JIaNy', '1', '0', 4, NULL, 10, NULL, '2020-08-25 22:46:30', '2020-08-25 22:49:27'),
	(34, 'EMP-34', 'EDUARDO', 'FRANCO', 'DUARTE', 'eduardo.franco@intelo.com.mx', NULL, '$2y$10$ImPCcehaKgbRBYdBfKv.CuyO4xkPxmQYLef/Kz9H9DrWMJoE0QiCO', '1', '0', 4, NULL, 9, NULL, '2020-08-25 22:47:34', '2020-08-25 22:47:34'),
	(35, 'EMP-35', 'EMILIO', 'OLIVERA', 'TOLEDO', 'emilio.olvera@intelo.com.mx', NULL, '$2y$10$nuqBVyssvJerW5PYTMxqwuyn3gxDLOuXZyjauVXhOvrftwERXjhra', '1', '0', 4, NULL, 9, NULL, '2020-08-25 22:48:18', '2020-08-25 22:48:18'),
	(36, 'EMP-36', 'FELIX', 'LEIVA', 'CCHAVEZ', 'felix.leiva@intelo.com.mx', NULL, '$2y$10$VUiS1Zu3NnWZeXfYSSRr9OvDLqOUyxa4fVkTF9/DrMmgnnIUMYtBi', '1', '0', 4, NULL, 9, NULL, '2020-08-25 22:49:06', '2020-08-25 22:49:06'),
	(37, 'EMP-37', 'RODRIGO', 'LUNA', 'MORALES', 'rodrigo.luna@intelo.com.mx', NULL, '$2y$10$vEkRDk.39ZblLdu2qi4dUOSys0FcW19.3L82P9V/JwDZ95hUT6yKi', '1', '0', 4, NULL, 10, NULL, '2020-08-25 22:50:27', '2020-08-25 22:50:27'),
	(38, 'EMP-38', 'DANIEL', 'CARRIZO', 'VEGA', 'daniel.carrizo@intelo.com.mx', NULL, '$2y$10$duGIPBJjcJICnndcqHPKD.vLajn1qbGbg85HvsKgSf3WG8iFBKb0i', '1', '0', 4, NULL, 10, NULL, '2020-08-25 22:51:35', '2020-08-25 22:51:35'),
	(39, 'EMP-39', 'LUIS', 'MORENO', 'ORTIZ', 'luis.moreno@intelo.com.mx', NULL, '$2y$10$r14d4Yh6aLpKZf0QqvkVkOS32bwuoDZMmy0KUCmnA1POthjXw42Qa', '1', '0', 4, NULL, 11, NULL, '2020-08-25 22:53:02', '2020-08-25 22:53:02'),
	(40, 'EMP-40', 'JORGE', 'LEDESMA', 'CASTILLO', 'jorge.ledesma@intelo.com.mx', NULL, '$2y$10$HwYqkdVv9/K3e9MA8aAEQu6So4KyyjldpjljdDhWQLb4BbpmKguH6', '1', '0', 4, NULL, 11, NULL, '2020-08-25 22:53:52', '2020-08-25 22:53:52'),
	(41, 'EMP-41', 'FELIPE', 'LOPEZ', 'ACOSTA', 'felipe.lopez@intelo.com.mx', NULL, '$2y$10$0S7Z/r75SAtPaGcMdjf.veuZifzTMQVrbg93N1tFw3brteKjYqHIy', '1', '0', 4, NULL, 11, NULL, '2020-08-25 22:55:16', '2020-08-25 22:55:16'),
	(42, 'EMP-42', 'GONZALO', 'HERRERA', 'CASTRO', 'gonzalo.herrera@intelo.com.mx', NULL, '$2y$10$vw9wvUsYu/HIKjuED1oXpuHqPUswZs1c.AMoctxJEfL4WPgh3XH1W', '1', '0', 4, NULL, 12, NULL, '2020-08-25 22:56:32', '2020-08-25 22:56:32'),
	(43, 'EMP-43', 'JUAN', 'GAMBOA', 'NUÑEZ', 'juan.gamboa@intelo.com.mx', NULL, '$2y$10$s0TEj0JSMYD.DjjccfG3qegGcM5HuGOI6vQ997DblWOGs8wdrFBHG', '1', '0', 4, NULL, 12, NULL, '2020-08-25 22:57:43', '2020-08-25 22:57:43'),
	(44, 'EMP-44', 'SAMUEL', 'ROJAS', 'NUÑEZ', 'samuel.rojas@intelo.com.mx', NULL, '$2y$10$7dDHi4IBChE3624lzIppAeVkebCCSUxOMmK.HFZktYd4BDC79V8uq', '1', '0', 4, NULL, 12, 'nBaKTwR1ndKt7DhQZARIi5svqABRC2m1D4JouQTZYnbZ3HfgQqiRFr3QUR55', '2020-08-25 22:58:46', '2020-08-25 22:58:46'),
	(45, 'EMP-45', 'QWE', 'QWE', 'QWE', 'qwe@12313', NULL, '$2y$10$vjL/uOi0JUz8doePvRK.4OWjbAioG7J.ZkBz7CCKfCUZe7ttYkgfa', '1', '0', 1, NULL, 1, NULL, '2020-12-11 17:35:47', '2020-12-11 17:35:47');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `estatus_paquetes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion_estatus` varchar(60) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `estatus_paquetes` DISABLE KEYS */;
INSERT INTO `estatus_paquetes` (`id`, `descripcion_estatus`, `created_at`, `updated_at`) VALUES
	(1, 'Paquete creado o en espera de salida', '2020-12-28 10:00:07', '2020-12-28 10:00:12'),
	(2, 'Paquete en ruta a almacen o para entrega a destinatario', '2020-12-28 10:00:08', '2020-12-28 10:00:12'),
	(3, 'Paquete en sucursal intermedia', '2020-12-28 10:00:09', '2020-12-28 10:00:13'),
	(4, 'Paquerte entregado', '2020-12-28 10:00:10', '2020-12-28 10:00:13'),
	(5, 'Codigo de No. de paquete para repartidor', '2020-12-28 10:00:11', '2020-12-28 10:00:14'),
	(6, 'Visita', '2020-12-28 10:00:11', '2020-12-28 10:00:14');
/*!40000 ALTER TABLE `estatus_paquetes` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `eventuals` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_eventual` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apellido_1_eventual` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apellido_2_eventual` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `razon_social` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rfc_eventual` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado_eventual` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `municipio_eventual` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `codigo_postal_eventual` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `colonia_eventual` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `calle_eventual` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_exterior_eventual` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_interior_eventual` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `correo_eventual` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono_1_eventual` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono_2_eventual` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40000 ALTER TABLE `eventuals` DISABLE KEYS */;
INSERT INTO `eventuals` (`id`, `nombre_eventual`, `apellido_1_eventual`, `apellido_2_eventual`, `razon_social`, `rfc_eventual`, `estado_eventual`, `municipio_eventual`, `codigo_postal_eventual`, `colonia_eventual`, `calle_eventual`, `no_exterior_eventual`, `no_interior_eventual`, `correo_eventual`, `telefono_1_eventual`, `telefono_2_eventual`, `created_at`, `updated_at`) VALUES
	(24, 'EMMANUEL ALVARO', 'RODRIGUEZ', 'HERNANDEZ', 'EMMANUEL SA DE CV', 'ROHE969325MYS', 'Querétaro', 'Querétaro', '76147', 'Buenos Aires', '4', '1', NULL, 'emmanuel.hernandez@intelo.com.mx', '4423058637', NULL, '2020-11-23 17:38:26', '2020-11-23 17:38:26'),
	(25, 'EMMANUEL ALVARO', 'RODRIGUEZ', 'HERNANDEZ', 'EMMANUEL SA DE CV', 'ROHE969325MYS', 'Querétaro', 'Querétaro', '76147', 'Valles de San José', '4', '127', NULL, 'manejetskate@gmail.com', '4423058637', NULL, '2020-11-26 13:30:23', '2020-11-26 13:30:23'),
	(26, 'EMMANUEL ALVARO', 'RODRIGUEZ', 'HERNANDEZ', 'EMMANUEL SA DE CV', 'ROHE969325MYS', 'Ciudad de México', 'Álvaro Obregón', '76147', 'Valles de San José', '4', '127', NULL, 'manejetskate@gmail.com', '4423058637', NULL, '2020-11-26 13:35:01', '2020-11-26 13:35:01'),
	(27, 'EMMANUEL ALVARO', 'RODRIGUEZ', 'HERNANDEZ', 'EMMANUEL SA DE CV', 'ROHE969325MYS', 'Ciudad de México', 'Álvaro Obregón', '76147', 'Valles de San José', '4', '127', NULL, 'manejetskate@gmail.com', '4423058637', NULL, '2020-11-26 13:35:32', '2020-11-26 13:35:32'),
	(28, 'EMMANUEL ALVARO', 'RODRIGUEZ', 'HERNANDEZ', 'EMMANUEL SA DE CV', 'ROHE969325MYS', 'Ciudad de México', 'Álvaro Obregón', '76147', 'Valles de San José', '4', '127', NULL, 'manejetskate@gmail.com', '4423058637', NULL, '2020-11-26 13:35:42', '2020-11-26 13:35:42'),
	(29, 'EMMANUEL ALVARO', 'RODRIGUEZ', 'HERNANDEZ', 'EMMANUEL SA DE CV', 'ROHE969325MYS', 'Querétaro', 'Querétaro', '76147', 'Valles de San José', '4', '127', NULL, 'manejetskate@gmail.com', '4423058637', NULL, '2020-11-26 13:40:35', '2020-11-26 13:40:35'),
	(30, 'EMMANUEL ALVARO', 'RODRIGUEZ', 'HERNANDEZ', 'EMMANUEL SA DE CV', 'ROHE969325MYS', 'Querétaro', 'Querétaro', '76147', 'Valles de San José', '4', '127', NULL, 'manejetskate@gmail.com', '4423058637', NULL, '2020-11-26 13:41:09', '2020-11-26 13:41:09'),
	(31, 'EMMANUEL ALVARO', 'RODRIGUEZ', 'HERNANDEZ', 'EMMANUEL SA DE CV', 'ROHE969325MYS', 'Querétaro', 'Querétaro', '76147', 'Valles de San José', '4', '127', NULL, 'manejetskate@gmail.com', '4423058637', NULL, '2020-11-26 13:48:32', '2020-11-26 13:48:32');
/*!40000 ALTER TABLE `eventuals` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(13, '2020_10_22_123041_create_auditoria_cross_overs_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `paquetes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `consecutivo_paquete` int(11) DEFAULT NULL,
  `no_paquete` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `estado_destino` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `municipio_destino` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `codigo_postal_destino` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `colonia_destino` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `calle_destino` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_exterior_destino` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_interior_destino` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estatus_paquete` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `cliente_id` bigint(20) unsigned DEFAULT NULL,
  `eventual_id` bigint(20) unsigned DEFAULT NULL,
  `socursal_id` bigint(20) unsigned DEFAULT NULL,
  `empleado_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paquete_eventual_id_foreign` (`eventual_id`),
  KEY `paquete_cliente_id_foreign` (`cliente_id`),
  KEY `paquete_socursal_id_foreign` (`socursal_id`),
  KEY `paquete_empleado_id_foreign` (`empleado_id`),
  CONSTRAINT `paquete_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`),
  CONSTRAINT `paquete_empleado_id_foreign` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`id`),
  CONSTRAINT `paquete_eventual_id_foreign` FOREIGN KEY (`eventual_id`) REFERENCES `eventuals` (`id`),
  CONSTRAINT `paquete_socursal_id_foreign` FOREIGN KEY (`socursal_id`) REFERENCES `socursals` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40000 ALTER TABLE `paquetes` DISABLE KEYS */;
INSERT INTO `paquetes` (`id`, `consecutivo_paquete`, `no_paquete`, `estado_destino`, `municipio_destino`, `codigo_postal_destino`, `colonia_destino`, `calle_destino`, `no_exterior_destino`, `no_interior_destino`, `estatus_paquete`, `cliente_id`, `eventual_id`, `socursal_id`, `empleado_id`, `created_at`, `updated_at`) VALUES
	(1, 1, '00120201201001001', 'Ciudad de México', 'Álvaro Obregón', '01040', 'Campestre', 'Campestre', '12', NULL, '3', 6, NULL, 1, 1, '2020-12-01 18:42:39', '2020-12-01 18:42:39'),
	(2, 1, '00120201210001001', 'Ciudad de México', 'Álvaro Obregón', '01040', 'Campestre', 'Campestre', '12', NULL, '3', 6, NULL, 1, 1, '2020-12-10 09:34:32', '2020-12-10 09:34:32'),
	(3, 2, '00120201210001002', 'Aguascalientes', 'Aguascalientes', '20049', 'Colinas del Poniente', 'Colinas del Poniente', '12', NULL, '3', 10, NULL, 1, 1, '2020-12-10 09:39:20', '2020-12-10 09:39:20'),
	(4, 3, '00120201210001003', 'Baja California Sur', 'La Paz', '23000', 'Zona Central', 'Zona Central', '12', NULL, '4', 11, NULL, 1, 1, '2020-12-10 09:41:42', '2020-12-10 09:41:42'),
	(5, 1, '00120201211001001', 'Ciudad de México', 'Álvaro Obregón', '01040', 'Campestre', 'Campestre', '1', NULL, '2', 6, NULL, 1, 1, '2020-12-11 17:11:43', '2020-12-11 17:11:43'),
	(6, 2, '00120201211001002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, NULL, 1, '2020-12-11 17:26:20', '2020-12-11 17:26:20'),
	(7, 3, '00120201211001003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, NULL, 1, '2020-12-11 17:26:20', '2020-12-11 17:26:20'),
	(8, 4, '00120201211001004', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, NULL, 1, '2020-12-11 17:26:20', '2020-12-11 17:26:20'),
	(9, 5, '00120201211001005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, NULL, 1, '2020-12-11 17:26:20', '2020-12-11 17:26:20');
/*!40000 ALTER TABLE `paquetes` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `paquete_cargamento` (
  `Columna 1` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*!40000 ALTER TABLE `paquete_cargamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `paquete_cargamento` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `socursals` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_socursal` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_socursal` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado_socursal` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `municipio_socursal` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `codigo_postal_socursal` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `colonia_socursal` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `calle_socursal` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_exterior_socursal` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_interior_socursal` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT 'N/A',
  `estatus_socursal` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40000 ALTER TABLE `socursals` DISABLE KEYS */;
INSERT INTO `socursals` (`id`, `nombre_socursal`, `no_socursal`, `estado_socursal`, `municipio_socursal`, `codigo_postal_socursal`, `colonia_socursal`, `calle_socursal`, `no_exterior_socursal`, `no_interior_socursal`, `estatus_socursal`, `created_at`, `updated_at`) VALUES
	(1, 'QUERÉTARO ACCESO 3', 'SUC-1', 'Querétaro', 'Querétaro', '76120', 'Benito Juárez', 'ACCESO 3', '14', '4 Y 5', '1', '2020-06-04 17:55:41', '2020-06-11 16:12:41'),
	(2, 'QUERÉTARO ACCESO 4', 'SUC-2', 'Querétaro', 'Querétaro', '76120', 'Benito Juárez', 'ACCESO 4', '22', 'BODEGA K', '1', '2020-06-04 17:57:27', '2020-06-04 17:57:27'),
	(3, 'COLIMA, GUSTAVO CERVANTES OCHOA', 'SUC-3', 'Colima', 'Colima', '28017', 'Residencial Esmeralda', 'GUSTAVO CERVANTES OCHOA', '207', NULL, '1', '2020-06-04 18:02:42', '2020-06-04 18:02:42'),
	(4, 'AGUASCALIENTES, NUBLADO', 'SUC-4', 'Aguascalientes', 'Aguascalientes', '20264', 'Vista del Sol 2a Sección', 'NUBLADO', '2111', NULL, '1', '2020-06-04 18:04:17', '2020-12-11 17:32:48'),
	(5, 'MONTERREY, VIA DE MADRID', 'SUC-5', 'Nuevo León', 'Monterrey', '66052', 'Nueva Castilla', 'VIA DE MADRID', '140-E', NULL, '1', '2020-06-04 18:06:42', '2020-06-04 18:06:42'),
	(6, 'MORELIA, ANTONIO HUERTA', 'SUC-6', 'Michoacán de Ocampo', 'Morelia', '58280', 'Nueva Chapultepec', 'ANTONIO HUERTA', '33', NULL, '1', '2020-06-04 18:09:22', '2020-06-04 18:09:22'),
	(7, 'ZAMORA, PROLONGACIÓN BRUCELAS', 'SUC-7', 'Michoacán de Ocampo', 'Zamora', '59680', 'La Luneta', 'PROLONGACIÓN BRUCELAS', '119 B', NULL, '1', '2020-06-04 18:11:51', '2020-06-04 18:11:51'),
	(8, 'MEXICO, BOULEVARD  LICENCIADO BENITO JUAREZ GARCIA', 'SUC-8', 'México', 'Tultitlán', '54948', 'San Mateo Cuautepec', 'BOULEVARD  LICENCIADO BENITO JUAREZ GARCIA', '49', '4 Y 5', '1', '2020-06-04 18:37:47', '2020-06-04 18:37:47'),
	(9, 'GUADALAJARA, ANILLO PERIFERICO SUR MANUEL GOMEZ MO', 'SUC-9', 'Jalisco', 'Guadalajara', '45598', 'Artesanos', 'ANILLO PERIFERICO SUR MANUEL GOMEZ MORIN', '3498', NULL, '1', '2020-06-04 18:40:48', '2020-06-04 18:40:48'),
	(10, 'IRAPUATO', 'SUC-10', 'Guanajuato', 'Irapuato', '36500', 'Irapuato Centro', 'OCAMPO', '219', NULL, '1', '2020-06-04 18:49:51', '2020-06-04 18:49:51'),
	(11, 'LEON, PARQUE NACIONAL COPALA', 'SUC-11', 'Guanajuato', 'León', '37536', 'Jardines de La Pradera', 'PARQUE NACIONAL COPALA', '132', NULL, '1', '2020-06-04 18:51:22', '2020-06-04 18:51:22'),
	(12, 'SAN LUIS POTOSI, LAGO COLON', 'SUC-12', 'San Luis Potosí', 'San Luis Potosí', '78421', 'Villa de Pozos', 'LAGO COLON', '218', NULL, '1', '2020-06-04 18:54:50', '2020-06-04 18:54:50'),
	(16, '12313', 'SUC-16', 'Ciudad de México', 'Álvaro Obregón', '01040', 'Campestre', '123', '123', '123', '0', '2020-12-11 17:38:12', '2020-12-11 18:32:45');
/*!40000 ALTER TABLE `socursals` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `tipo_empleados` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion_tipo_empleado` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estatus_tipo_empleado` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40000 ALTER TABLE `tipo_empleados` DISABLE KEYS */;
INSERT INTO `tipo_empleados` (`id`, `descripcion_tipo_empleado`, `estatus_tipo_empleado`, `created_at`, `updated_at`) VALUES
	(1, 'ADMINISTRADOR', '1', '2020-10-22 13:23:12', '2020-10-22 13:23:13'),
	(2, 'COORDINADOR', '1', '2020-10-22 13:23:14', '2020-10-22 13:23:13'),
	(3, 'AUXILIAR ADMINISTRATIVO', '1', '2020-10-22 13:23:14', '2020-10-22 13:23:16'),
	(4, 'OPERADOR', '1', '2020-10-22 13:23:15', '2020-10-22 13:23:15');
/*!40000 ALTER TABLE `tipo_empleados` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `tipo_transportes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion_tipo_transporte` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estatus_tipo_transporte` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40000 ALTER TABLE `tipo_transportes` DISABLE KEYS */;
INSERT INTO `tipo_transportes` (`id`, `descripcion_tipo_transporte`, `estatus_tipo_transporte`, `created_at`, `updated_at`) VALUES
	(1, 'CAMIONETA', '1', '2020-10-22 13:21:13', '2020-10-22 13:21:13'),
	(2, 'MOTOCICLETA', '1', '2020-10-22 13:21:14', '2020-10-22 13:21:16'),
	(3, 'CAMIONETA PRO MASTER', '1', '2020-10-22 13:21:15', '2020-10-22 13:21:15'),
	(4, 'NP300', '1', '2020-10-22 13:21:16', '2020-10-22 13:21:19'),
	(5, 'TORTON', '1', '2020-10-22 13:21:17', '2020-10-22 13:21:20'),
	(6, 'CAJA DE 53', '1', '2020-10-22 13:21:18', '2020-10-22 13:21:20'),
	(7, 'CAJA DE 48', '1', '2020-10-22 13:21:18', '2020-10-22 13:21:20');
/*!40000 ALTER TABLE `tipo_transportes` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `transportes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `no_transporte` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `matricula_transporte` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_economico_transporte` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marca_transporte` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estatus_transporte` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `estatus_asignado_empleado` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `socursal_id` bigint(20) unsigned DEFAULT NULL,
  `tipo_transporte_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transportes_socursal_id_foreign` (`socursal_id`),
  KEY `transportes_tipo_transporte_id_foreign` (`tipo_transporte_id`),
  CONSTRAINT `transportes_socursal_id_foreign` FOREIGN KEY (`socursal_id`) REFERENCES `socursals` (`id`),
  CONSTRAINT `transportes_tipo_transporte_id_foreign` FOREIGN KEY (`tipo_transporte_id`) REFERENCES `tipo_transportes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40000 ALTER TABLE `transportes` DISABLE KEYS */;
INSERT INTO `transportes` (`id`, `no_transporte`, `matricula_transporte`, `no_economico_transporte`, `marca_transporte`, `estatus_transporte`, `estatus_asignado_empleado`, `socursal_id`, `tipo_transporte_id`, `created_at`, `updated_at`) VALUES
	(7, 'T-7', 'AB-1234', NULL, NULL, '1', '1', 1, 1, '2020-07-24 16:08:19', '2020-07-24 16:08:19'),
	(8, 'T-8', 'AB-12-123', NULL, NULL, '1', '1', 1, 1, '2020-07-24 16:08:43', '2020-07-24 16:08:43'),
	(9, 'T-9', 'EU-1-11', NULL, NULL, '1', '0', 1, 1, '2020-07-24 16:09:01', '2020-07-24 16:09:01'),
	(10, 'T-10', 'AEE-46-91', '997', NULL, '1', '0', 1, 1, '2020-08-25 21:47:58', '2020-10-22 16:12:23'),
	(11, 'T-11', 'ALA-91-43', NULL, NULL, '1', '0', 3, 1, '2020-08-25 21:49:04', '2020-08-25 21:55:08'),
	(12, 'T-12', 'CZG-73-20', NULL, NULL, '1', '0', 3, 1, '2020-08-25 21:51:00', '2020-08-25 21:55:23'),
	(13, 'T-13', 'DHJ-39-07', NULL, NULL, '1', '0', 2, 1, '2020-08-25 21:51:19', '2020-08-25 21:51:19'),
	(14, 'T-14', 'DSE-76-20', NULL, NULL, '1', '0', 2, 1, '2020-08-25 21:51:34', '2020-08-25 21:51:34'),
	(15, 'T-15', 'EGU-18-80', NULL, NULL, '1', '0', 2, 1, '2020-08-25 21:52:05', '2020-08-25 21:52:05'),
	(16, 'T-16', 'FHD-21-09', NULL, NULL, '1', '0', 2, 1, '2020-08-25 21:52:23', '2020-08-25 21:52:23'),
	(17, 'T-17', 'FSW-23-77', NULL, NULL, '1', '0', 3, 1, '2020-08-25 21:53:47', '2020-08-25 21:54:38'),
	(18, 'T-18', 'A01-AAA', NULL, NULL, '1', '0', 3, 1, '2020-08-25 21:56:23', '2020-08-25 21:56:23'),
	(19, 'T-19', 'GBD-72-99', NULL, NULL, '1', '0', 4, 1, '2020-08-25 21:56:40', '2020-08-25 21:56:53'),
	(20, 'T-20', 'GPK-27-76', NULL, NULL, '1', '0', 4, 1, '2020-08-25 21:57:37', '2020-08-25 21:57:37'),
	(21, 'T-21', 'HBZ-73-59', NULL, NULL, '1', '0', 4, 1, '2020-08-25 21:57:59', '2020-08-25 21:57:59'),
	(22, 'T-22', 'HMK-55-16', NULL, NULL, '1', '0', 4, 1, '2020-08-25 21:59:02', '2020-08-25 21:59:02'),
	(23, 'T-23', 'JHW-71-24', NULL, NULL, '1', '0', 5, 1, '2020-08-25 21:59:25', '2020-08-25 21:59:25'),
	(24, 'T-24', 'MUD-83-11', NULL, NULL, '1', '0', 5, 1, '2020-08-25 22:00:09', '2020-08-25 22:00:09'),
	(25, 'T-25', 'PRA-46-42', NULL, NULL, '1', '0', 5, 1, '2020-08-25 22:01:17', '2020-08-25 22:01:17'),
	(26, 'T-26', 'PXP-33-53', NULL, NULL, '1', '0', 5, 1, '2020-08-25 22:01:39', '2020-08-25 22:01:39'),
	(27, 'T-27', 'RFM-87-23', NULL, NULL, '1', '0', 6, 1, '2020-08-25 22:02:15', '2020-08-25 22:02:15'),
	(28, 'T-28', 'SLP-93-07', NULL, NULL, '1', '0', 6, 1, '2020-08-25 22:03:35', '2020-08-25 22:03:35'),
	(29, 'T-29', 'TKY-28-73', NULL, NULL, '1', '0', 6, 1, '2020-08-25 22:03:59', '2020-08-25 22:03:59'),
	(30, 'T-30', 'UAC-36-34', NULL, NULL, '1', '0', 6, 1, '2020-08-25 22:04:37', '2020-08-25 22:04:37'),
	(31, 'T-31', 'UKL-67-46', NULL, NULL, '1', '0', 7, 1, '2020-08-25 22:05:23', '2020-08-25 22:05:23'),
	(32, 'T-32', 'UVU-017-A', NULL, NULL, '1', '0', 7, 1, '2020-08-25 22:05:44', '2020-08-25 22:05:44'),
	(33, 'T-33', 'UWA-773-R', NULL, NULL, '1', '0', 7, 1, '2020-08-25 22:06:04', '2020-08-25 22:06:04'),
	(34, 'T-34', 'VPK-85-46', NULL, NULL, '1', '0', 7, 1, '2020-08-25 22:09:34', '2020-08-25 22:09:34'),
	(35, 'T-35', 'WCV-89-60', NULL, NULL, '1', '0', 8, 1, '2020-08-25 22:10:09', '2020-08-25 22:10:09'),
	(36, 'T-36', 'WSE-83-41', NULL, NULL, '1', '0', 8, 1, '2020-08-25 22:10:30', '2020-08-25 22:10:30'),
	(37, 'T-37', '11DB228', NULL, NULL, '1', '0', 8, 1, '2020-08-25 22:13:35', '2020-08-25 22:13:35'),
	(38, 'T-38', '62IJ357', NULL, NULL, '1', '0', 8, 1, '2020-08-25 22:13:54', '2020-08-25 22:13:54'),
	(39, 'T-39', '3E-6583', NULL, NULL, '1', '0', 9, 1, '2020-08-25 22:14:14', '2020-08-25 22:14:35'),
	(40, 'T-40', 'AFD:6942', NULL, NULL, '1', '0', 9, 1, '2020-08-25 22:15:35', '2020-08-25 22:15:35'),
	(41, 'T-41', '39-H957', NULL, NULL, '1', '0', 9, 1, '2020-08-25 22:15:55', '2020-08-25 22:15:55'),
	(42, 'T-42', '32D 228', NULL, NULL, '1', '0', 9, 1, '2020-08-25 22:16:58', '2020-08-25 22:16:58'),
	(43, 'T-43', 'A15 228', NULL, NULL, '1', '0', 10, 1, '2020-08-25 22:17:53', '2020-08-25 22:17:53'),
	(44, 'T-44', '115 BHT', NULL, NULL, '1', '0', 10, 1, '2020-08-25 22:18:18', '2020-08-25 22:18:18'),
	(45, 'T-45', '2848 EB', NULL, NULL, '1', '0', 10, 1, '2020-08-25 22:18:32', '2020-08-25 22:18:32'),
	(46, 'T-46', 'DNH 3289', NULL, NULL, '1', '0', 10, 1, '2020-08-25 22:18:55', '2020-08-25 22:18:55'),
	(47, 'T-47', 'FN4258', NULL, NULL, '1', '0', 11, 1, '2020-08-25 22:19:40', '2020-08-25 22:19:40'),
	(48, 'T-48', 'DFY-14-12', NULL, NULL, '1', '0', 11, 1, '2020-08-25 22:19:55', '2020-08-25 22:19:55'),
	(49, 'T-49', '557 AZM', NULL, NULL, '1', '0', 11, 1, '2020-08-25 22:20:13', '2020-08-25 22:20:13'),
	(50, 'T-50', 'DSM 9067', NULL, NULL, '1', '0', 11, 1, '2020-08-25 22:20:37', '2020-08-25 22:20:37'),
	(51, 'T-51', 'JKR:0058', NULL, NULL, '1', '0', 12, 1, '2020-08-25 22:21:33', '2020-08-25 22:21:33'),
	(52, 'T-52', 'JAF 4852', NULL, NULL, '1', '0', 12, 1, '2020-08-25 22:21:48', '2020-08-25 22:21:48'),
	(53, 'T-53', 'GLR 154', NULL, NULL, '1', '0', 12, 1, '2020-08-25 22:22:05', '2020-08-25 22:22:05'),
	(54, 'T-54', 'EMN-7171', NULL, NULL, '1', '0', 12, 1, '2020-08-25 22:22:36', '2020-08-25 22:22:36');
/*!40000 ALTER TABLE `transportes` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `transporte_empleados` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `empleado_id` bigint(20) unsigned NOT NULL,
  `transporte_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transporte_empleados_empleado_id_foreign` (`empleado_id`),
  KEY `transporte_empleados_transporte_id_foreign` (`transporte_id`),
  CONSTRAINT `transporte_empleados_empleado_id_foreign` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`id`),
  CONSTRAINT `transporte_empleados_transporte_id_foreign` FOREIGN KEY (`transporte_id`) REFERENCES `transportes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40000 ALTER TABLE `transporte_empleados` DISABLE KEYS */;
INSERT INTO `transporte_empleados` (`id`, `empleado_id`, `transporte_id`, `created_at`, `updated_at`) VALUES
	(13, 5, 7, '2020-12-10 18:13:08', '2020-12-10 18:13:08'),
	(14, 6, 8, '2020-12-11 17:37:30', '2020-12-11 17:37:30');
/*!40000 ALTER TABLE `transporte_empleados` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
