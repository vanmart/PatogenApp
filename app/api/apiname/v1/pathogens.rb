module APINAME
  module V1
   class Pathogens < Grape::API
     #include Defaults
     include APIDefaults
     include APIGuard

     #guard_all!

     resource :pathogens do
       desc "Return all pathogens"
       get "", root: :pathogens do
         pathogens = Pathogen.all
         present :pathogens, pathogens, with: PathogenEntity
       end

       desc "Return a pathogen by ID"
       params do
         requires :id, type: String, desc: "ID of the pathogen"
       end
       get ":id", root: "pathogen" do
         pathogen = Pathogen.where(id: permitted_params[:id]).first!
         present :pathogens, pathogen, with: PathogenEntity
       end
     end
   end
  end
end
