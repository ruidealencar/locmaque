class CarrosController < InheritedResources::Base

  private

    def carro_params
      params.require(:carro).permit(:placa, :renavan, :chassi)
    end

end
