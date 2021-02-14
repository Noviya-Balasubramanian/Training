require 'active_record'

class Todo < ActiveRecord::Base
    def due_today?
        due_date == Date.today
    end
    def to_string
        display_status = completed ? "[X]" : "[ ]"
        display_date = due_today? ? nil : due_date
        print("#{display_status} #{todo_text} #{display_date} \n")
    end
    def self.show_list
        overdue = []
        duetoday = []
        duelater = []
        all.map do |todo|
            if todo.due_today?
                duetoday.append(todo)
            elsif todo.due_date > Date.today
                duelater.append(todo)
            else
                overdue.append(todo)
            end
        end
        print("Overdue:\n")
        overdue.map{|todo| todo.to_string}
        print("Due today:\n")
        duetoday.map{|todo| todo.to_string}
        print("Due later:\n")
        duelater.map{|todo| todo.to_string}
    end
    def self.add_task(t)
        create!(todo_text: t[:todo_text], due_date: Date.today + t[:due_in_days], completed: false)
    end
    def self.mark_as_complete!(id)
        todo = Todo.find(id)
        todo[:completed] = true
        todo.save
        todo
    end
end