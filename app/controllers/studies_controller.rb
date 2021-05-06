class StudiesController < ApplicationController
    skip_before_action :verify_authenticity_token
    def create 
        @study=Study.new(name: study_params["name"],age_limit:study_params["age_limit"],
                         drug: study_params["drug"],phase: study_params["phase"],
                         study_group_id:params[:study_group_id]  )
        p  study_params
        p @study
        @study.save!
       if @study.save
        render json: {notice: "Study created Successfully.."}
       else
        render json: {error: "Study not created Successfully.."}   
       end 
    end
    def index
        @studies=Study.where(study_group_id: params[:study_group_id] )

        if @studies
            render json: @studies
        else
            render json: {error: "provide valid id of the study .. Study not found"}    
    
        end
    end    

    def update
        @study =Study.find(params[:id])

        if @study
            @study.update!(study_params)
            render json: {notice: "Study updated successfully"}
        else
            render json: {error: "Study not updated successfully"}
        end
    end 
    def delete
        @study =Study.find(params[:id])

        if @study
            @study.destroy
            render json: {notice: "Study deleted  successfully"}
        else
            render json: {error: "Study not deleted successfully"}
        end
    end 
    private
    def study_params
        params.require(:study).permit(:name,:age_limit,:drug,:study_group_id,:phase)
    end

           
end
