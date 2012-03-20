# -*- encoding: UTF-8 -*-

names = [
  "切手を買う",
  "ドラえもん貯金をする",
  "コロッケを買う",
  "藤子不二雄に会う",
  "白州12年を買う"
]

description = "これは説明です。" * 20

5.times do |n|
  Task.create(:name => names[n], :description => description,
              :due_date => (n-2).days.from_now, :done => n.zero?)
end
