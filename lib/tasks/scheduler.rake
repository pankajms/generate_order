

desc "Generating pdf containing today's orders"
task :generate_order_pdfs do
  require 'prawn'
  puts "Generating pdfs for today's orders"

  pdf = Prawn::Document.new
  pdf.text "Hello World"
  pdf.render_file "assignment.pdf"
  puts "Done."

end