# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "@hotwired--turbo-rails.js" # @8.0.23
pin "@hotwired/stimulus", to: "@hotwired--stimulus.js" # @3.2.2
#pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
# pin "@rails/ujs", to: "https://ga.jspm.io/npm:@rails/ujs@7.0.0/lib/assets/compiled/rails-ujs.js"
# pin "@rails/ujs", to: "rails-ujs.js", #preload: true

pin "@hotwired/turbo", to: "@hotwired--turbo.js", integrity: "sha384-+xSpMRL6/ETsidXRIA+ZQwwpPD6XspHtaGecagXTBZBGUfkFZOjn1D4ubXlmfcyX" # @8.0.23
pin "@rails/actioncable/src", to: "@rails--actioncable--src.js", integrity: "sha384-tSRMmfA7+kpjd6PgeBQ3LL+TeNy95vUlFtiAJLnmeNnaZwSU1BTVIrcgPSXKSf6H" # @7.2.302
