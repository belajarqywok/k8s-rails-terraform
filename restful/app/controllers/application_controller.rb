class ApplicationController < ActionController::API


    def main

        fibbonaci = 1

        for i in 1 .. params[:test].to_i
            
            fibbonaci *= i
        end

        render json: {
            http_code: 200,
            response: "success",
            result: {
                fibbonaci: fibbonaci
            }
        }

    end


end










