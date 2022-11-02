select * from pet;

#1ºPergunta - nome e peso de todas as cadelas
select nome,peso from pet where especie='cachorro' and sexo='F'; 

#2ºPergunta - nome do pet e do respectivo tutor para calopsitas, cachorros e tartarugas
select nome,tutor from pet where especie in('calopsita','cachorro','tartaruga');

#3ºPergunta - hamsters nascidos em 2021
select nome from pet where dt_nascimento like('2021-%');
select nome from pet where dt_nascimento >='2021-01-01' and dt_nascimento <='2021-12-31';
select nome from pet where YEAR(dt_nascimento)=2021;

#4ºPergunta - gatos nascidos no  segundo semestre de qualquer ano
select nome from pet where especie='gato' and MONTH(dt_nascimento)>=7 and MONTH(dt_nascimento)<=12;

#5ºPergunta - peso da cobra mais pesada
select MAX(peso) from pet where especie='cobra'; 

#6ºPergunta - todos os pets ainda vivos
select nome from pet where dt_morte is null;

#7ºPergunta -  todos os pets sem um tutor

select nome from pet where tutor is null;





















