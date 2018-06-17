module APINAME
  module V1
   class Diseases < Grape::API
     #include Defaults
     include APIDefaults
     include APIGuard

     #guard_all!

     resource :diseases do
       desc "Return all diseases"
       get "", root: :diseases do
         diseases = Disease.all
         present :diseases, diseases, with: DiseaseEntity
       end

       desc "Return a disease by ID"
       params do
         requires :id, type: String, desc: "ID of the disease"
       end
       get ":id", root: "disease" do
         disease = Disease.where(id: permitted_params[:id]).first!
         present :diseases, disease, with: DiseaseEntity
       end
     end
   end
  end
end
