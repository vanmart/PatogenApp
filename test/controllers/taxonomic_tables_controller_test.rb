require 'test_helper'

class TaxonomicTablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @taxonomic_table = taxonomic_tables(:one)
  end

  test "should get index" do
    get taxonomic_tables_url
    assert_response :success
  end

  test "should get new" do
    get new_taxonomic_table_url
    assert_response :success
  end

  test "should create taxonomic_table" do
    assert_difference('TaxonomicTable.count') do
      post taxonomic_tables_url, params: { taxonomic_table: { division: @taxonomic_table.division, family: @taxonomic_table.family, gender: @taxonomic_table.gender, kingdom: @taxonomic_table.kingdom, order: @taxonomic_table.order, species: @taxonomic_table.species, t_class: @taxonomic_table.t_class } }
    end

    assert_redirected_to taxonomic_table_url(TaxonomicTable.last)
  end

  test "should show taxonomic_table" do
    get taxonomic_table_url(@taxonomic_table)
    assert_response :success
  end

  test "should get edit" do
    get edit_taxonomic_table_url(@taxonomic_table)
    assert_response :success
  end

  test "should update taxonomic_table" do
    patch taxonomic_table_url(@taxonomic_table), params: { taxonomic_table: { division: @taxonomic_table.division, family: @taxonomic_table.family, gender: @taxonomic_table.gender, kingdom: @taxonomic_table.kingdom, order: @taxonomic_table.order, species: @taxonomic_table.species, t_class: @taxonomic_table.t_class } }
    assert_redirected_to taxonomic_table_url(@taxonomic_table)
  end

  test "should destroy taxonomic_table" do
    assert_difference('TaxonomicTable.count', -1) do
      delete taxonomic_table_url(@taxonomic_table)
    end

    assert_redirected_to taxonomic_tables_url
  end
end
