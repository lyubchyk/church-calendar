# Controller generated by Typus, use it to extend admin functionality.
class Admin::CustomDatesController < Admin::MasterController
auto_complete_for :apostle, :name
auto_complete_for :gospel, :name
auto_complete_for :prayer, :name
auto_complete_for :troparion, :name
auto_complete_for :gospel_apostle, :name
auto_complete_for :sermon, :name

def add_item
  date = CustomDate.find(params[:id])
    item = params[:class_name].constantize.find_by_name(params[:name])

  if item.custom_date == date
    render :nothing => true
  else
      item.custom_date = date
        item.save

    render :update do |page|
      page.insert_html :bottom, "#{item.class.to_s.downcase.pluralize}-list", "<li id='item_#{item.id}'>#{item.name} #{link_to_remote "&nbsp;", :url => { :action => "remove", :item_id => item.id, :item_class => item.class.to_s }}</li>"
      page.visual_effect :highlight, "#{item.class.to_s.downcase.pluralize}-list"
    end
  end
end

def sort
@date = CustomDate.find(params[:id])
association = params[:association]
  @date.send(association).each do | f |
    f.position = params["#{association}-list"].index(f.id.to_s)+1
    f.save
  end
render :nothing => true
end

def remove
  item = params[:item_class].constantize.find(params[:item_id])
    item.custom_date_id = nil
      item.save

  render :update do |page|
    page.remove "item_#{item.id}"
    page.visual_effect :highlight, "#{item.class.to_s.downcase.pluralize}-list"
  end
end

end