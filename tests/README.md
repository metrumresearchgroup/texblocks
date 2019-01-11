Tests and Coverage
================
10 January, 2019 22:20:06

This output is created by
[covrpage](https://github.com/metrumresearchgroup/covrpage).

## Coverage

Coverage summary is created using the
[covr](https://github.com/r-lib/covr) package.

| Object                                         | Coverage (%) |
| :--------------------------------------------- | :----------: |
| texblocks                                      |    97.82     |
| [R/methods.R](../R/methods.R)                  |    80.00     |
| [R/multi\_row.R](../R/multi_row.R)             |    96.72     |
| [R/multi\_column.R](../R/multi_column.R)       |    96.83     |
| [R/attr.R](../R/attr.R)                        |    100.00    |
| [R/casting.R](../R/casting.R)                  |    100.00    |
| [R/cline.R](../R/cline.R)                      |    100.00    |
| [R/hline.R](../R/hline.R)                      |    100.00    |
| [R/join.R](../R/join.R)                        |    100.00    |
| [R/multi\_transpose.R](../R/multi_transpose.R) |    100.00    |
| [R/operators.R](../R/operators.R)              |    100.00    |
| [R/pad.R](../R/pad.R)                          |    100.00    |
| [R/parse\_tb.R](../R/parse_tb.R)               |    100.00    |
| [R/reduce.R](../R/reduce.R)                    |    100.00    |
| [R/tabular.R](../R/tabular.R)                  |    100.00    |

<br>

## Unit Tests

Unit Test summary is created using the
[testthat](https://github.com/r-lib/testthat)
package.

| file                                          |  n |  time | error | failed | skipped | warning |
| :-------------------------------------------- | -: | ----: | ----: | -----: | ------: | ------: |
| [test-basics.R](testthat/test-basics.R)       | 16 | 0.690 |     0 |      0 |       0 |       0 |
| [test-lines.R](testthat/test-lines.R)         | 16 | 0.552 |     0 |      0 |       0 |       0 |
| [test-multi.R](testthat/test-multi.R)         |  8 | 0.050 |     0 |      0 |       0 |       0 |
| [test-operators.R](testthat/test-operators.R) |  4 | 0.104 |     0 |      0 |       0 |       0 |
| [test-pad.R](testthat/test-pad.R)             | 20 | 0.052 |     0 |      0 |       0 |       0 |
| [test-reduce.R](testthat/test-reduce.R)       | 13 | 0.200 |     0 |      0 |       0 |       0 |
| [test-transpose.R](testthat/test-transpose.R) |  3 | 0.348 |     0 |      0 |       0 |       0 |

<details closed>

<summary> Show Detailed Test Results
</summary>

| file                                                | context   | test                          | status | n |  time |
| :-------------------------------------------------- | :-------- | :---------------------------- | :----- | -: | ----: |
| [test-basics.R](testthat/test-basics.R#L6)          | basics    | as.tb: as.tb                  | PASS   | 1 | 0.012 |
| [test-basics.R](testthat/test-basics.R#L10)         | basics    | as.tb: as.tb.tb               | PASS   | 1 | 0.001 |
| [test-basics.R](testthat/test-basics.R#L14)         | basics    | as.tb: as.integer.tb          | PASS   | 1 | 0.014 |
| [test-basics.R](testthat/test-basics.R#L18)         | basics    | as.tb: as.matrix.tb           | PASS   | 1 | 0.026 |
| [test-basics.R](testthat/test-basics.R#L22)         | basics    | as.tb: as.data.frame.tb       | PASS   | 1 | 0.017 |
| [test-basics.R](testthat/test-basics.R#L32)         | basics    | as.tb: bdiag                  | PASS   | 1 | 0.017 |
| [test-basics.R](testthat/test-basics.R#L37)         | basics    | as.tb: list                   | PASS   | 2 | 0.078 |
| [test-basics.R](testthat/test-basics.R#L48)         | basics    | from tb: as.matrix            | PASS   | 1 | 0.108 |
| [test-basics.R](testthat/test-basics.R#L57)         | basics    | from tb: as.data.frame        | PASS   | 1 | 0.081 |
| [test-basics.R](testthat/test-basics.R#L68)         | basics    | tabular: basic                | PASS   | 1 | 0.098 |
| [test-basics.R](testthat/test-basics.R#L72)         | basics    | tabular: align right          | PASS   | 1 | 0.041 |
| [test-basics.R](testthat/test-basics.R#L76)         | basics    | tabular: align center         | PASS   | 1 | 0.043 |
| [test-basics.R](testthat/test-basics.R#L80)         | basics    | tabular: align left           | PASS   | 1 | 0.053 |
| [test-basics.R](testthat/test-basics.R#L84)         | basics    | tabular: align 2 columns      | PASS   | 1 | 0.057 |
| [test-basics.R](testthat/test-basics.R#L88)         | basics    | tabular: wrong align length   | PASS   | 1 | 0.044 |
| [test-lines.R](testthat/test-lines.R#L10)           | lines     | hline: default                | PASS   | 1 | 0.022 |
| [test-lines.R](testthat/test-lines.R#L15)           | lines     | hline: top row singleton      | PASS   | 1 | 0.021 |
| [test-lines.R](testthat/test-lines.R#L20)           | lines     | hline: top row                | PASS   | 2 | 0.074 |
| [test-lines.R](testthat/test-lines.R#L26)           | lines     | hline: first row              | PASS   | 1 | 0.085 |
| [test-lines.R](testthat/test-lines.R#L31)           | lines     | hline: not 0 not 1            | PASS   | 1 | 0.072 |
| [test-lines.R](testthat/test-lines.R#L36)           | lines     | hline: multirow               | PASS   | 1 | 0.056 |
| [test-lines.R](testthat/test-lines.R#L42)           | lines     | hline: strip                  | PASS   | 1 | 0.065 |
| [test-lines.R](testthat/test-lines.R#L56)           | lines     | cline: top row list           | PASS   | 4 | 0.019 |
| [test-lines.R](testthat/test-lines.R#L68)           | lines     | cline: top row data.frame     | PASS   | 1 | 0.016 |
| [test-lines.R](testthat/test-lines.R#L73)           | lines     | cline: not top row data.frame | PASS   | 2 | 0.068 |
| [test-lines.R](testthat/test-lines.R#L80)           | lines     | cline: strip                  | PASS   | 1 | 0.054 |
| [test-multi.R](testthat/test-multi.R#L5)            | multi     | multirow: default             | PASS   | 1 | 0.001 |
| [test-multi.R](testthat/test-multi.R#L9)            | multi     | multirow: strip               | PASS   | 1 | 0.001 |
| [test-multi.R](testthat/test-multi.R#L13)           | multi     | multirow: find                | PASS   | 1 | 0.003 |
| [test-multi.R](testthat/test-multi.R#L17)           | multi     | multirow: transpose           | PASS   | 1 | 0.019 |
| [test-multi.R](testthat/test-multi.R#L23)           | multi     | multicol: default             | PASS   | 1 | 0.001 |
| [test-multi.R](testthat/test-multi.R#L27)           | multi     | multicol: strip               | PASS   | 1 | 0.002 |
| [test-multi.R](testthat/test-multi.R#L31)           | multi     | multicol: find                | PASS   | 1 | 0.002 |
| [test-multi.R](testthat/test-multi.R#L35)           | multi     | multicol: transpose           | PASS   | 1 | 0.021 |
| [test-operators.R](testthat/test-operators.R#L6)    | operators | no pad: +                     | PASS   | 1 | 0.023 |
| [test-operators.R](testthat/test-operators.R#L11)   | operators | no pad: /                     | PASS   | 1 | 0.019 |
| [test-operators.R](testthat/test-operators.R#L18)   | operators | pad: +                        | PASS   | 1 | 0.032 |
| [test-operators.R](testthat/test-operators.R#L23)   | operators | pad: /                        | PASS   | 1 | 0.030 |
| [test-pad.R](testthat/test-pad.R#L9)                | pad       | columns: class                | PASS   | 1 | 0.001 |
| [test-pad.R](testthat/test-pad.R#L13)               | pad       | columns: bad side             | PASS   | 1 | 0.001 |
| [test-pad.R](testthat/test-pad.R#L17)               | pad       | columns: left 0               | PASS   | 1 | 0.001 |
| [test-pad.R](testthat/test-pad.R#L21)               | pad       | columns: left 1               | PASS   | 1 | 0.001 |
| [test-pad.R](testthat/test-pad.R#L25)               | pad       | columns: left 2               | PASS   | 1 | 0.001 |
| [test-pad.R](testthat/test-pad.R#L29)               | pad       | columns: right 0              | PASS   | 1 | 0.001 |
| [test-pad.R](testthat/test-pad.R#L33)               | pad       | columns: right 1              | PASS   | 1 | 0.001 |
| [test-pad.R](testthat/test-pad.R#L37)               | pad       | columns: right 2              | PASS   | 1 | 0.001 |
| [test-pad.R](testthat/test-pad.R#L46)               | pad       | rows: class                   | PASS   | 1 | 0.005 |
| [test-pad.R](testthat/test-pad.R#L50)               | pad       | rows: bad side                | PASS   | 1 | 0.001 |
| [test-pad.R](testthat/test-pad.R#L54)               | pad       | rows: bottom 0                | PASS   | 1 | 0.006 |
| [test-pad.R](testthat/test-pad.R#L58)               | pad       | rows: bottom 1                | PASS   | 1 | 0.005 |
| [test-pad.R](testthat/test-pad.R#L62)               | pad       | rows: bottom 2                | PASS   | 1 | 0.006 |
| [test-pad.R](testthat/test-pad.R#L66)               | pad       | rows: top 0                   | PASS   | 1 | 0.005 |
| [test-pad.R](testthat/test-pad.R#L70)               | pad       | rows: top 1                   | PASS   | 1 | 0.005 |
| [test-pad.R](testthat/test-pad.R#L74)               | pad       | rows: top 2                   | PASS   | 1 | 0.005 |
| [test-pad.R](testthat/test-pad.R#L83)               | pad       | wrapper: bad side             | PASS   | 1 | 0.002 |
| [test-pad.R](testthat/test-pad.R#L87)               | pad       | wrapper: bad length           | PASS   | 1 | 0.001 |
| [test-pad.R](testthat/test-pad.R#L91)               | pad       | wrapper: rows                 | PASS   | 1 | 0.002 |
| [test-pad.R](testthat/test-pad.R#L95)               | pad       | wrapper: cols                 | PASS   | 1 | 0.001 |
| [test-reduce.R](testthat/test-reduce.R#L2)          | reduce    | rowwise: class                | PASS   | 1 | 0.001 |
| [test-reduce.R](testthat/test-reduce.R#)            | reduce    | rowwise: dim                  | PASS   | 1 | 0.042 |
| [test-reduce.R](testthat/test-reduce.R#L2)          | reduce    | rowwise merge: class          | PASS   | 1 | 0.001 |
| [test-reduce.R](testthat/test-reduce.R#)            | reduce    | rowwise merge: dim            | PASS   | 1 | 0.042 |
| [test-reduce.R](testthat/test-reduce.R#)            | reduce    | rowwise merge: merged         | PASS   | 1 | 0.021 |
| [test-reduce.R](testthat/test-reduce.R#L2)          | reduce    | colwise: class                | PASS   | 1 | 0.001 |
| [test-reduce.R](testthat/test-reduce.R#)            | reduce    | colwise: dim                  | PASS   | 1 | 0.006 |
| [test-reduce.R](testthat/test-reduce.R#L2)          | reduce    | colwise merge: class          | PASS   | 1 | 0.001 |
| [test-reduce.R](testthat/test-reduce.R#)            | reduce    | colwise merge: dim            | PASS   | 1 | 0.006 |
| [test-reduce.R](testthat/test-reduce.R#)            | reduce    | colwise merge: merged         | PASS   | 1 | 0.002 |
| [test-reduce.R](testthat/test-reduce.R#L2)          | reduce    | mix: class                    | PASS   | 1 | 0.000 |
| [test-reduce.R](testthat/test-reduce.R#)            | reduce    | mix: dim                      | PASS   | 1 | 0.054 |
| [test-reduce.R](testthat/test-reduce.R#)            | reduce    | mix: merged                   | PASS   | 1 | 0.023 |
| [test-transpose.R](testthat/test-transpose.R#L6_L9) | transpose | vector: row to col            | PASS   | 1 | 0.090 |
| [test-transpose.R](testthat/test-transpose.R#L18)   | transpose | vector: multicol to multirow  | PASS   | 1 | 0.089 |
| [test-transpose.R](testthat/test-transpose.R#L28)   | transpose | vector: multirow to multicol  | PASS   | 1 | 0.169 |

</details>

<details>

<summary> Session Info </summary>

| Field    | Value                               |
| :------- | :---------------------------------- |
| Version  | R version 3.5.1 (2018-07-02)        |
| Platform | x86\_64-apple-darwin15.6.0 (64-bit) |
| Running  | macOS 10.14.2                       |
| Language | en\_US                              |
| Timezone | America/New\_York                   |

| Package  | Version    |
| :------- | :--------- |
| testthat | 2.0.0.9000 |
| covr     | 3.2.0      |
| covrpage | 0.0.69     |

</details>

<!--- Final Status : pass --->
