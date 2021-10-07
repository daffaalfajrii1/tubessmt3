<div class="container-fluid">

    <!-- Judul & Card -->
    <div class="row">
        <div class="col-12">

            <h3 class="h3 text-gray-800"><?= $judul; ?></h3>

            <div class="card shadow-sm my-3">
                <div class="card-body border-left-info rounded-sm">
                    <i class="fa fa-fw fa-info-circle fa-lg"></i> <strong> Silahkan pilih tanggal memo untuk menemukan memo masuk yang diinginkan.</strong>
                </div>
            </div>

        </div>
    </div>

    <div class="row">
        <div class="col-12">
            <form action="<?= base_url('laporan/mm') ?>" method="post">
                <div class="form-row">
                    <div class="col-3">
                        <label for="startdate">Dari Tanggal:</label>
                        <input type="date" name="startdate" class="form-control shadow-sm border-left-success" id="startdate" value="<?= set_value('startdate'); ?>" required>
                        <?= form_error('startdate', '<small class="text-danger">', '</small>'); ?>
                    </div>

                    <div class="col-3">
                        <label for="enddate">Sampai Tanggal: </label>
                        <input type="date" name="enddate" class="form-control shadow-sm border-left-success" id="enddate" value="<?= set_value('enddate'); ?>" required>
                        <?= form_error('enddate', '<small class="text-danger">', '</small>'); ?>
                    </div>

                    <div class="col-3">
                        <label for="filterby">Filter berdasarkan:</label>
                        <select name="filterby" class="form-control shadow-sm border-left-success" id="filterby" required>
                            <option value="">-- Pilih --</option>
                            <option value="created_at">Tanggal Ditambah</option>
                            <option value="tgl">Tanggal Memo</option>
                        </select>
                        <?= form_error('filterby', '<small class="text-danger">', '</small>'); ?>
                    </div>

                    <div class="col-1">
                        <button type="submit" name="btncek" class="btn btn-success shadow-sm btn-cek float-left" style="margin-top: 2rem;">Cek</button>
                    </div>

                    <div class="col-1">
                        <button type="submit" name="pdf" class="btn btn-sm btn-outline-danger shadow-sm ml-3" style="margin-top: 2rem;">PDF<i class="fa fa-file-pdf"></i></button>
                    </div>

                    <div class="col-1">
                        <button type="submit" name="excel" class="btn btn-sm btn-outline-success shadow-sm" style="margin-top: 2rem;">Excel<i class="fa fa-file-excel"></i></button>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <!-- Table -->
    <div class="row mt-3">
        <div class="col-12">
            <table class="table table-sm table-striped">
                <thead>
                    <tr>
                        <th>Pengirim</th>
                        <th>Tanggal</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php if (isset($memo_masuk)) : ?>
                        <?php if (empty($memo_masuk)) : ?>
                            <td colspan="5">
                                <h3 class="text-center">Data tidak ditemukan.</h3>
                            </td>
                        <?php else : ?>
                            <?php foreach ($memo_masuk as $num => $mm) : ?>
                                <tr>
                                    <td><?= $mm['pengirim']; ?></td>
                                    <td><?= $mm['created_at']; ?></td>
                                    <td>
                                        <a href="<?= base_url('memo-masuk/') . $mm['id']; ?>" target="_blank" class="btn btn-sm btn-success">Detail</a>
                                    </td>
                                </tr>
                            <?php endforeach; ?>
                        <?php endif; ?>
                    <?php else : ?>
                        <tr>
                            <td colspan="5">
                                <h3 class="text-center">Belum ada data.</h3>
                            </td>
                        </tr>
                    <?php endif; ?>
                </tbody>
            </table>
        </div>
    </div>

</div>
<!-- /. Container-fluid -->
</div>