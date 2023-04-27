import Config

config :wallaby,
  driver: Wallaby.Chrome,
  chromedriver: [
    headless: false
  ]
