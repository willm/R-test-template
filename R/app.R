library(RPostgreSQL)

get_person <- function () {
    driver <- dbDriver("PostgreSQL")
    connection  <- dbConnect(
        driver,
        user="postgres",
        password="",
        host="db",
        port="5432",
        dbname="my_db"
    )
    df <- dbGetQuery(connection , "SELECT name FROM people;")
    return (df$name)
}
