class Patient
    attr_accessor :name
  
    @@all = []
  
    def initialize(name)
      @name = name
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def new_appointment(doctor, date)
      Appointment.new(self, doctor, date)
    end
  
  
    def appointments
      Appointment.all.select {|items| items.patient == self}
    end
  
    def doctors
      appointments.map do |appointment| 
        appointment.doctor 
      end
    end
  
  
    end