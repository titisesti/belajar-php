-- buat database fakultas
CREATE DATABASE seal_fakultas;

-- buat table jurusan
CREATE TABLE jurusan (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    kode CHAR(4) NOT NULL,
    nama VARCHAR(50) NOT NULL
);

-- buat table mahasiswa
CREATE TABLE mahasiswa (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_jurusan INTEGER NOT NULL,
    nim CHAR(8) NOT NULL,
    nama VARCHAR(50) NOT NULL,
    jenis_kelamin enum ('Laki-Laki', 'perempuan') NOT NULL,
    tempat_lahir VARCHAR(50) NOT NULL,
    tanggal_lahir DATE NOT NULL,
    alamat VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_jurusan) REFERENCES jurusan (id)
);

-- masukin data jurusan
insert into jurusan (kode,nama) values ('APBL','Administrasi Publik');
insert into jurusan (kode,nama) values ('AKTS','Akutansi');

-- masukin data mahasiswa
insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat)
values (1,'20220001', 'Titis', 'perempuan', 'Banyuwangi', '2001-09-14', 'Jl. Sukarno Hatta');
insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat)
values (2,'20220002', 'Nanda', 'laki-laki', 'Malang', '2000-12-23', 'Jl. Sukarno Hatta');

-- update data mahasiswa
update mahasiswa set alamat = "Jl. Candi Panggung 89" where id = 1;

-- delete data mahasiswa
delete from mahasiswa where id=2;