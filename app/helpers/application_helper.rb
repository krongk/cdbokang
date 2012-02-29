module ApplicationHelper
  
  def load_site_info
    $sites = {}
    Site.all.each do |item|
      unless $sites.include?(item.name)
        $sites[item.name.to_sym] = item.value
      end
    end
  end

  def title(page_title)
    title = $sites[:site_name] unless page_title.blank?
  	content_for(:title){ title}
  end
  def meta_keywords(meta_keywords)
  	content_for(:meta_keywords){ meta_keywords}
  end
  def meta_description(meta_description)
  	content_for(:meta_description){ meta_description}
  end

  #set 'current' class to menu
  def current_class(title)
    if request.url =~ /\/#{title}/i
        'current'
    else
        ''
    end
  end

end
