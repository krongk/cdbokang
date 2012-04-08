#encoding: utf-8
class MerchantsController < InheritedResources::Base
  before_filter :authenticate_admin_user!, :except => [:index, :show, :new, :create]

  def create
  	if params[:merchant][:name].blank? || params[:merchant][:phone].blank?
	  	flash[:notice] = "信息提交失败，请检查输入是否正确。"
	  	redirect_to "/merchants/new"
	else
	  flash[:notice] = "信息提交成功！请等待客服人员与您联系。"
  	  super
  	end
  end

end 
