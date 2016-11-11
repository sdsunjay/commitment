module ApplicationHelper
  def hide_on_mobile(link_path)
    current_page?(link_path) ? 'hidden-sm' : ''
  end

  def title(page_title)
    content_for(:title) { page_title }
  end
end

module ActionView
  module Helpers
    class FormBuilder 
      def date_select(method, options = {}, html_options = {})
        existing_date = @object.send(method) 
        formatted_date = existing_date.to_date.strftime('%F') if existing_date.present?
        @template.content_tag(:div, class: 'input-group date', id: 'datetimepicker') do    
          text_field(method, :value => formatted_date, class: 'form-control', 'data-date-format': 'YYYY-MM-DD', style: 'margin-bottom: 0') +
          @template.content_tag(:span, @template.content_tag(:span, '', class: 'glyphicon glyphicon-calendar'), class: 'input-group-addon')
        end
      end

      def datetime_select(method, options = {}, html_options = {})
        existing_time = @object.send(method) 
        formatted_time = existing_time.to_time.strftime('%F %I:%M %p') if existing_time.present?
        @template.content_tag(:div, class: 'input-group', id: 'datetimepicker') do    
          text_field(method, value: formatted_time, class: 'form-control datetimepicker', 'data-date-format': 'YYYY-MM-DD hh:mm A', style: 'margin-bottom: 0') +
          @template.content_tag(:span, @template.content_tag(:span, '', class: 'glyphicon glyphicon-calendar'), class: 'input-group-addon')
        end
      end
    end
  end
end
  