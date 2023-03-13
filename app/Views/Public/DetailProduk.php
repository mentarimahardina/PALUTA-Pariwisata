<?= $this->include('Public/Layout/Header') ?>
<div class="content">
    <div class="container p-1">
        <div class="row">
            <div class="col-md-5">
                <img src="<?= $image != '' ? base_url('Assets/produk/' . $image) : 'https://via.placeholder.com/250/b9acac/FFFFFF?text=Kosong' ?>"
                    style="width:100%;">
            </div>
            <div class="col-md-7">
                <h4 class="mb-sm"><strong>
                        <?= $title ?>
                    </strong></h4>
                <p><i class="fa fa-calendar"></i>
                    <?= $created ?> <i class="fa fa-user"></i>
                    <?= $author ?>
                </p>
                <?= $content ?>
                <a href="" class="btn btn-primary">Tanya Produk</a>
            </div>
        </div>
    </div>
</div>
<?= $this->include('Public/Layout/Footer') ?>
<script>
    $(document).ready(function () {

        $(document).on('click', '#klikdownload', function () {
            // infotoPDF
            var printContents = document.getElementById('infotoPDF').innerHTML;
            var originalContents = document.body.innerHTML;
            document.body.innerHTML = printContents;
            window.print();

            // document.body.innerHTML = originalContents;
            // document.getElementById('infotoPDF').hidden = !document.getElementById('infotoPDF').hidden;

            // var doc = new jsPDF();
            // var elementHTML = $('#infotoPDF').html();
            // var specialElementHandlers = {
            //     '#elementH': function(element, renderer) {
            //         return true;
            //     }
            // };
            // doc.setFontSize(18);
            // doc.text("<?= $setting_title ?>", 10, 8);
            // doc.setFontSize(12);
            // doc.text("<?= $setting_subtitle ?>", 10, 15);
            // doc.fromHTML(elementHTML, 15, 15, {
            //     'width': 170,

            //     'elementHandlers': specialElementHandlers
            // });
            // doc.save('InfoPenting-' + $(this).data('title') + '.pdf');
        })
    });
</script>