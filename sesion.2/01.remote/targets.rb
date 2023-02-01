group "Sesión 2" do
  target "Crear el usuario david"
  run "getent passwd david", on: :debian
  expect "david:"

  target "Crear el usuario sergio"
  run "cat /etc/passwd", on: :debian
  # log result.value
  expect "sergio:"

  run "echo 'hola'", on: :debian
  unique "hola", result.value
end
