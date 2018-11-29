create database DIEGOELECTROMUEBLES

go

use DIEGOELECTROMUEBLES
 go

 create table cajeros
 (
 codigo int identity,
 nombre nvarchar(255)
 )
 go

 create table productos
 (
 codigo int identity,
 nombre nvarchar(100),
 precio int)
 go
 create table maquina_registradora
 (
 codigo int identity,
 piso int,
 )
 create table venta
 (cajero int,
 maquina int,
 producto int,
 )
