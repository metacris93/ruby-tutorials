module Model
	class Company

	end
	class Employee

	end
end

module Reports
	class ExcelReporter
		def build
			puts "Excel report"
		end
	end
	class EmailReporter
		def build
			"Email Report"
		end
	end
end

excel_reports = Reports::ExcelReporter.new
excel_reports.build