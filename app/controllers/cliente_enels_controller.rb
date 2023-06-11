class ClienteEnelsController < InheritedResources::Base

  private

    def cliente_enel_params
      params.require(:cliente_enel).permit(:nome, :cpf, :numero_do_cliente, :endereco)
    end

end
