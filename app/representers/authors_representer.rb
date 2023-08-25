class AuthorsRepresenter

    def initialize(authors)
        @authors = authors
    end

    def as_json
        authors.map do |author|
            {
                id: author.id,
                name: author.name,
                email: author.email
            }
        end
    end

    private
    attr_reader :authors
end