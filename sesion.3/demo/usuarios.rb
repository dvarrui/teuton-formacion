group "Usuarios" do
  target "Usuario vagrant"
  run "id vagrant", on: :host
  expect_one [ "uid=", "(vagrant)", "gid=" ]

  target "Usuario vader"
  run "id vader", on: :host
  expect_one [ "uid=", "(vader)", "gid=" ]

end
