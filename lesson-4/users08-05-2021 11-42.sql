#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL COMMENT 'Фамилия',
  `email` varchar(120) DEFAULT NULL,
  `password_hash` varchar(100) DEFAULT NULL,
  `phone` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`),
  KEY `users_firstname_lastname_idx` (`firstname`,`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=399 DEFAULT CHARSET=utf8 COMMENT='юзеры';

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('299', 'Winston', 'Thiel', 'cwatsica@example.com', '8e22c980b09782770e6625935e655c7ef5b5e57b', '405057791');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('300', 'Charity', 'Fay', 'juvenal52@example.org', '104731c2333b6774b780799c7da581337049fa32', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('301', 'Ova', 'Keeling', 'dickinson.randal@example.net', 'a66b2f42edaacfa333d3a4a60688f0cb6b4cb24b', '113');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('302', 'Pink', 'Sauer', 'ransom20@example.net', 'a9b39f8c3030a20285057daa2f3adbd051fa805b', '135405');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('303', 'Ezequiel', 'Friesen', 'bcrona@example.com', '6c71c0f1b5f73553e32023111a75e4dc091b7b67', '34');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('304', 'Precious', 'Hauck', 'antonio61@example.net', '4c9868d409a60f55c7d03744db10d3a5e60623e0', '949624');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('305', 'Jewell', 'West', 'kari46@example.org', '47314d9dc878d7994d393e4c5dec810b2a3835b5', '449');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('306', 'Korey', 'Hahn', 'greenholt.eric@example.org', '08e631c5e1549739f65859977b2029b973793f11', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('307', 'Sebastian', 'Kirlin', 'heaney.aiden@example.net', '222666acae6004e22313ccb63ff0b737262b207b', '746');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('309', 'Duane', 'Rutherford', 'irwin04@example.net', '387d05c7014a3653f5fae3d7caff57f23b77e316', '105224');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('310', 'Arianna', 'Metz', 'carolanne.dickens@example.net', 'f64f258b0dda23b8e6366d8c5a28209956e9ca2a', '91');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('312', 'Rory', 'O\'Reilly', 'icollins@example.com', 'f7e625ce7438c193e0fd99d2eb72fe15c744a96d', '48');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('316', 'Giuseppe', 'Streich', 'watsica.alena@example.org', '4c4d28b648b9ac399608efa3a9fdb3e15e4634f1', '173');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('321', 'Lucy', 'Collier', 'murray.napoleon@example.com', 'fd398481d93c676733ab1283dda55e4d47d6e9fa', '936614');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('322', 'Daniela', 'Barton', 'cmueller@example.com', 'd3a57eef852111e4244a3012b5961f0194bb027e', '59');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('326', 'Shea', 'Auer', 'telly80@example.net', '7add68f2dfd9dc390f3d7790f6f6f1aa135cf399', '81165');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('328', 'Modesta', 'Jacobson', 'boyer.lonnie@example.com', '76200866a77a905da7d0471289dead9068daecf4', '871236221');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('332', 'Maida', 'Rutherford', 'janick.beahan@example.org', '90cbfe730e189fee1d40ed65cba22c4ff09b727d', '357');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('333', 'Hanna', 'Cummerata', 'cecelia41@example.com', 'be7f54758b9f32e3e4cc8f7c58e6bc0b514b95a4', '954055');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('334', 'Landen', 'Turner', 'ruthie74@example.org', '3e546ebb85e117d775c5f70646582c50c9bccadf', '725');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('335', 'Lukas', 'Kuhic', 'johnathon08@example.net', 'a5fe60bbdc53fe0295a5cd29969e4b917b26f305', '16');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('337', 'Yoshiko', 'Heaney', 'brook96@example.net', '3fce584f61f3597f52bd115b26e351bb6a59e432', '613');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('338', 'Carson', 'Jones', 'rohan.kiara@example.net', '298b0dc96e215cee911fdea5c722d8933fdf2aff', '321');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('342', 'Federico', 'Greenholt', 'bernhard.brennon@example.org', 'b2fc35ef2045d7a4b3dd40fbc4b1f59147110cb1', '799072');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('343', 'Dannie', 'Keebler', 'swaniawski.roslyn@example.com', 'd6931a4bfc24ed9c574db00e5eb4b43eb44f2b59', '777');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('344', 'Wilson', 'Herman', 'gennaro.bartell@example.net', '660594e8ee78af8e796bbe5d60648b44453f6abc', '8553517031');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('345', 'Consuelo', 'Reynolds', 'maude.crist@example.net', 'd864d12efe1bab4cbb99cd2226954bdde9e18bf6', '689191');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('346', 'Miles', 'Feil', 'keven.pouros@example.org', 'c9b81e37cac973b9af761245710cbbbf95fd6842', '611961');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('349', 'Sharon', 'Kutch', 'mohammed58@example.net', '52bcdb1a85da99f58137157ee095e3683bc0c667', '137');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('350', 'Savanah', 'West', 'megane73@example.com', '1dc5cf3782def7a48cdadf8bd0027bb3d4cccded', '898');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('352', 'Reinhold', 'Feest', 'mable.kuhic@example.org', 'b9c2c56d5431a6de6619a79a8c45d9a32b554066', '681');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('355', 'Maci', 'Oberbrunner', 'goyette.tyrell@example.com', '40cf5e3383955201f14ebaf44b10a234376f7032', '907931');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('356', 'Leda', 'Ledner', 'zackery.jacobi@example.net', 'a5ac7a842f999d88855d440bd77fe8731602616c', '2075535115');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('357', 'Oran', 'White', 'horace34@example.org', 'b0fc5b6c25029bac16c85cd5f37d9416277bb7ee', '388449');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('358', 'Freeman', 'Purdy', 'xrippin@example.org', '2e74b3d64eaa3593611a9afba6af23b5fb1c52f2', '31');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('360', 'Guillermo', 'Mosciski', 'eryn88@example.com', '63506f273b96f9e7d9f565a31649421f9117764a', '8014145721');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('361', 'Jerod', 'Mueller', 'michaela95@example.org', '550f0dc5091058cdfbf5c5f73b1b0212a4ff0b7c', '676');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('362', 'Esperanza', 'Hansen', 'daugherty.forrest@example.net', '3fa566cd53d09db0e86cb7bfb71fcf56bc3f7b80', '66');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('364', 'Quinten', 'Green', 'agustin65@example.net', '794116e82dc6b974b45bdfd461dfe616796b9228', '11564');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('365', 'Hillary', 'Kirlin', 'xbarrows@example.net', 'ad6f6a522bef3ab83c278e1eb6829f3f888f42e6', '566');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('366', 'Graciela', 'Fadel', 'leo.goyette@example.org', '341a371fdb0fc024e76be25beb6e88eb14a84823', '9110104191');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('368', 'Matilda', 'Tromp', 'delpha22@example.org', '2d7054b5a1dc6e48053e7c8def742907afd371cb', '122');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('369', 'Audra', 'Sporer', 'wilson.gaylord@example.net', '082e79c13a352cfa6daad30721132dd75e27c3b2', '864');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('371', 'Ana', 'Murazik', 'kshlerin.annetta@example.net', '3a07cd87436f0bafd7bd781b20ce3d2ff096ef53', '639478');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('372', 'Simone', 'Baumbach', 'lesch.victor@example.com', '94edee68bb54a51d803bfb97a8e6263fedeed56b', '6575560259');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('374', 'Kailyn', 'Heller', 'royal.larkin@example.org', 'a9b65b1734867de7ff6150803b840c27af77eba8', '54');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('375', 'Sophie', 'Streich', 'ruecker.margarete@example.com', '2e71b85888f8dbcecadd30294ea48a5509e2754a', '395228');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('376', 'Simeon', 'Ledner', 'myrtis79@example.org', '637eceed9d218eb76233f3c96c8d94a83acf6db7', '4751924079');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('377', 'Jack', 'Carter', 'roderick92@example.net', '8631fdbb95c23426a549361fb193be2fb6b71e8f', '505');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('378', 'Bobbie', 'Heathcote', 'maritza.gottlieb@example.net', '7faadfc55aacf170563787d0cdb331942a798028', '29922');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('379', 'Geovanny', 'Morissette', 'rrice@example.org', '3565a134fc49cbb02c17c98dc0702cbfc0facdd9', '75');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('380', 'Sienna', 'Stoltenberg', 'moen.madalyn@example.org', '5ee9d162e37750c388b71963b5b40cbc9bd7d6aa', '426586766');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('381', 'Johan', 'Ernser', 'opal16@example.net', '5875232bb460293a66f871820321e6ef8d7cd3ca', '4290291004');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('382', 'Marty', 'Wisozk', 'oswaldo.ritchie@example.net', '20bbfe2015d1f777a2f636ea50bf95d6b8f4876d', '120577');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('383', 'Alysha', 'Hintz', 'dtillman@example.org', 'bf2818743e5708814ee56ec2e69080a127562334', '702');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('384', 'Jaylin', 'Buckridge', 'sydnee.terry@example.org', 'edb0b6a823549315325eb5a814214b442862c036', '874');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('385', 'Mackenzie', 'Heaney', 'howell.janick@example.net', '700ea0c4b07cdfa9e898c20a93de5098e105dd47', '74');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('386', 'Lorenzo', 'Tillman', 'stevie93@example.com', 'cacd5f80d189abe1578174e84779a06f98806c16', '639');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('387', 'Junius', 'Schneider', 'rosalee60@example.net', 'c8e0f8dac4c514b25370354c5702c5fec0ad2442', '704');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('388', 'Lela', 'Macejkovic', 'violet.pfannerstill@example.net', 'c1ba511d9f5e21a0eae13724566dc24b8c257c17', '688');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('391', 'Christina', 'Smith', 'ikozey@example.net', 'b390a05f1005d6ecf662dbddb1473e50c9946f36', '564395');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('392', 'Jerry', 'Deckow', 'kailey.wiza@example.com', 'af7dd169a7da46fe345c7b002cdcddde3866ac95', '882');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('394', 'Lenore', 'Schoen', 'dwuckert@example.org', '927a5c30be62d90dfdc7625dec5a65c2c2c5d00a', '7099');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`) VALUES ('395', 'Maximillia', 'Bode', 'otis.runte@example.net', '2c93606abce4e1153cbd6710abd3e0ca0ee70e57', '4820148036');


