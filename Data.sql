CREATE DATABASE QuanLyHocSinh
Go

USE QuanLyHocSinh
Go

CREATE TABLE HocSinh
(
	id INT IDENTITY PRIMARY KEY,
	Mahs NVARCHAR (100),
	Tenhs Nvarchar (100),
	Lop Nvarchar (100),
	QueQuan Nvarchar (100),
)
Go

Create Table DangNhap
(
	UserName Nvarchar(100) NOT NULL PRIMARY KEY,
	Displayname Nvarchar(100) NOT NULL Default N'PhamPhi',
	PassWord Nvarchar (100) NOT NULL default 0,
	TYPE INT NOT NULL default 0
)
Go

INSERT INTO dbo.DangNhap
			(Username,
			Displayname,
			Password,
			Type
			)
VALUES	(N'Phạm Mạnh Phi', --Username - nvarchar 100
		N'Phi Phạm',
		N'1',
		1 --int
		)
INSERT INTO dbo.DangNhap
			(Username,
			Displayname,
			Password,
			Type
			)
VALUES	(N'Huỳnh lê minh đính', --Username - nvarchar 100
		N'qaqa',
		N'1',
		1 --int
		)

Go

CREATE PROC USP_GetAccountByUserName
@userName nvarchar (100)
as
begin
	select * from dbo.dangnhap where Username = @username
end
go

EXEC dbo.USP_GetAccountByUserName @userName = N'Phạm Mạnh Phi'