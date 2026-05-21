SELECT 
    nama,
    tanggal_lahir,
    TO_CHAR(tanggal_lahir, 'MM/DD/YYYY') AS format_biasa,
    TO_CHAR(tanggal_lahir, 'DD MON YYYY') AS format_mon,
    TO_CHAR(tanggal_lahir, 'DY, DD MONTH YYYY') AS format_lengkap,
    TO_CHAR(SYSDATE, 'HH24:MI:SS') AS waktu_sekarang,
    ADD_MONTHS(tanggal_lahir, 12) AS tambah_1_tahun,
    SYSDATE AS hari_ini,
    LAST_DAY(tanggal_lahir) AS hari_terakhir_bulan_lahir,
    NEXT_DAY(tanggal_lahir, 'MONDAY') AS senin_setelah_lahir,
    ROUND(MONTHS_BETWEEN(SYSDATE, tanggal_lahir) / 12, 1) AS umur_tahun,
    ROUND(tanggal_lahir, 'MONTH') AS round_bulan,
    ROUND(tanggal_lahir, 'YEAR') AS round_tahun
FROM mahasiswa;
