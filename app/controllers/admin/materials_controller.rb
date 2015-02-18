class Admin::MaterialsController < Admin::ResourcesController
  def generate_preview
    material = Material.find(params[:id])
    material.generate_preview

    redirect_to url_for(controller: "/admin/materials", action: :edit, id: material.id), notice: "Preview generated!"
  end
end
