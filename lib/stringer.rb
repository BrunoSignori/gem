require "stringer/version"

module Stringer
    def self.spacify *strings
        string = ""
        strings.each do |s|
            string += s + " "
        end
        string.split.join(" ")
    end
    def self.minify string, val
        str = string
        if string.length > val
            str.slice(0..val) + "..."
        else
            str
        end
    end
    def self.replacify string, val, valu
        str = string
        str[val] = valu
        str
    end
    def self.tokenize string
        arr = []
        string.each_line do |line|
        arr = line.split
        end
        arr
    end
    def self.removify string, val
        str = string
        str.slice! val
        str.split.join(" ")
    end
end

Stringer.removify("hey man nice gun","gun")