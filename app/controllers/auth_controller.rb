class AuthController < ApplicationController

  def authIndex

  end

  def notice

  end

   def register

  end

   def access

  end




  def login

    @user = User.where(email: params[:email], senha: params[:senha]).first

      if @user == nil
        @errorMessage = "Login e ou senha incorreto."
        render "authIndex"
      else

      @email = params[:email]
      @senha = params[:senha]

      @uemail = @user.email
      @usenha = @user.senha

      redirect_to access_path
    end

  end

  def new

    @user = User.new()

    @user.email = params[:email]
    @user.nome = params[:nome]
    @user.faixaEtarea = params[:faixaEtarea]
    @user.sexo = (params[:sexo] == "m")?1:0;
    @user.senha = params[:senha]
    @user.promocao = (params[:promocao] == "on")?1:0;

    #@user.save
    #redirect_to notice_path

     #@user = User.new(email: params[:email], nome: params[:nome], faixaEtarea: params[:faixaEtarea], sexo: @sexo , senha: params[:senha] , promocao: @promocao  )

      if @user.save
        redirect_to notice_path
      else
        @errorMessage = "Erro ao cadastrar usuário."
        render "register"
      end

  end

end