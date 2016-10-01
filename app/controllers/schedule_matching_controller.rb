class ScheduleMatchingController < ApplicationController
  def index
    @idle_times = IdleTime.where("day < ?", "2016/10/08").order("day", "hour")

    @people = []
    @times = []
    @idle_times.each do |idle_time|
      if !@people.include?(idle_time.person_name) then 
        @people << idle_time.person_name
      end
      time = idle_time.day + ' ' + idle_time.hour
      if !@times.include?(time) then
        @times << time
      end
    end

    @schedules = []
    @people.each do |person|
      person_schedules = Array.new()
      person_schedules << person
      @times.each do |time|
        found = false
        @idle_times.each do |idle_time|
          if idle_time.person_name == person && (idle_time.day + ' ' + idle_time.hour) == time then
            person_schedules << idle_time.idle_flag 
            found = true
            break
          end
        end
        if !found then
            person_schedules << 'X'
        end
      end
      @schedules << person_schedules
    end

  end
end
