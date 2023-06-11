class ClienteCagecesController < InheritedResources::Base

  private

    def cliente_cagece_params
      params.require(:cliente_cagece).permit(:nome, :cpf, :numero_do_cliente, :endereco)
    end

end
