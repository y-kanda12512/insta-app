# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"

# jQuery、axiosをピン留め
pin "jquery" # @3.7.1
pin "axios" # @1.7.7
pin "rails-ujs" # @5.2.8
