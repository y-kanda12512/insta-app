# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"

# jQuery、axiosをピン留め
pin "jquery" # @3.7.1
pin "axios" # @1.7.7
pin "#lib/adapters/http.js", to: "#lib--adapters--http.js.js" # @1.7.7
pin "#lib/platform/node/classes/FormData.js", to: "#lib--platform--node--classes--FormData.js.js" # @1.7.7
pin "#lib/platform/node/index.js", to: "#lib--platform--node--index.js.js" # @1.7.7
