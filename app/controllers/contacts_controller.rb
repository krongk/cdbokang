#encoding: utf-8
class ContactsController < InheritedResources::Base
  before_filter :authenticate_admin_user!, :except => [:index, :show, :new, :create]

  def create
  	flash[:notice] = "信息提交成功！请等待客服人员与您联系。"
  	super
  end
end
