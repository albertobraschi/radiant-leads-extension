
class LeadsExtension < Radiant::Extension
  version "0.1"
  description %{ Enables the collection of leads and forwarding them to CRM systems. }
  url "http://github.com/jhulten/radiant-leads-extension"

  define_routes do |map|
    # Leads Routes
    map.with_options(:controller => 'admin/leads') do |lead|
      lead.lead_index 'admin/leads', :action => 'index'
      lead.lead_edit 'admin/leads/edit/:id', :action => 'edit'
      lead.lead_new 'admin/leads/new', :action => 'new'
      lead.lead_remove 'admin/leads/remove/:id', :action => 'remove'
    end
    
    map.with_options(:controller => 'admin/lead_form') do |lead_form|
        lead_form.lead_form_index 'admin/lead_form', :action => 'index'
        lead_form.lead_form_edit 'admin/lead_form/edit/:id', :action => 'edit'
        lead_form.lead_form_new 'admin/lead_form/new', :action => 'new'
        lead_form.lead_form_remove 'admin/lead_form/remove/:id', :action => 'remove'
    end
  end

  def activate
    admin.tabs.add  "Leads", "/admin/leads", :before => "Layouts", :visibility => [:all]
  end

  def deactivate
     admin.tabs.remove "Leads"
  end
 
end
