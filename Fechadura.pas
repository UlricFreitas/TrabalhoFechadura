//Ulric de Freitas Quintino RA: 2220802 - Lessandro Adler Rocha RA: 2220861 - Bruno de Oliveira Tratch RA:2220900
Program Fechadura ;
	
var
nomes: array[1..5] of string;
sobrenomes: array[1..5] of string;
cpf: array[1..5] of string;
senhas: array[1..5] of string;
senhaIncorreta: boolean;
tentativas: integer;
i, menu: integer;
senhaC: string;
continuar: char;


Begin
  
  continuar := 'S';
  repeat
  
  writeln('');
  writeln('=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= Menu Principal =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=');
  writeln('');
  writeln('Seleciona uma op��o: ');
  writeln('');
  writeln('Op��o 1 - Realizar cadastros.');
  writeln('');
  writeln('Op��o 2 - Banco de dados.');
  writeln('');
  writeln('Op��o 3 - Acessar destranca da porta.');
  writeln('');
  writeln('Op��o 4 - Alterar um cadastro.');
  writeln('');
  writeln('Op��o 5 - Apagar um cadastro.');
  writeln('');
  write('Usu�rio: ');
  readln(menu);
  delay(2000);
  clrscr;
  
  case menu of
  
  1:begin
        for i := 1 to 5 do begin
          writeln('Informe o nome do usu�rio: ');
          readln(nomes[i]);
          writeln('Informe o sobrenome do usu�rio: ');
          readln(sobrenomes[i]);
          writeln('Informe o CPF do usu�rio: ');
          readln(cpf[i]);
          writeln('Informe uma senha para o usu�rio: ');
          readln(senhas[i]);
          writeln('Usuario cadastrado com sucesso!');
          delay(3000);
          clrscr;
        end;
      end;
  
	
	2:begin
   	  writeln('Perfil dos usu�rios');
   	  writeln('');
   	  writeln('Nome: ',nomes[1], ' Sobrenome: ', sobrenomes[1], ' CPF: ', cpf[1]);
   	  writeln('');
   	  writeln('Nome: ',nomes[2], ' Sobrenome: ', sobrenomes[2], ' CPF: ', cpf[2]);
   	  writeln('');
   	  writeln('Nome: ',nomes[3], ' Sobrenome: ', sobrenomes[3], ' CPF: ', cpf[3]);
   	  writeln('');
   	  writeln('Nome: ',nomes[4], ' Sobrenome: ', sobrenomes[4], ' CPF: ', cpf[4]);
   	  writeln('');
   	  writeln('Nome: ',nomes[5], ' Sobrenome: ', sobrenomes[5], ' CPF: ', cpf[5]);
   	  writeln('');
   	end;
  
  3:begin
  
  tentativas := 3;
  senhaIncorreta := true;
	
	while(senhaIncorreta)do
	begin	
			writeln('Informe uma senha para abrir a porta!');
	  	readln(senhaC);
	  	if (senhaC = senhas[1]) or (senhaC = senhas[2]) or (senhaC = senhas[3]) or (senhaC = senhas[4]) or (senhaC = senhas[5]) then
	  	begin
       		 senhaIncorreta := false;
		       writeln('A porta ser� aberta em 3 segundos!');
		       delay(3000);
		       clrscr;		
       end
       else
       begin
       		dec(tentativas);
       		writeln('ERRO: senha INCORRETA, Voc� possui apenas ', tentativas, ' tentativas!');
       		end;       
       if(tentativas = 0)then
       begin
			 		writeln('Suas tentativas acabaram, A PORTA SER� BLOQUEADA!');			   		 
		   		delay(3000);	   		 
		   		clrscr;
       		break;
       end
       else
       begin
       		if(senhaIncorreta)then
       		begin
          	writeln('Tente Novamente em 5 segundos!');			   		 
		   			delay(5000);	   		 
		   		end;
		   		clrscr;
       end;
   end;
   clrscr;
   if(tentativas = 0)then
      writeln('PORTA BLOQUEADA, somente ap�s 12h voc� poder� tentar novamente!')
   else
   	  writeln('Porta Aberta!');
   	  delay(5000);
   	  clrscr;
   	  end;
   	  
   	  
   	  4:begin
   	  
   	  writeln('Qual usu�rio voc� deseja alterar?');
   	  	writeln('Usu�rio 1: ',nomes[1]);
   	  	writeln('Usuario 2: ',nomes[2]);
   	  	writeln('Usu�rio 3: ',nomes[3]);
   	  	writeln('Usu�rio 4: ',nomes[4]);
   	  	writeln('Usu�rio 5: ',nomes[5]);
   	  readln(i);
   	  
   	  	writeln('Digite um nome');
   	  	read(nomes[i]);
   	  	writeln('Digite um sobrenome');
   	  	read(sobrenomes[i]);
   	  	writeln('Digite um CPF');
   	  	read(cpf[i]);
   	  	writeln('Digite uma senha');
   	  read(senhas[i]);
   	  clrscr;
   	  	
   	  end;
   	  
   	  5:begin
   	  	writeln('Qual usu�rio voc� deseja excluir?');
   	  	writeln('Usu�rio 1: ',nomes[1]);
   	  	writeln('Usuario 2: ',nomes[2]);
   	  	writeln('Usu�rio 3: ',nomes[3]);
   	  	writeln('Usu�rio 4: ',nomes[4]);
   	  	writeln('Usu�rio 5: ',nomes[5]);
   	  readln(i);
   	  
   	  nomes[i]:= '';
   	  sobrenomes[i]:= '';
   	  cpf[i]:= '';
   	  senhas[i]:= '';
   	  clrscr;
   	  end;
   	end;
   	  
   	writeln('Deseja continuar?(S/N)');
    read(continuar);
    clrscr;
  until(continuar='N');
	
End.