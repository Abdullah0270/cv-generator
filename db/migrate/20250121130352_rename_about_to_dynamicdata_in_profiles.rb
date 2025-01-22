class RenameAboutToDynamicdataInProfiles < ActiveRecord::Migration[7.2]
  def change
    rename_column :profiles, :about, :dynamicdata
  end
end
