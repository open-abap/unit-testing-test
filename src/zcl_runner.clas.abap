CLASS zcl_runner DEFINITION PUBLIC.
  PUBLIC SECTION.
    METHODS: run.
  PRIVATE SECTION.
    METHODS has_tests
      IMPORTING is_tadir TYPE tadir
      RETURNING VALUE(rv_boolean) TYPE abap_bool.
ENDCLASS.

CLASS zcl_runner IMPLEMENTATION.

  METHOD run.

    DATA: lt_tadir TYPE STANDARD TABLE OF tadir,
          ls_tadir TYPE tadir.

    SELECT * FROM tadir INTO TABLE lt_tadir
      WHERE object = 'CLAS' OR object = 'PROG' OR object = 'FUGR'.

    LOOP AT lt_tadir INTO ls_tadir.

      IF has_tests( ls_tadir ) = abap_false.
        CONTINUE.
      ENDIF.

* todo

    ENDLOOP.

  ENDMETHOD.

  METHOD has_tests.

* todo

  ENDMETHOD.

ENDCLASS.