# Koudstaal, S; Pujades-Rodriguez, M; Denaxas, S; Gho, JM; Shah, AD; Yu, N; Patel, RS; Gale, CP; Hoes, AW; Cleland, JG; Asselbergs, FW; Hemingway, H, 2024.

import sys, csv, re

codes = [{"code":"8H2S.00","system":"readv2"},{"code":"R2y1000","system":"readv2"},{"code":"1O1..00","system":"readv2"},{"code":"G58z.11","system":"readv2"},{"code":"8HHz.00","system":"readv2"},{"code":"8HBE.00","system":"readv2"},{"code":"14AM.00","system":"readv2"},{"code":"1J60.00","system":"readv2"},{"code":"1736","system":"readv2"},{"code":"428.1","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('heart-failure-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["heart-failure-fatalnonfatal---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["heart-failure-fatalnonfatal---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["heart-failure-fatalnonfatal---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
