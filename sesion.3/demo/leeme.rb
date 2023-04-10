group "Fichero leeme.txt" do
  target "Crear el fichero leeme.txt en home/vagrant"
  run "vdir /home/vagrant", on: :host
  expect_one [ "-rw-r--r--", "leeme.txt" ]

  target "Escribir IDP2223 dentro de leeme.txt"
  run "cat /home/vagrant/leeme.txt", on: :host
  expect_one "IDP2223"

end
