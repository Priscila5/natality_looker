view: county_natality {
  sql_table_name: `natality.county_natality` ;;

  dimension: ave_age_of_mother {
    type: number
    sql: ${TABLE}.Ave_Age_of_Mother ;;
  }
  dimension: ave_birth_weight_gms {
    type: number
    sql: ${TABLE}.Ave_Birth_Weight_gms ;;
  }
  dimension: ave_lmp_gestational_age_wks {
    type: number
    sql: ${TABLE}.Ave_LMP_Gestational_Age_Wks ;;
  }
  dimension: ave_number_of_prenatal_wks {
    type: number
    sql: ${TABLE}.Ave_Number_of_Prenatal_Wks ;;
  }
  dimension: ave_oe_gestational_age_wks {
    type: number
    sql: ${TABLE}.Ave_OE_Gestational_Age_Wks ;;
  }
  dimension: ave_pre_pregnancy_bmi {
    type: number
    sql: ${TABLE}.Ave_Pre_pregnancy_BMI ;;
  }
  dimension: births {
    type: number
    sql: ${TABLE}.Births ;;
  }
  dimension: county_of_residence {
    type: string
    sql: ${TABLE}.County_of_Residence ;;
  }
  dimension: county_of_residence_fips {
    type: number
    sql: ${TABLE}.County_of_Residence_FIPS ;;
  }
  dimension_group: year {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Year ;;
  }
  measure: count {
    type: count
  }
}
