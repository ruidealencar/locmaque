# frozen_string_literal: true
ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: "Painel inicial"

  content title: "Painel inicial" do
    div class: "blank_slate_container" do
      span class: "image" do
        image_tag("/truck.jpg")
      end
    end
    div class: "blank_slate_container", id: "dashboard_default_message" do
      h1 class: "blank_slate" do
        "LOCMAQUE"
      end
    end

    columns do
      column do
        panel "Info" do
          para "Bem-vindo ao centro de cadastro da empresa LOCMAQUE"
        end
      end
    end
  end
  
end
