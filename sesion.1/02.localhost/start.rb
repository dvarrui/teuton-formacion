group "GROUP NAME" do
  target "Crear el usuario david"
  run "getent passwd david"
  expect "david:"

  target "Crear el usuario sergio"
  run "cat /etc/passwd"
  expect_none "sergio"
end

play do
  show
  export
end
