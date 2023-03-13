

-- --------------------------------------------------------
--
-- Table structure for table `categories`
--
CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  `category_name` varchar(255) NOT NULL,
  `category_slug` varchar(255) DEFAULT NULL,
  `category_description` varchar(255) DEFAULT NULL,
  `category_type` enum('post', 'file', 'product') DEFAULT 'post',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  `restored_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT 0,
  `updated_by` bigint(20) DEFAULT 0,
  `deleted_by` bigint(20) DEFAULT 0,
  `restored_by` bigint(20) DEFAULT 0,
  `is_deleted` enum('true', 'false') DEFAULT 'false'
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

--
-- Dumping data for table `categories`
--
INSERT INTO
  `categories` (
    `id`,
    `category_name`,
    `category_slug`,
    `category_description`,
    `category_type`,
    `created_at`,
    `updated_at`,
    `deleted_at`,
    `restored_at`,
    `created_by`,
    `updated_by`,
    `deleted_by`,
    `restored_by`,
    `is_deleted`
  )
VALUES
  (
    1,
    'Berita',
    'berita',
    'Berita',
    'post',
    NULL,
    '2022-07-27 14:51:38',
    NULL,
    NULL,
    0,
    0,
    0,
    0,
    'false'
  ),
  (
    2,
    'Umum',
    'umum',
    'Umum',
    'file',
    NULL,
    '2022-07-27 14:51:38',
    NULL,
    NULL,
    0,
    0,
    0,
    0,
    'false'
  ),
  (
    3,
    'Bantuan',
    'bantuan',
    'Bantuan',
    'post',
    NULL,
    '2022-07-27 14:51:38',
    NULL,
    NULL,
    0,
    0,
    0,
    0,
    'false'
  ),
  (
    4,
    'Kesehatan',
    'kesehatan',
    'Kesehatan',
    'post',
    NULL,
    '2022-07-27 14:51:38',
    NULL,
    NULL,
    0,
    0,
    0,
    0,
    'false'
  ),
  (
    6,
    'Masyarakat',
    'masyarakat',
    'Masyarakat',
    'post',
    NULL,
    '2022-07-27 14:51:38',
    NULL,
    NULL,
    0,
    0,
    0,
    0,
    'false'
  ),
  (
    7,
    'Olah Raga',
    'olah-raga',
    'Olah Raga',
    'post',
    NULL,
    '2022-07-27 14:51:38',
    NULL,
    NULL,
    0,
    0,
    0,
    0,
    'false'
  ),
  (
    8,
    'Laporan',
    'laporan',
    'Laporan',
    'file',
    NULL,
    '2022-07-27 14:51:38',
    NULL,
    NULL,
    0,
    0,
    0,
    0,
    'false'
  ),
  (
    9,
    'Proposal',
    'proposal',
    'Proposal',
    'file',
    NULL,
    '2022-07-27 14:51:38',
    NULL,
    NULL,
    0,
    0,
    0,
    0,
    'false'
  ),
  (
    10,
    'Umum',
    'umum',
    'Umum',
    'product',
    NULL,
    '2022-07-27 14:51:38',
    NULL,
    NULL,
    0,
    0,
    0,
    0,
    'false'
  );

-- --------------------------------------------------------
--
-- Table structure for table `comments`
--
CREATE TABLE `comments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  `comment_post_id` bigint(20) DEFAULT 0,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) DEFAULT NULL,
  `comment_url` varchar(255) DEFAULT NULL,
  `comment_ip_address` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_subject` varchar(255) DEFAULT NULL,
  `comment_reply` text DEFAULT NULL,
  `comment_status` enum('approved', 'unapproved', 'spam') DEFAULT 'approved',
  `comment_agent` varchar(255) DEFAULT NULL,
  `comment_parent_id` varchar(255) DEFAULT NULL,
  `comment_type` enum('post', 'message') DEFAULT 'post',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  `restored_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT 0,
  `updated_by` bigint(20) DEFAULT 0,
  `deleted_by` bigint(20) DEFAULT 0,
  `restored_by` bigint(20) DEFAULT 0,
  `is_deleted` enum('true', 'false') DEFAULT 'false'
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

-- --------------------------------------------------------
--
-- Table structure for table `employees`
--
CREATE TABLE `employees` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  `assignment_letter_number` varchar(255) DEFAULT NULL,
  `assignment_letter_date` date DEFAULT NULL,
  `assignment_start_date` date DEFAULT NULL,
  `parent_school_status` enum('true', 'false') NOT NULL DEFAULT 'true',
  `full_name` varchar(150) NOT NULL,
  `gender` enum('M', 'F') NOT NULL DEFAULT 'M',
  `nik` varchar(50) DEFAULT NULL,
  `birth_place` varchar(255) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `mother_name` varchar(150) DEFAULT NULL,
  `street_address` varchar(255) DEFAULT NULL COMMENT 'Alamat Jalan',
  `rt` varchar(10) DEFAULT NULL COMMENT 'Rukun Tetangga',
  `rw` varchar(10) DEFAULT NULL COMMENT 'Rukun Warga',
  `sub_village` varchar(255) DEFAULT NULL COMMENT 'Nama Dusun',
  `village` varchar(255) DEFAULT NULL COMMENT 'Nama Kelurahan/ Desa',
  `sub_district` varchar(255) DEFAULT NULL COMMENT 'Kecamatan',
  `district` varchar(255) DEFAULT NULL COMMENT 'Kota / Kabupaten',
  `postal_code` varchar(20) DEFAULT NULL COMMENT 'Kode POS',
  `religion_id` bigint(20) DEFAULT 0,
  `marriage_status_id` bigint(20) DEFAULT 0,
  `spouse_name` varchar(255) DEFAULT NULL COMMENT 'Nama Pasangan : Suami / Istri',
  `spouse_employment_id` bigint(20) DEFAULT 0 COMMENT 'Pekerjaan Pasangan : Suami / Istri',
  `citizenship` enum('WNI', 'WNA') NOT NULL DEFAULT 'WNI' COMMENT 'Kewarganegaraan',
  `country` varchar(255) DEFAULT NULL,
  `npwp` varchar(100) DEFAULT NULL,
  `employment_status_id` bigint(20) DEFAULT 0 COMMENT 'Status Kepegawaian',
  `nip` varchar(100) DEFAULT NULL,
  `niy` varchar(100) DEFAULT NULL COMMENT 'NIY/NIGK',
  `nuptk` varchar(100) DEFAULT NULL,
  `employment_type_id` bigint(20) DEFAULT 0 COMMENT 'Jenis Guru dan Tenaga Kependidikan (GTK)',
  `decree_appointment` varchar(255) DEFAULT NULL COMMENT 'SK Pengangkatan',
  `appointment_start_date` date DEFAULT NULL COMMENT 'TMT Pengangkatan',
  `institution_lifter_id` bigint(20) DEFAULT 0 COMMENT 'Lembaga Pengangkat',
  `decree_cpns` varchar(100) DEFAULT NULL COMMENT 'SK CPNS',
  `pns_start_date` date DEFAULT NULL COMMENT 'TMT CPNS',
  `rank_id` bigint(20) DEFAULT 0 COMMENT 'Pangkat / Golongan',
  `salary_source_id` bigint(20) DEFAULT 0 COMMENT 'Sumber Gaji',
  `headmaster_license` enum('true', 'false') NOT NULL DEFAULT 'false' COMMENT 'Punya Lisensi Kepala Sekolah ?',
  `laboratory_skill_id` bigint(20) DEFAULT 0 COMMENT 'Keahlian Lab oratorium',
  `special_need_id` bigint(20) DEFAULT 0 COMMENT 'Mampu Menangani Kebutuhan Khusus',
  `braille_skills` enum('true', 'false') NOT NULL DEFAULT 'false' COMMENT 'Keahlian Braile ?',
  `sign_language_skills` enum('true', 'false') NOT NULL DEFAULT 'false' COMMENT 'Keahlian Bahasa Isyarat ?',
  `phone` varchar(255) DEFAULT NULL,
  `mobile_phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  `restored_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT 0,
  `updated_by` bigint(20) DEFAULT 0,
  `deleted_by` bigint(20) DEFAULT 0,
  `restored_by` bigint(20) DEFAULT 0,
  `is_deleted` enum('true', 'false') DEFAULT 'false'
) ENGINE = MyISAM DEFAULT CHARSET = utf8;

-- --------------------------------------------------------
--
-- Table structure for table `logs`
--
CREATE TABLE `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  `ip_address` varchar(100) NOT NULL,
  `user` varchar(500) NOT NULL,
  `uri` varchar(200) NOT NULL,
  `method` varchar(100) NOT NULL,
  `code` int(11) NOT NULL,
  `status` varchar(3000) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--
-- Dumping data for table `logs`
--
INSERT INTO
  `logs` (
    `id`,
    `ip_address`,
    `user`,
    `uri`,
    `method`,
    `code`,
    `status`,
    `timestamp`
  )
VALUES
  (
    73,
    '::1',
    'public',
    '/auth',
    'POST',
    2,
    'Login gagal, nama pengguna dan sadi tidak ditemukan',
    '2023-03-05 18:04:16'
  ),
  (
    74,
    '::1',
    'public',
    '/auth',
    'POST',
    2,
    'Login gagal, nama pengguna dan sadi tidak ditemukan',
    '2023-03-05 18:14:06'
  ),
  (
    75,
    '::1',
    'public',
    '/auth',
    'POST',
    2,
    'Login gagal, nama pengguna dan sadi tidak ditemukan',
    '2023-03-05 18:16:00'
  ),
  (
    76,
    '::1',
    'public',
    '/auth',
    'POST',
    2,
    'Login gagal, nama pengguna dan sadi tidak ditemukan',
    '2023-03-05 18:16:04'
  ),
  (
    77,
    '::1',
    'public',
    '/auth',
    'POST',
    1,
    '::1 Login Success',
    '2023-03-05 18:18:42'
  ),
  (
    78,
    '::1',
    'superadmin',
    '/createSlider',
    'POST',
    1,
    'Aplikasi berhasil disimpan',
    '2023-03-05 18:22:25'
  ),
  (
    79,
    '::1',
    'public',
    '/auth',
    'POST',
    1,
    '::1 logout',
    '2023-03-06 19:39:03'
  ),
  (
    80,
    '::1',
    'public',
    '/auth',
    'POST',
    1,
    '::1 Login Success',
    '2023-03-06 19:39:03'
  ),
  (
    81,
    '::1',
    'public',
    '/auth',
    'POST',
    1,
    '::1 Login Success',
    '2023-03-06 19:39:24'
  ),
  (
    82,
    '::1',
    'superadmin',
    '/settingprofile',
    'POST',
    1,
    'Berhasil di ubah data BUMDES',
    '2023-03-06 19:50:16'
  ),
  (
    83,
    '::1',
    'superadmin',
    '/settingprofile',
    'POST',
    1,
    'Berhasil di ubah data BUMDES',
    '2023-03-06 19:51:27'
  ),
  (
    84,
    '::1',
    'superadmin',
    '/pesan',
    'GET',
    0,
    'mysqli_sql_exception: Table \'website.questionsgroupip\' doesn\'t exist in D:\\Project\\website\\BUMDESS\\system\\Database\\MySQLi\\Connection.php:292\nStack trace:\n#0 D:\\Project\\website\\BUMDESS\\system\\Database\\MySQLi\\Connection.php(292): mysqli->query(\'SELECT *\\nFROM `...\', 0)\n#1 D:\\Project\\website\\BUMDESS\\system\\Database\\BaseConnection.php(695): CodeIgniter\\Database\\MySQLi\\Connection->execute(\'SELECT *\\nFROM `...\')\n#2 D:\\Project\\website\\BUMDESS\\system\\Database\\BaseConnection.php(609): CodeIgniter\\Database\\BaseConnection->simpleQuery(\'SELECT *\\nFROM `...\')\n#3 D:\\Project\\website\\BUMDESS\\system\\Database\\BaseBuilder.php(1585): CodeIgniter\\Database\\BaseConnection->query(\'SELECT *\\nFROM `...\', Array, false)\n#4 D:\\Project\\website\\BUMDESS\\system\\Model.php(222): CodeIgniter\\Database\\BaseBuilder->get()\n#5 D:\\Project\\website\\BUMDESS\\system\\BaseModel.php(584): CodeIgniter\\Model->doFindAll(0, 0)\n#6 D:\\Project\\website\\BUMDESS\\app\\Controllers\\Page.php(367): CodeIgniter\\BaseModel->findAll()\n#7 D:\\Project\\website\\BUMDESS\\system\\CodeIgniter.php(896): App\\Controllers\\Page->pesan()\n#8 D:\\Project\\website\\BUMDESS\\system\\CodeIgniter.php(466): CodeIgniter\\CodeIgniter->runController(Object(App\\Controllers\\Page))\n#9 D:\\Project\\website\\BUMDESS\\system\\CodeIgniter.php(349): CodeIgniter\\CodeIgniter->handleRequest(NULL, Object(Config\\Cache), false)\n#10 D:\\Project\\website\\BUMDESS\\public\\index.php(55): CodeIgniter\\CodeIgniter->run()\n#11 D:\\Project\\website\\BUMDESS\\system\\Commands\\Server\\rewrite.php(43): require_once(\'D:\\\\Project\\\\webs...\')\n#12 {main}',
    '2023-03-06 20:01:51'
  ),
  (
    85,
    '::1',
    'superadmin',
    '/pesan',
    'GET',
    0,
    'mysqli_sql_exception: Table \'website.questionsgroupip\' doesn\'t exist in D:\\Project\\website\\BUMDESS\\system\\Database\\MySQLi\\Connection.php:292\nStack trace:\n#0 D:\\Project\\website\\BUMDESS\\system\\Database\\MySQLi\\Connection.php(292): mysqli->query(\'SELECT *\\nFROM `...\', 0)\n#1 D:\\Project\\website\\BUMDESS\\system\\Database\\BaseConnection.php(695): CodeIgniter\\Database\\MySQLi\\Connection->execute(\'SELECT *\\nFROM `...\')\n#2 D:\\Project\\website\\BUMDESS\\system\\Database\\BaseConnection.php(609): CodeIgniter\\Database\\BaseConnection->simpleQuery(\'SELECT *\\nFROM `...\')\n#3 D:\\Project\\website\\BUMDESS\\system\\Database\\BaseBuilder.php(1585): CodeIgniter\\Database\\BaseConnection->query(\'SELECT *\\nFROM `...\', Array, false)\n#4 D:\\Project\\website\\BUMDESS\\system\\Model.php(222): CodeIgniter\\Database\\BaseBuilder->get()\n#5 D:\\Project\\website\\BUMDESS\\system\\BaseModel.php(584): CodeIgniter\\Model->doFindAll(0, 0)\n#6 D:\\Project\\website\\BUMDESS\\app\\Controllers\\Page.php(367): CodeIgniter\\BaseModel->findAll()\n#7 D:\\Project\\website\\BUMDESS\\system\\CodeIgniter.php(896): App\\Controllers\\Page->pesan()\n#8 D:\\Project\\website\\BUMDESS\\system\\CodeIgniter.php(466): CodeIgniter\\CodeIgniter->runController(Object(App\\Controllers\\Page))\n#9 D:\\Project\\website\\BUMDESS\\system\\CodeIgniter.php(349): CodeIgniter\\CodeIgniter->handleRequest(NULL, Object(Config\\Cache), false)\n#10 D:\\Project\\website\\BUMDESS\\public\\index.php(55): CodeIgniter\\CodeIgniter->run()\n#11 D:\\Project\\website\\BUMDESS\\system\\Commands\\Server\\rewrite.php(43): require_once(\'D:\\\\Project\\\\webs...\')\n#12 {main}',
    '2023-03-06 20:03:27'
  ),
  (
    86,
    '::1',
    'public',
    '/auth',
    'POST',
    1,
    '::1 logout',
    '2023-03-07 05:16:09'
  ),
  (
    87,
    '::1',
    'public',
    '/auth',
    'POST',
    1,
    '::1 Login Success',
    '2023-03-07 05:16:09'
  ),
  (
    88,
    '::1',
    'public',
    '/auth',
    'POST',
    1,
    '::1 logout',
    '2023-03-07 05:16:09'
  ),
  (
    89,
    '::1',
    'public',
    '/auth',
    'POST',
    1,
    '::1 Login Success',
    '2023-03-07 05:16:10'
  ),
  (
    90,
    '::1',
    'public',
    '/auth',
    'POST',
    1,
    '::1 Login Success',
    '2023-03-07 05:17:46'
  ),
  (
    91,
    '::1',
    'public',
    '/auth',
    'POST',
    1,
    '::1 Login Success',
    '2023-03-07 15:57:35'
  ),
  (
    92,
    '::1',
    'superadmin',
    '/createEvents',
    'POST',
    1,
    'Berita berhasil disimpan',
    '2023-03-07 16:29:40'
  ),
  (
    93,
    '::1',
    'superadmin',
    '/createNews',
    'POST',
    1,
    'Berita berhasil disimpan',
    '2023-03-07 17:26:32'
  );

-- --------------------------------------------------------
--
-- Table structure for table `menus`
--
CREATE TABLE `menus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  `menu_title` varchar(150) NOT NULL,
  `menu_url` varchar(150) NOT NULL,
  `menu_target` enum('_blank', '_self', '_parent', '_top') DEFAULT '_self',
  `menu_type` varchar(100) NOT NULL DEFAULT 'pages',
  `menu_parent_id` bigint(20) DEFAULT 0,
  `menu_position` bigint(20) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  `restored_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT 0,
  `updated_by` bigint(20) DEFAULT 0,
  `deleted_by` bigint(20) DEFAULT 0,
  `restored_by` bigint(20) DEFAULT 0,
  `is_deleted` enum('true', 'false') DEFAULT 'false'
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

--
-- Dumping data for table `menus`
--
INSERT INTO
  `menus` (
    `id`,
    `menu_title`,
    `menu_url`,
    `menu_target`,
    `menu_type`,
    `menu_parent_id`,
    `menu_position`,
    `created_at`,
    `updated_at`,
    `deleted_at`,
    `restored_at`,
    `created_by`,
    `updated_by`,
    `deleted_by`,
    `restored_by`,
    `is_deleted`
  )
VALUES
  (
    1,
    'Beranda',
    '/',
    '_self',
    'pages',
    0,
    1,
    NULL,
    '2023-03-04 08:14:25',
    NULL,
    NULL,
    0,
    0,
    0,
    0,
    'false'
  ),
  (
    2,
    'Profil',
    'profil',
    '_self',
    'pages',
    0,
    2,
    NULL,
    '2023-02-16 23:04:33',
    NULL,
    NULL,
    0,
    0,
    0,
    0,
    'false'
  ),
  (
    3,
    'PPID',
    'http://ppid.padanglawasutarakab.go.id/front/dokumen?area=pemda&category=1',
    '_blank',
    'link',
    0,
    3,
    NULL,
    '2022-07-27 14:51:38',
    NULL,
    NULL,
    0,
    0,
    0,
    0,
    'false'
  ),
  (
    4,
    'JDIH',
    'http://jdih.padanglawasutarakab.go.id/',
    '_blank',
    'pages',
    0,
    4,
    NULL,
    '2023-03-07 17:50:42',
    NULL,
    NULL,
    0,
    0,
    0,
    0,
    'false'
  ),
  (
    5,
    'Wisata',
    'wisata',
    '_self',
    'pages',
    0,
    5,
    NULL,
    '2023-03-07 17:50:33',
    NULL,
    NULL,
    0,
    0,
    0,
    0,
    'false'
  ),
  (
    6,
    'Event',
    'event',
    '_self',
    'pages',
    0,
    6,
    NULL,
    '2023-03-07 17:51:12',
    NULL,
    NULL,
    0,
    0,
    0,
    0,
    'false'
  ),
  (
    7,
    'Berita',
    'berita',
    '_self',
    'pages',
    0,
    7,
    NULL,
    '2023-03-07 17:51:00',
    NULL,
    NULL,
    0,
    0,
    0,
    0,
    'false'
  ),
  (
    8,
    'Galeri',
    'galeri',
    '_self',
    'pages',
    0,
    8,
    NULL,
    '2022-07-27 14:51:38',
    NULL,
    NULL,
    0,
    0,
    0,
    0,
    'false'
  ),
  (
    9,
    'Wisata Kuliner',
    'kuliner',
    '_self',
    'pages',
    5,
    0,
    NULL,
    '2023-03-09 19:49:39',
    NULL,
    NULL,
    0,
    0,
    0,
    0,
    'false'
  ),
  (
    10,
    'Wisata Tempat',
    'tempat',
    '_self',
    'pages',
    5,
    1,
    NULL,
    '2023-03-07 17:50:33',
    NULL,
    NULL,
    0,
    0,
    0,
    0,
    'false'
  );

-- --------------------------------------------------------
--
-- Table structure for table `modules`
--
CREATE TABLE `modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  `module_name` varchar(255) NOT NULL,
  `module_img` varchar(255) DEFAULT NULL,
  `module_url` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  `restored_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT 0,
  `updated_by` bigint(20) DEFAULT 0,
  `deleted_by` bigint(20) DEFAULT 0,
  `restored_by` bigint(20) DEFAULT 0,
  `is_deleted` enum('true', 'false') DEFAULT 'false'
) ENGINE = MyISAM DEFAULT CHARSET = utf8;

-- --------------------------------------------------------
--
-- Table structure for table `organization`
--
CREATE TABLE `organization` (
  `id_org` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY (`id_org`),
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `root` int(11) NOT NULL,
  `person` int(11) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

-- --------------------------------------------------------
--
-- Table structure for table `posts`
--
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  `post_title` varchar(255) DEFAULT NULL,
  `post_content` longtext DEFAULT NULL,
  `post_image` varchar(100) DEFAULT NULL,
  `post_author` bigint(20) DEFAULT 0,
  `post_categories` varchar(255) DEFAULT NULL,
  `post_type` varchar(50) NOT NULL DEFAULT 'post',
  `post_status` enum('publish', 'draft') DEFAULT 'draft',
  `post_visibility` enum('public', 'private') DEFAULT 'public',
  `post_comment_status` enum('open', 'close') DEFAULT 'close',
  `post_slug` varchar(255) DEFAULT NULL,
  `post_tags` varchar(255) DEFAULT NULL,
  `post_counter` bigint(20) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  `restored_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT 0,
  `updated_by` bigint(20) DEFAULT 0,
  `deleted_by` bigint(20) DEFAULT 0,
  `restored_by` bigint(20) DEFAULT 0,
  `is_deleted` enum('true', 'false') DEFAULT 'false'
) ENGINE = MyISAM DEFAULT CHARSET = utf8;

--
-- Dumping data for table `posts`
--
INSERT INTO
  `posts` (
    `id`,
    `post_title`,
    `post_content`,
    `post_image`,
    `post_author`,
    `post_categories`,
    `post_type`,
    `post_status`,
    `post_visibility`,
    `post_comment_status`,
    `post_slug`,
    `post_tags`,
    `post_counter`,
    `created_at`,
    `updated_at`,
    `deleted_at`,
    `restored_at`,
    `created_by`,
    `updated_by`,
    `deleted_by`,
    `restored_by`,
    `is_deleted`
  )
VALUES
  (
    0,
    'pariwisata padang lawas utara',
    ' ',
    'b4d4833968b61bd4ec4cd19052f15f18.jpeg',
    1,
    NULL,
    'slider',
    'draft',
    'public',
    'close',
    NULL,
    NULL,
    0,
    '2023-03-05 12:22:25',
    '2023-03-05 18:22:25',
    NULL,
    NULL,
    1,
    0,
    0,
    0,
    'false'
  ),
  (
    0,
    'event baru',
    '',
    'b01a8f42b0251f9690a101f8f46891da.jpeg',
    1,
    'masyarakat, kesehatan, bantuan',
    'event',
    'publish',
    'public',
    'open',
    'event-baru',
    'sekilas-info, pengumuman',
    0,
    '2023-03-07 10:29:40',
    '2023-03-07 16:29:40',
    NULL,
    NULL,
    1,
    0,
    0,
    0,
    'false'
  ),
  (
    0,
    'beritaaa',
    '',
    '547b069cca111c18db8cbc11837146d4.jpeg',
    1,
    'kesehatan',
    'post',
    'publish',
    'public',
    'open',
    'beritaaa',
    'sekilas-info',
    0,
    '2023-03-07 11:26:32',
    '2023-03-07 17:26:32',
    NULL,
    NULL,
    1,
    0,
    0,
    0,
    'false'
  );

-- --------------------------------------------------------
--
-- Table structure for table `produk`
--
CREATE TABLE `produk` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  `name` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` varchar(100) NOT NULL,
  `price_sales` varchar(100) NOT NULL,
  `rating` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(100) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

-- --------------------------------------------------------
--
-- Table structure for table `questions`
--
CREATE TABLE `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  `type` varchar(100) NOT NULL,
  `nik` varchar(100) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `read` int(11) NOT NULL DEFAULT 1,
  `accept` int(11) NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `restored_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT 0,
  `updated_by` bigint(20) DEFAULT 0,
  `deleted_by` bigint(20) DEFAULT 0,
  `restored_by` bigint(20) DEFAULT 0,
  `is_deleted` enum('true', 'false') DEFAULT 'false'
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

-- --------------------------------------------------------
--
-- Table structure for table `quotes`
--
CREATE TABLE `quotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  `quote` varchar(255) DEFAULT NULL,
  `quote_by` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  `restored_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT 0,
  `updated_by` bigint(20) DEFAULT 0,
  `deleted_by` bigint(20) DEFAULT 0,
  `restored_by` bigint(20) DEFAULT 0,
  `is_deleted` enum('true', 'false') DEFAULT 'false'
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

-- --------------------------------------------------------
--
-- Table structure for table `settings`
--
CREATE TABLE `settings` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  `setting_group` varchar(100) NOT NULL,
  `setting_variable` varchar(255) DEFAULT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_default_value` text DEFAULT NULL,
  `setting_access_group` varchar(255) DEFAULT NULL,
  `setting_description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  `restored_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT 0,
  `updated_by` bigint(20) DEFAULT 0,
  `deleted_by` bigint(20) DEFAULT 0,
  `restored_by` bigint(20) DEFAULT 0,
  `is_deleted` enum('true', 'false') DEFAULT 'false'
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

--
-- Dumping data for table `settings`
--
INSERT INTO
  `settings` (
    `id`,
    `setting_group`,
    `setting_variable`,
    `setting_value`,
    `setting_default_value`,
    `setting_access_group`,
    `setting_description`,
    `created_at`,
    `updated_at`,
    `deleted_at`,
    `restored_at`,
    `created_by`,
    `updated_by`,
    `deleted_by`,
    `restored_by`,
    `is_deleted`
  )
VALUES
  (
    1,
    'general',
    'title',
    'Dinas Pariwisata',
    NULL,
    NULL,
    NULL,
    NULL,
    '2023-03-06 19:50:15',
    NULL,
    NULL,
    0,
    0,
    0,
    0,
    'false'
  ),
  (
    2,
    'general',
    'sub_title',
    'Kabupaten Padang Lawas Utara',
    NULL,
    NULL,
    NULL,
    NULL,
    '2023-03-06 19:51:27',
    NULL,
    NULL,
    0,
    0,
    0,
    0,
    'false'
  ),
  (
    3,
    'general',
    'logo',
    'logo.png',
    NULL,
    NULL,
    NULL,
    NULL,
    '2023-03-02 06:43:59',
    NULL,
    NULL,
    0,
    0,
    0,
    0,
    'false'
  ),
  (
    4,
    'general',
    'sub_logo',
    'sublogo.png',
    NULL,
    NULL,
    NULL,
    NULL,
    '2023-03-02 06:44:18',
    NULL,
    NULL,
    0,
    0,
    0,
    0,
    'false'
  ),
  (
    5,
    'kontak',
    'address',
    'Jl. Kota Pinang - Gunung Tua No.78, Simbolon, Kec. Padang Bolak, Kabupaten Padang Lawas Utara, Sumatera Utara 22753',
    NULL,
    NULL,
    NULL,
    NULL,
    '2023-03-06 19:50:15',
    NULL,
    NULL,
    0,
    0,
    0,
    0,
    'false'
  ),
  (
    6,
    'kontak',
    'linkMap',
    'https://maps.app.goo.gl/fwkqCNEPrFDCA3GD8',
    NULL,
    NULL,
    NULL,
    NULL,
    '2023-03-06 19:50:15',
    NULL,
    NULL,
    0,
    0,
    0,
    0,
    'false'
  ),
  (
    7,
    'kontak',
    'lattitude',
    '-',
    NULL,
    NULL,
    NULL,
    NULL,
    '2022-07-27 19:53:06',
    NULL,
    NULL,
    0,
    0,
    0,
    0,
    'false'
  ),
  (
    8,
    'kontak',
    'telp',
    '-',
    NULL,
    NULL,
    NULL,
    NULL,
    '2023-03-06 19:50:15',
    NULL,
    NULL,
    0,
    0,
    0,
    0,
    'false'
  ),
  (
    9,
    'kontak',
    'email',
    'disbudparpaluta@gmail.com',
    NULL,
    NULL,
    NULL,
    NULL,
    '2023-03-06 19:50:15',
    NULL,
    NULL,
    0,
    0,
    0,
    0,
    'false'
  ),
  (
    10,
    'sosialmedia',
    'instagram',
    'disbudparpaluta',
    NULL,
    NULL,
    NULL,
    NULL,
    '2023-03-06 19:50:15',
    NULL,
    NULL,
    0,
    0,
    0,
    0,
    'false'
  ),
  (
    11,
    'sosialmedia',
    'twitter',
    '@disbudparpaluta5804',
    NULL,
    NULL,
    NULL,
    NULL,
    '2023-03-06 19:50:16',
    NULL,
    NULL,
    0,
    0,
    0,
    0,
    'false'
  ),
  (
    12,
    'sosialmedia',
    'facebook',
    'disbudparpaluta',
    NULL,
    NULL,
    NULL,
    NULL,
    '2023-03-06 19:50:16',
    NULL,
    NULL,
    0,
    0,
    0,
    0,
    'false'
  ),
  (
    13,
    'profil',
    'nama_instansi',
    'Dinas Pariwisata',
    NULL,
    NULL,
    NULL,
    NULL,
    '2023-03-06 19:50:16',
    NULL,
    NULL,
    0,
    0,
    0,
    0,
    'false'
  ),
  (
    14,
    'profil',
    'tentang_instansi',
    'Dinas Pariwisata Kabupaten Padang Lawas Utara ',
    NULL,
    NULL,
    NULL,
    NULL,
    '2023-03-06 19:51:27',
    NULL,
    NULL,
    0,
    0,
    0,
    0,
    'false'
  ),
  (
    15,
    'profil',
    'pimpinan_name',
    'AMAN SIREGAR, S.Sos',
    NULL,
    NULL,
    NULL,
    NULL,
    '2023-03-03 13:58:30',
    NULL,
    NULL,
    0,
    0,
    0,
    0,
    'false'
  ),
  (
    16,
    'profil',
    'pimpinan_nip',
    '-',
    NULL,
    NULL,
    NULL,
    NULL,
    '2023-03-02 02:16:17',
    NULL,
    NULL,
    0,
    0,
    0,
    0,
    'false'
  ),
  (
    17,
    'profil',
    'pimpinan_jabatan',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '2022-11-08 12:18:17',
    NULL,
    NULL,
    0,
    0,
    0,
    0,
    'false'
  ),
  (
    18,
    'profil',
    'pimpinan_foto',
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    '2023-03-02 19:57:32',
    NULL,
    NULL,
    0,
    0,
    0,
    0,
    'false'
  ),
  (
    19,
    'profil',
    'kantor_foto',
    'Assets/settings/file1.pdf',
    NULL,
    NULL,
    NULL,
    NULL,
    '2023-03-02 19:39:38',
    NULL,
    NULL,
    0,
    0,
    0,
    0,
    'false'
  ),
  (
    20,
    'profil',
    'tugas_pokok',
    ' ',
    NULL,
    NULL,
    NULL,
    NULL,
    '2023-03-02 03:12:16',
    NULL,
    NULL,
    0,
    0,
    0,
    0,
    'false'
  ),
  (
    21,
    'profil',
    'tugas_fungsi',
    '	',
    NULL,
    NULL,
    NULL,
    NULL,
    '2023-03-02 01:52:57',
    NULL,
    NULL,
    0,
    0,
    0,
    0,
    'false'
  ),
  (
    22,
    'profil-chart',
    'nodewidth',
    '80',
    NULL,
    NULL,
    NULL,
    NULL,
    '2022-11-03 06:21:39',
    NULL,
    NULL,
    0,
    0,
    0,
    0,
    'false'
  ),
  (
    23,
    'profil-chart',
    'chartwidth',
    '1500',
    NULL,
    NULL,
    NULL,
    NULL,
    '2022-11-03 07:13:14',
    NULL,
    NULL,
    0,
    0,
    0,
    0,
    'false'
  ),
  (
    24,
    'profil-chart',
    'chartheight',
    '1500',
    NULL,
    NULL,
    NULL,
    NULL,
    '2022-11-09 02:45:53',
    NULL,
    NULL,
    0,
    0,
    0,
    0,
    'false'
  ),
  (
    25,
    'general',
    'type',
    'dinas',
    '',
    NULL,
    NULL,
    '2022-11-09 02:26:35',
    '2022-11-09 01:51:08',
    '2022-11-09 02:26:35',
    '2022-11-09 02:26:35',
    0,
    0,
    0,
    0,
    'false'
  );

-- --------------------------------------------------------
--
-- Table structure for table `tags`
--
CREATE TABLE `tags` (
  `id` int(11) NOT NULL  AUTO_INCREMENT PRIMARY KEY (`id`),
  `tag` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  `restored_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT 0,
  `updated_by` bigint(20) DEFAULT 0,
  `deleted_by` bigint(20) DEFAULT 0,
  `restored_by` bigint(20) DEFAULT 0,
  `is_deleted` enum('true', 'false') DEFAULT 'false'
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

--
-- Dumping data for table `tags`
--
INSERT INTO
  `tags` (
    `id`,
    `tag`,
    `slug`,
    `created_at`,
    `updated_at`,
    `deleted_at`,
    `restored_at`,
    `created_by`,
    `updated_by`,
    `deleted_by`,
    `restored_by`,
    `is_deleted`
  )
VALUES
  (
    1,
    'Berita',
    'berita',
    NULL,
    '2022-07-27 15:18:07',
    NULL,
    NULL,
    0,
    0,
    0,
    0,
    'false'
  ),
  (
    2,
    'Pengumuman',
    'pengumuman',
    NULL,
    '2022-07-27 15:18:07',
    NULL,
    NULL,
    0,
    0,
    0,
    0,
    'false'
  ),
  (
    3,
    'Sekilas Info',
    'sekilas-info',
    NULL,
    '2022-07-27 15:18:07',
    NULL,
    NULL,
    0,
    0,
    0,
    0,
    'false'
  );

-- --------------------------------------------------------
--
-- Table structure for table `users`
--
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  `user_name` varchar(60) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_full_name` varchar(100) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_url` varchar(100) DEFAULT NULL,
  `user_group_id` bigint(20) DEFAULT 0,
  `user_type` enum(
    'super_user',
    'administrator',
    'employee',
    'student'
  ) NOT NULL DEFAULT 'administrator',
  `user_profile_id` bigint(20) DEFAULT NULL COMMENT 'student_id OR employee_id',
  `user_biography` text DEFAULT NULL,
  `user_forgot_password_key` varchar(100) DEFAULT NULL,
  `user_forgot_password_request_date` date DEFAULT NULL,
  `has_login` enum('true', 'false') DEFAULT 'false',
  `last_logged_in` datetime DEFAULT NULL,
  `last_logged_out` datetime DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  `restored_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT 0,
  `updated_by` bigint(20) DEFAULT 0,
  `deleted_by` bigint(20) DEFAULT 0,
  `restored_by` bigint(20) DEFAULT 0,
  `is_deleted` enum('true', 'false') DEFAULT 'false'
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

--
-- Dumping data for table `users`
--
INSERT INTO
  `users` (
    `id`,
    `user_name`,
    `user_password`,
    `user_full_name`,
    `user_email`,
    `user_url`,
    `user_group_id`,
    `user_type`,
    `user_profile_id`,
    `user_biography`,
    `user_forgot_password_key`,
    `user_forgot_password_request_date`,
    `has_login`,
    `last_logged_in`,
    `last_logged_out`,
    `ip_address`,
    `created_at`,
    `updated_at`,
    `deleted_at`,
    `restored_at`,
    `created_by`,
    `updated_by`,
    `deleted_by`,
    `restored_by`,
    `is_deleted`
  )
VALUES
  (
    1,
    'superadmin',
    '21232f297a57a5a743894a0e4a801fc3',
    'superadmin',
    'superadmin@padanglawasutara.go.id',
    NULL,
    0,
    'super_user',
    NULL,
    NULL,
    NULL,
    NULL,
    'true',
    '2023-03-07 09:57:35',
    '2023-03-07 09:57:29',
    '::1',
    NULL,
    '2023-03-07 15:57:35',
    NULL,
    NULL,
    0,
    1,
    0,
    0,
    'false'
  );

-- --------------------------------------------------------
--
-- Table structure for table `user_privileges`
--
CREATE TABLE `user_privileges` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  `user_group_id` bigint(20) DEFAULT 0,
  `module_id` bigint(20) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  `restored_at` datetime DEFAULT NULL,
  `created_by` bigint(20) DEFAULT 0,
  `updated_by` bigint(20) DEFAULT 0,
  `deleted_by` bigint(20) DEFAULT 0,
  `restored_by` bigint(20) DEFAULT 0,
  `is_deleted` enum('true', 'false') DEFAULT 'false'
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

-- --------------------------------------------------------
--
-- Table structure for table `_sessions`
--
CREATE TABLE `_sessions` (
  `id` varchar(128) NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

-- --------------------------------------------------------
--
-- Structure for view `organisasidetail`
--
CREATE VIEW `organisasidetail` AS
SELECT
  `organization`.`id_org` AS `id_org`,
  `employees`.`id` AS `id_employee`,
  `organization`.`description` AS `jabatan`,
  `employees`.`full_name` AS `full_name`,
  `employees`.`photo` AS `photo`,
  (
    select
      `users`.`user_name`
    from
      `users`
    where
      `employees`.`created_by` = `users`.`id`
  ) AS `createBy`
FROM
  (
    `organization`
    join `employees` on(`organization`.`person` = `employees`.`id`)
  );

-- --------------------------------------------------------
--
-- Structure for view `questionsgroupip`
--
CREATE VIEW `questionsgroupip` AS
SELECT
  `questions`.`ip_address` AS `ip`,
  `questions`.`created_at` AS `created_at`,
  (
    select
      count(0)
    from
      `questions`
    where
      `questions`.`ip_address` = `ip`
      and `questions`.`read` = 1
  ) AS `read`,
  `questions`.`accept` AS `accept`
FROM
  `questions`
WHERE
  `questions`.`id` in (
    select
      max(`questions`.`id`)
    from
      `questions`
    group by
      `questions`.`ip_address`
  );

--
-- Indexes for dumped tables
--
--