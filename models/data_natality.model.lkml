connection: "natality"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: data_natality_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}


persist_with: data_natality_default_datagroup

explore: fathers_natality {
  join: abnormality_natality{
    relationship: many_to_one
    sql_on: ${fathers_natality.county_of_residence_fips}=${abnormality_natality.county_of_residence_fips} ;;
  }
}

explore: payment_natality {}

explore: county_natality {}

explore: abnormality_natality {}

explore: morbidity_natality {}

explore: mothers_natality {}
