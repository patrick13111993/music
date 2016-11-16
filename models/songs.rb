require('pg')
require_relative('../db/sql_runner')

class Song

    attr_accessor :title
    attr_reader :id

    def initialize(options)
      @title = options['title']
      @id = options['id'].to_i if options['id']
    end

    def save()
      sql = "INSERT INTO songs(title) VALUES ('#{@title}') returning *;"
      result = SqlRunner.run(sql)
      @id = result[0]['id'].to_i
    end

    def self.all()
      songs = SqlRunner.run("SELECT * FROM songs;")
      return songs.map { |hash| Song.new(hash)}      
    end

    def self.delete_all()
      SqlRunner.run("DELETE FROM songs;")
    end

    def update()
      SqlRunner.run("UPDATE songs SET (title) = ('#{title}') WHERE id = #{id};")
    end

    def delete()
      SqlRunner.run("DELETE FROM songs WHERE id = #{id};")
    end

    def album()
      result = SqlRunner.run("SELECT * FROM albums WHERE id = #{album_id};")
      album = Album.new(result[0])
      return album
    end
  end