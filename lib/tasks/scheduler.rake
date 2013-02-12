

desc "Generating pdf containing today's orders"
task :generate_order_pdfs do
  require 'prawn'
  puts "Generating pdfs for today's orders"
  Prawn::Document.generate("order.pdf") do
    text_box "Jane Smith\n"+
              "10 M. K. Road\n"+
              "SW1 20ZY\n"+
              "London",
              :at => [100, 450],
              :height => 100,
              :width => 100
  end
  puts "Done."
end