<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>test</title>
    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td,
        th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }
    </style>


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script>
        $(document).ready(function() {
            $("#insert").click(function() { //button id=insert di tambahkan click
                $("div").text($("#nama").val())
                $.post("http://localhost/webNeon/index.php?Apii/insertR/", { // ini kalau mau ambil inputan dari form trus pake method post, liat apii controller dptin datanya
                        judul: $("#nama").val() //ini tambhanin data form apa aja mau dimasukin "judul" sbgai name utk formnya 
                        
                    },
                    function(data, status) {
                        alert("Data: " + data + "\nStatus: " + status); //data meretturn kembalian dari controller apii/insertR
                    });
            });


            $("#select").change(function() { //ini id select
                $("div").text($("#select").val()) //mengubah isi tag div dengan isi data id select
                $.get(
                    "http://localhost/webNeon/index.php?Apii/getR/" + $("#select").val(), //ini kalau mau passing parameter di ci 
                    function(data, status) {
                        alert("ratingnya : "+data); //ini dapetin rating dari banyak judul video option
                    }

                );
            });

            $("#getVideo").click(function(){ //button dengan id getVideo ketika diklik ngeget data dari controller api/getVid utk ditampilin
                $.get("http://localhost/webNeon/index.php?Apii/getVid", function(data,status){
                    $("div").html(data); //ada banyak jenis kalau .html dia bisa nampilin semua tag html di terjemahkan, kalau text html gak diterjemahkan
                    //coba cek apii/getVid disitu di echo htmlnya
                });
            });



        });
    </script>
</head>

<body>
    <select id="select">
        <option>Pilih video</option>
        <?php
        foreach ($r as $rr) {
            echo "<option value='$rr->id_video'>$rr->judul</option>";
        }
        ?>
    </select>
    <input type="text" id="nama">
    <button id="insert">masukin -> ini lempar isi form input ke database</button>
    <button id="getVideo">getVideo dari db</button>

    
    <div></div>
</body>


</html>