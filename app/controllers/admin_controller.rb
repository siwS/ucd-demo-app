class AdminController < ApplicationController

  def index
    all_models
    all_users
    user_permissions
    sensitive_models
  end

  def create
    UserPermission.destroy_all
    persist_allow_read(params)
    persist_allow_write(params)
    redirect_to action: "index"
  end

  private

  def persist_allow_read(params)
    checkboxes = params.keys.select{ |x| x.start_with?("access_r_")}
    checkboxes.each do |checkbox|
      value = params[checkbox]
      values = value.split('_')
      model = values[0]
      user = values[1]
      perm = UserPermission.find_or_create_by(sensitive_model_name: Object.const_get(model).table_name, username: user)
      perm.update_attributes(allow_read: true)
    end
  end

  def persist_allow_write(params)
    checkboxes = params.keys.select{ |x| x.start_with?("access_w_")}
    checkboxes.each do |checkbox|
      value = params[checkbox]
      values = value.split('_')
      model = values[0]
      user = values[1]
      perm = UserPermission.find_or_create_by(sensitive_model_name: Object.const_get(model).table_name, username: user)
      perm.update_attributes(allow_write: true)
    end
  end

  def all_models
    Rails.application.eager_load!
    models = ActiveRecord::Base.descendants
    @models_str = []
    models.each do |model|
      @models_str << model.to_s unless remove_model?(model)
    end
  end

  def remove_model?(model)
    model.to_s == "ActiveRecord::SchemaMigration" ||
        model.to_s == "ModelAccess" ||
        model.to_s == "SensitiveModel" ||
        model.to_s == "UserPermission"
  end

  def all_users
    @users = Etc.getgrnam('ubuntu').mem
  end

  def user_permissions
    @user_permissions ||= UserPermission.all
  end

  def sensitive_models
    @sensitive_models ||= SensitiveModel.all.map { |x| x.name }
  end

end
