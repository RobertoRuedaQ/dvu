every :monday, at: "8am" do
  rake "newsletter:send"
end

every :day, at: "8am" do
  rake "remainder:report"
end