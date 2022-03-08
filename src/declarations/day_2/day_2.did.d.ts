import type { Principal } from '@dfinity/principal';
export interface _SERVICE {
  'bubble_sort' : (arg_0: Array<bigint>) => Promise<Array<bigint>>,
  'capitalize_character' : (arg_0: number) => Promise<string>,
  'capitalize_text' : (arg_0: string) => Promise<string>,
  'decimal_to_bits' : (arg_0: bigint) => Promise<bigint>,
  'duplicated_character' : (arg_0: string) => Promise<string>,
  'greet' : (arg_0: string) => Promise<string>,
  'is_inside' : (arg_0: string, arg_1: number) => Promise<boolean>,
  'max_number_with_n_bits' : (arg_0: bigint) => Promise<bigint>,
  'nat_to_nat8' : (arg_0: bigint) => Promise<number>,
  'trim_whitespace' : (arg_0: string) => Promise<string>,
}
