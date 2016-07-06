/*
 *  Copyright (c) 2010-2016, MIT Probabilistic Computing Project
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */

/*
 * Terminal conventions:
 * - T_ means a punctuation token.
 * - K_ means a keyword.
 * - L_ means a lexeme, which has useful associated text, e.g. an integer.
 */


variables           ::= K_VARIABLES column_list(cols) T_SEMI.
ignore              ::= K_IGNORE column_list(cols) T_SEMI.

column_list(one)    ::= column_name(col).
column_list(many)   ::= column_list(cols) T_COMMA column_name(col).

column_name         ::= L_NAME(name).
