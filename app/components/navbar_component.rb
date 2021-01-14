# frozen_string_literal: true

class NavbarComponent < ViewComponent::Base

  private 

  def on_index_page?
    current_page?(controller: 'products', action: 'index') || current_page?(products_path)
  end
end
