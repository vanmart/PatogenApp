module APINAME
  module V1
   class Cultures < Grape::API
     #include Defaults
     include APIDefaults
     include APIGuard

     #guard_all!

     resource :cultures do
       desc "Return all cultures"
       get "", root: :cultures do
         cultures = Culture.all
         present :cultures, cultures, with: CultureEntity
       end

       desc "Return a culture by ID"
       params do
         requires :id, type: String, desc: "ID of the culture"
       end
       get ":id", root: "culture" do
         culture = Culture.where(id: permitted_params[:id]).first!
         present :cultures, culture, with: CultureEntity
       end
     end
   end
  end
end
