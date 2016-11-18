module Hanshulian
  class Integers < Grape::API

    resource :integers do

      desc 'Returns true if integer is an even number.'
      params do
        requires :integer, type: Integer, desc: 'Your integer.'
      end
      post :is_even do
        integer = params[:integer]
        status 200
        { boolean: integer.even? }
      end

    end

  end
end
