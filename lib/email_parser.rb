# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    def initialize(emails)
        @emails = emails
    end

    def parse
        out = @emails.split(",").map do |email|
            if email.strip
                email.strip.split.map do |email2|
                    if email2.strip
                        email2.strip
                    else
                        email2
                    end
                end
            else
                email.split.map do |email2|
                    if email2.strip
                        email2.strip
                    else
                        email2
                    end
                end
            end
        end
        
        out.flatten.uniq
    end
end