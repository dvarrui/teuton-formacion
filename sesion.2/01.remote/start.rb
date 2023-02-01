use "targets"

play do
  show
  export format: :txt
  export format: :html, feedback: false
  send copy_to: :debian
end
