CREATE DATABASE IF NOT EXISTS db_6 CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE TABLE IF NOT EXISTS db_6.tasklist (
	id int(3) NOT NULL AUTO_INCREMENT,
	tasktext text NOT NULL,
	date varchar(10) NOT NULL,
	PRIMARY KEY (id)
) ENGINE=innoDB DEFAULT CHARSET=utf8;

INSERT INTO db_6.tasklist (id, tasktext, date) VALUES
(1, 'Lorem ipsum dolor sit amet consectetur adipiscing elit natoque, libero vel gravida sed pharetra fusce euismod, facilisi metus habitasse sociis felis tempor ligula. Convallis nostra potenti faucibus cum tempus urna, hendrerit maecenas sed quam aptent nibh tortor, donec semper euismod cubilia magnis. In ad tristique cubilia fringilla proin vivamus suspendisse elementum sem, amet porta dapibus vulputate placerat litora vel magnis varius torquent, gravida risus aenean per lectus arcu quisque sed. Amet aenean ut augue fermentum felis a sem hendrerit purus sodales, luctus vivamus nisl non leo rutrum dis taciti vestibulum ipsum senectus, ad dictum eu ultricies aliquam quisque lorem cum condimentum.', '02.03.2020'),
(2, 'Lorem ipsum dolor sit amet consectetur adipiscing elit luctus, velit cum elementum mattis massa primis dictum, fringilla suscipit integer lectus taciti pharetra habitasse. Euismod lacinia ultricies platea pellentesque tellus erat sagittis quis dis, aenean facilisis inceptos condimentum fames ornare dignissim consectetur, quam massa libero dolor convallis placerat vitae cursus. Quam porta himenaeos mi orci vehicula sociosqu varius nullam nam nibh, magnis volutpat commodo ac vivamus consectetur tristique duis ultricies. Gravida sagittis primis semper pulvinar potenti faucibus id lectus class penatibus diam, senectus inceptos quam aenean sollicitudin maecenas mauris dapibus platea massa, pharetra mollis donec sit conubia felis sodales condimentum nisl orci. Malesuada enim nisi eu natoque ligula taciti eget duis elementum sollicitudin litora, mauris libero ornare quisque hac per senectus iaculis primis euismod proin, sagittis fusce praesent metus scelerisque orci mattis ultrices quis porttitor.', '02.03.2020'),
(3, 'Lorem ipsum dolor sit amet consectetur adipiscing, elit senectus sapien sagittis torquent luctus, non at dis per vitae. Dignissim netus conubia erat a lectus lacinia augue nullam aenean blandit, cursus porttitor imperdiet nunc sapien senectus placerat massa. Aenean faucibus suscipit venenatis sit cum orci habitasse integer posuere varius, non rutrum phasellus sociis lobortis libero vulputate iaculis rhoncus dis facilisi, nisl aliquam cubilia laoreet cras molestie morbi dictum dapibus. Senectus tincidunt montes potenti eleifend netus mauris id ullamcorper sociis cursus cras porta pretium, velit sociosqu mattis sollicitudin praesent magna ornare vitae curae lacinia lectus vel.', '02.03.2020'),
(4, 'Lorem ipsum dolor sit amet consectetur adipiscing elit sagittis, a pulvinar odio sed mauris vivamus placerat vitae lacinia, ac donec orci nec dignissim ultricies nisl. Conubia elementum aenean blandit purus integer taciti netus volutpat congue ultricies facilisis, eleifend mauris praesent quis platea hac donec facilisi ante. Pulvinar ad cubilia duis fames placerat eget natoque aliquam suspendisse sodales, suscipit vivamus mattis fringilla vestibulum in sagittis morbi blandit inceptos, erat quis a mus eros ligula egestas feugiat elit. Etiam interdum nibh tempus parturient justo auctor leo ante, tristique imperdiet inceptos dui eleifend dapibus habitasse erat phasellus, facilisis montes neque euismod mauris fermentum porta.', '02.03.2020'),
(5, 'Lorem ipsum dolor sit amet consectetur adipiscing elit duis ad, mollis porta nullam risus consequat placerat mi nunc. Integer cubilia mattis non nibh bibendum massa, congue magna consequat lobortis lectus vel platea, luctus lacus nisl purus et. Scelerisque viverra fermentum erat class elit non arcu bibendum pharetra nascetur dis, egestas aliquet eros semper augue magnis ad feugiat dolor vel fames phasellus, mattis sociosqu volutpat sollicitudin vulputate facilisi condimentum hac primis ridiculus. Torquent nisi euismod facilisis rutrum ad, nullam neque mi litora enim gravida, per pulvinar commodo tincidunt.', '02.03.2020'),
(6, 'Lorem ipsum dolor sit amet consectetur adipiscing elit congue morbi, enim quis velit aptent eleifend gravida tempus curae dictum, sociis praesent vehicula magnis in vulputate erat porttitor. Auctor habitant praesent felis lacinia mattis imperdiet consectetur nisl in, aliquam id donec euismod at et sit cursus, mollis non litora est mi iaculis massa vivamus. Consectetur pretium dictum quam ornare nisi elementum eu torquent sollicitudin, ac risus aenean congue orci phasellus dapibus lobortis. Facilisis diam sodales nostra ipsum quam hendrerit, metus dignissim justo eros pulvinar, cubilia amet quis neque suscipit.', '02.03.2020'),
(7, 'Lorem ipsum dolor sit amet consectetur adipiscing, elit ultrices vivamus auctor a nisi libero, consequat turpis pellentesque sociosqu nostra. Fusce phasellus class mi accumsan habitasse fames ridiculus, dictum urna taciti porttitor adipiscing habitant lectus posuere, ad elit netus quisque auctor sem. Senectus eu lacinia diam risus suspendisse vitae magnis cum natoque penatibus pulvinar, vulputate morbi molestie placerat feugiat ipsum accumsan tristique nulla a, mollis varius malesuada himenaeos nullam id dictum aenean sodales sed. At mattis placerat risus dis non nullam dignissim scelerisque, ligula purus nam facilisi ridiculus laoreet egestas, iaculis lectus massa condimentum tincidunt natoque imperdiet. Nunc torquent consequat est justo proin luctus molestie vitae enim, adipiscing aliquet odio elit ornare neque non.', '02.03.2020'),
(8, 'Lorem ipsum dolor sit amet consectetur adipiscing elit laoreet tempor molestie bibendum proin, nulla id dictum himenaeos varius eget pharetra orci blandit integer vestibulum, urna ultricies habitant dui sem pellentesque congue pretium vel quis dignissim. Iaculis curae rutrum tempor magna posuere id duis cursus, montes hendrerit malesuada condimentum accumsan adipiscing eget sed, morbi quis ornare vulputate dis nulla convallis. Sociis suspendisse vestibulum sapien eu vivamus mollis, quis hac orci id sagittis, curabitur arcu phasellus maecenas platea. Porta aptent integer laoreet pulvinar elementum consequat, mi congue justo vitae phasellus scelerisque pharetra, malesuada pretium ultricies sollicitudin nam. Curabitur sagittis mus mauris praesent fermentum ad ridiculus adipiscing, enim habitasse facilisis fringilla vel vivamus libero.', '02.03.2020'),
(9, 'Lorem ipsum dolor sit amet consectetur adipiscing elit augue penatibus, inceptos ultricies gravida dignissim conubia in interdum sed dis dictumst, montes hendrerit ad sagittis porttitor vehicula metus diam. Cum dolor varius torquent feugiat ut commodo ac habitant mollis, cubilia primis curae interdum parturient ornare rutrum montes, condimentum ridiculus vitae litora ad eu quam leo. Sociis urna egestas accumsan lobortis semper diam primis non gravida, ante adipiscing taciti molestie ridiculus auctor sociosqu ornare, magnis aliquet nascetur tempus laoreet justo dictum quisque. Maecenas laoreet metus risus praesent quis etiam sapien, senectus ridiculus netus quam molestie mus vehicula rhoncus, consectetur platea orci venenatis condimentum nunc. Ultrices fringilla nunc orci dictumst nisi quisque netus pharetra faucibus tellus, maecenas consequat odio magnis vehicula duis natoque nisl ullamcorper donec, pellentesque montes dignissim torquent mollis nulla dapibus curae augue.', '02.03.2020'),
(10, 'Lorem ipsum dolor sit amet consectetur adipiscing elit ridiculus lectus auctor praesent justo nascetur, pellentesque ligula id nisl cum parturient lacinia nam cursus donec nullam. Dui natoque sagittis habitasse nibh purus potenti porta tempus, parturient nec dis id suspendisse dolor consequat, penatibus torquent vitae amet sapien elit bibendum. Nam ullamcorper congue consequat magnis blandit at cum cubilia, sit auctor non molestie gravida eu curabitur nec semper, vulputate sagittis suspendisse arcu rhoncus velit netus. Nibh duis proin mauris egestas sodales orci taciti congue ligula interdum habitant, nunc nisi arcu vehicula consectetur sem pharetra elementum vulputate euismod, cursus metus nisl dictumst cubilia cras aptent tempor parturient blandit.', '02.03.2020');