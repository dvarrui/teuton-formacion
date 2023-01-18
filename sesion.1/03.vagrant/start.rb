group "GROUP NAME" do
  target "Crear el usuario david"
  run "getent passwd david", on: :debian
  expect "david:"

  target "Crear el usuario sergio"
  run "cat /etc/passwd", on: :debian
  expect "sergio:"
end

play do
  show
  export format: :html
  send copy_to: :debian
end
