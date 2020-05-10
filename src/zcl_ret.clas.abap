CLASS zcl_ret DEFINITION.

  PUBLIC SECTION.
    METHODS:
      run
        RETURNING
          VALUE(rv_ret) TYPE string.

ENDCLASS.

CLASS zcl_ret IMPLEMENTATION.
  METHOD run.
    rv_ret = 'X'.
  ENDMETHOD.
ENDCLASS.