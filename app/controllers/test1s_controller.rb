class Test1sController < ApplicationController
    def form_for
        @test1 = Test1.new
    end
    
    def index
        @test1s = Test1.all
    end

    def add
        @test1 = Test1.new
        @zzz = "hi"
    end

    def new
        test1 = Test1.new
            test1.test1_isbn = params[:isbn]
            test1.test1_title = params[:title]
            test1.save

            redirect_to "/test1s/index"
    end
        def create
            
        end
end
