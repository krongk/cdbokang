#encoding: utf-8
class ContactsController < InheritedResources::Base
  before_filter :authenticate_admin_user!, :except => [:index, :show, :new, :create]

  def create
  	if params[:contact][:name].blank? || params[:contact][:name] == '您的姓名...' ||
  		params[:contact][:phone].blank? || params[:contact][:phone]== '您的联系方式...' ||
  		params[:contact][:content].blank?
  	  flash[:notice] = "信息提交失败，请检查是否输入正确的信息。"
  	  redirect_to "/contacts/new"
  	  return false
  	else
	  flash[:notice] = "信息提交成功！请等待客服人员与您联系。"
	  super
	end
  end
end
