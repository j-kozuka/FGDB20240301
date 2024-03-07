#> python make_operation_matlab.py

ifn = 'operation.txt' # input file

ofn = 'operation.m' # output file
hbfn = 'operation_header_block.m' # header block file name
obfn = 'operation_body_block.m' # operation block file name

#### write header
with open(hbfn, "r", encoding="utf-8") as f:
    content = f.read()

# ファイルの中身を行ごとに分割する
lines = content.split("\n")

# テキストファイルを書き込みモードで開く
with open(ofn, "w", encoding="utf-8") as f:
    # 各行についてループする
    for line in lines:
        f.write(line + "\n")
        
        ## write operation 
trg_ope = "fn"
df_ope = "tmp_func" # function name
#ope = 'ope1'

trg_in = "readme.stdin"
df_in = 'tmp_in' # input name
#in_dat = 'out_tmp'

df_out = 'tmp_out' # output name
#out_dat = 'dat333'

# コメントアウトを含むPythonファイルを読み込む
with open(obfn, "r", encoding="utf-8") as f:
    content = f.read()

# ファイルの中身を行ごとに分割する
lines = content.split("\n")


# ファイルを開く
with open(ifn, 'r') as f:
    # 一行ずつ読み込む
    for line in f:
        # 行末の改行文字を削除して表示
        print(line.rstrip())
        a = line.rstrip()
        
        # 分割
        if len(a) != 0:
            parts = a.split('=')
            func_parts = parts[1].split('(')
           
            # 結果を表示
            print(f"output: {parts[0].strip()}")
            print(f"function: {func_parts[0].strip()}")
            ope = list({func_parts[0].strip()})[0]
            out_dat = list({parts[0].strip()})[0]
            in_dat = func_parts[1].strip(' )(')
            
            code = f"python {func_parts[0].strip()}/func.py"
            print(code)
            
            code2 = f"readme = readme_json( {func_parts[0].strip()})"
            print(code2)

            out_list = func_parts[1].strip(' )(').split(', ')         
            print(out_list)

            for item in out_list[0].split(','):
                print(item)
                
            #print(f"input: {func_parts[1].strip(' )(').split(', ')}")
            print('\n')

        # テキストファイルを書き込みモードで開く
        with open(ofn, "a", encoding="utf-8") as f:
            # 各行についてループする
            for line in lines:
                if line.startswith(trg_ope):
                    line = line.replace(df_ope, ope)
                    #print(line)
                    f.write(line + "\n")
                elif line.startswith(trg_in):
                    line = line.replace(df_in, in_dat) 
                    #print(line)
                    f.write(line + "\n")
                elif line.startswith(df_out):
                    line = line.replace(df_out, out_dat) 
                    #print(line)
                    f.write(line + "\n")            
                else:
                    #print(line)
                    f.write(line + "\n")
        
            print('\n')
            f.write("\n")