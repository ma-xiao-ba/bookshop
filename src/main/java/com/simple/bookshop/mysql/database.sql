create database if not exists bookstore;
use bookstore;

drop table if exists users;
create table if not exists users
(
    u_id int(4) primary key auto_increment,
    u_name varchar(8) not null unique,
    u_password varchar(20) not null,
    u_realname 	varchar(20) not null,
    u_regdt timestamp default current_timestamp,
    u_phone varchar(11) not null,
    u_role 	int(1) default 1,
    u_mark 	varchar(20) 
);
insert into users(u_name,u_password,u_realname,u_phone,u_role,u_mark)
values('admin','111','张浩然','15478693698',1,'啥都管'),('zhangsan','123','张三','15478693698',0,'啥都不管');


drop table if exists booktypes;
create table if not exists booktypes
(
	bt_id int(4) primary key auto_increment,
	bt_name varchar(50) not null unique
)auto_increment=1000001;
insert into booktypes(bt_name) values('艺术设计'),('文学著作'),('画集'),('人物传记'),('计算机/网络');


drop table if exists books;
create table if not exists books
(
	b_id int(8) primary key auto_increment,
	b_isbn varchar(32) not null unique,
	b_name varchar(64) not null,
	b_author varchar(64) not null,
	b_publisher varchar(64) not null,
	b_price float not null,
	bt_id int(8) not null references booktypes(bt_id),
	b_image varchar(50) not null,
	b_stock int(6) not null,
	b_content varchar(4096),
	b_regdt timestamp default current_timestamp,
	b_sales int(10) default 0
)auto_increment=100001;


insert into books(b_isbn,b_name,b_author,b_publisher,b_price,bt_id,b_image,b_stock,b_content)
values ('2019082810341','游戏设计艺术（第2版）','（美） Jesse Schell','电子工业出版社',27.9,1000001,'images/book/book_26.png','2000','不需要是技术专家，只要阅读《游戏设计艺术（第2版）》，学习佳作，深刻认识游戏设计的真谛，人人都可以成为成功的游戏设计者！《游戏设计艺术（第2版）》作者Jesse Schell是有二十多年成功经验的游戏设计师，曾任国际游戏开发者协会主席，并在迪士尼在线游戏服务多年，获奖颇多。他以宝贵经验提出一百多套问题集，帮助你从各种角度观察游戏设计，例如心理、建筑、音乐、视觉、电影、软件工程、主题公园设计、数学、谜题设计和人类学等方方面面。《游戏设计艺术（第2版）》主要内容包括：游戏的体验、构成游戏的元素、元素支撑的主题、游戏的改进、游戏机制、游戏中的角色、游戏设计团队、如何开发好的游戏、如何推销游戏、设计者的责任等。'),
('2019082810401','你的名字','（日）新海诚','百花洲文艺出版社',37.8,1000002,'images/book/book_15.png',20000,'在朴素小镇里土生土长的少女三叶，因周围的环境和家传神社加诸的职责等因素心生不满，憧憬着有一天能离开小镇到大都市里生活。某天，她在睡梦中与生活在东京的少年泷交换了灵魂，原本素不相识的少年与少女，在时空奇迹的作用下产生了命运的交集，而唯一维系着两人的，便是彼此的“名字”。'),
('2019082810411','克苏鲁的呼唤','（美）霍华德·菲利普·洛夫克拉夫特','人民文学出版社',49.0,1000002,'images/book/book_16.png',10000,'《克苏鲁的呼唤》（The Call of Cthulhu）是美国小说家霍华德·菲利普·洛夫克拉夫特的短篇小说，故事由追查一个奇异的艺术品开始，这个创作是由旧日支配者（Great old ones）克苏鲁所启发，经过仔细的调查之后发现藏在其后的恐怖秘密。'),
('2019082810441','地铁2033','（俄）德米特里·格鲁克夫斯基','中国友谊出版公司',18.8,1000002,'images/book/book_18.png',23333,'公元2033年，由于核战爆发，整个世界都笼罩在辐射之下，人类的''生存空间''在那些日益增多的变种生物的威胁下一天天缩小，人类几乎绝迹。 [1] 故事的主角阿尔乔姆是核爆后出生的生存者，他的兴趣是收集战前的风景明信片，梦想地表的模样；某日，一起突如其来的事件迫使阿尔乔姆踏上旅途，前往其他的站台求援，以拯救自己居住的地铁站以及最后人类的命运……一个掌握着人类命运的青年即将踏上未知的冒险之旅，寻找拥有拯救人类的力量的英雄。这是一场物种之间的战争！这是对整个人类的进步的威胁！这是人类一边发展一边给自己惹上的麻烦！'),
('2019082810481','地铁2034','（俄）德米特里·格鲁克夫斯基','中国友谊出版公司',23.8,1000002,'images/book/book_19.png',23334,'核战让世界变成一片废墟，新生物获得了地球的掌控权。最后的人类躲进地铁，为了生存团结在一起，形成一个个小国家；又为了生存，对内或者对外作战。文明渐渐变成回忆，谎言丛生，危机四伏。在这样没有明天、没有理想的世界，却仍有人心怀信仰与对生存现状的质疑。当意外再次发生，强大神秘的猎人和见多识广的荷马一头扎进充满危险的地铁丛林，寻找悲剧发生的原因，却发现了关乎人类存亡的惊天秘密。当拯救和毁灭相纠缠，当怪物和人变成自己的一体两面，人们要怎么拯救自己，拯救人类？当整个星球都在死去，我们还能为世界留下些什么？'),
('2019082810491','三体','刘慈欣','重庆出版社',29.8,1000002,'images/book/book_11.png',20000,'文化大革命如火如荼地进行，天文学家叶文洁在期间历经劫难，被带到军方绝秘计划“红岸工程”。叶文洁以太阳为天线，向宇宙发出地球文明的第一声啼鸣，取得了探寻外星文明的突破性进展。三颗无规则运行的太阳主导下，四光年外的“三体文明”百余次毁灭与重生，正被逼迫不得不逃离母星，而恰在此时，他们接收到了地球发来的信息。对人性绝望的叶文洁向三体人暴露了地球的坐标，彻底改变了人类的命运。地球的基础科学出现了异常的扰动，纳米科学家汪淼进入神秘的网络游戏《三体》，开始逐步逼近这个世界的真相。汪淼参加一次玩家聚会时，接触到了地球上应对三体人到来而形成的一个秘密组织（ETO）。地球防卫组织中国区作战中心通过“古筝计划”，一定程度上挫败了拯救派和降临派扰乱人类科学界和其他领域思想的图谋，获悉处于困境之中的三体人为了得到一个能够稳定生存的世界决定入侵地球。在运用超技术锁死地球人的基础科学之后，庞大的三体舰队开始向地球进发，人类的末日悄然来临'),
('2019082810521','三体II黑暗森林','刘慈欣','重庆出版社',31.6,1000002,'images/book/book_13.png',20000,'三体人在利用科技锁死了地球人的科学之后，出动庞大的宇宙舰队直扑太阳系，面对地球文明前所未有的危局，人类组建起同样庞大的太空舰队，同时（PDC）利用三体人思维透明的致命缺陷，制订了“面壁计划”。出乎意料地，社会学教授罗辑被选出作为四位“面壁者”之一，展开对三体人的秘密反击。虽然三体人自身无法识破人类的计谋，却依靠由地球人中的背叛者挑选出的“破壁人”与“面壁者”进行智慧博弈。在这场你死我活的文明生存竞争中，罗辑由一开始的逃避和享乐主义逐渐意识到自己的责任心，想到了一个对抗三体文明入侵的办法。科研军官章北海试图借一场陨石雨干涉飞船推进形式的研究方向。近二百年后，获选增援未来的他在人类舰队被“水滴”清除殆尽前，成功抢夺战舰逃离。此时罗辑证实了宇宙文明间的黑暗森林法则，任何暴露自己位置的文明都将很快被消灭。借助于这一发现，他以向全宇宙公布三体世界的位置坐标相威胁，暂时制止了三体对太阳系的入侵，使地球与三体建立起脆弱的战略平衡。'),
('2019082810541','三体Ⅲ·死神永生','刘慈欣','重庆出版社',48.6,1000002,'images/book/book_12.png',20000,'身患绝症的云天明买下一颗星星送给暗恋着的大学同学程心，而程心因参与（PIA）向三体舰队发射探测器的工作，却想让航天专业背景的他放弃安乐死，作为被执行人将大脑捐献给阶梯计划。与三体文明的战争使人类首次看到了宇宙黑暗的真相，地球文明因为黑暗森林打击的存在如临大敌，不敢在太空中暴露自己。在零道德的宇宙中发起黑暗战役的战舰被诱导返航，却受到有道德的地球文明审判。不称职的懦弱少女程心被选来充当掌握地球命运的执剑人，她因为罗辑的成功将这看作一项只需花费时间的任务，刚刚任职水滴就向地球发动攻击，程心为了忠于人性做出了错误的决定。在警示下继续逃离的“蓝色空间”号，受到具有发射引力波能力的“万有引力”号与两个同行的“水滴”追击，其上的人员进入四维空间摧毁水滴并占领了“万有引力”号，启动引力波广播向宇宙公布了三体星系的坐标。云天明与地球取得联系，通过讲述三个自己编创的童话故事，向程心透露大量情报；人类自以为悟出了生存竞争的秘密，开始进行掩体计划，维德领导的空间曲率驱动研究因为程心的错误判断被终止，使得人类最终没有能够逃脱被高级文明毁灭的命运。因为宇宙中还存在更强大的文明，战争的方式和武器已经远超出人类的想象，极高文明发出了一张卡片大小的“二向箔”，使整个太阳系压缩为二维平面而毁灭。在地球人类接近灭亡之际，只有程心和艾AA两个幸存者乘坐光速飞船离开。罗辑成为设置于冥王星的地球文明博物馆的“守墓人”，她们在冥王星带走人类文明的精华。在云天明送的恒星的一颗行星上，程心遇到关一帆且探讨了宇宙降维的真相，然而超乎一切之上的力量要求宇宙归零重生，在黑域中穿越长达1800万年的时空……程心没有等到云天明到来，和关一帆在小宇宙中短暂居住后重新进入大宇宙生活。'),
('2019082810551','星际争霸:战地手册','(美)里克·巴尔巴著','Perseus Books',38.0,1000003,'images/book/book_23.png',10000,'自1998年初作发售起，暴雪娱乐出品的《星际争霸》系列已在全球收获数百万拥趸。作为一款开创了军事策略与科幻冒险类型的作品，《星际争霸》用浸入式游戏模式和扣人心弦的故事线，以编年史形式记录了好斗的人类、神秘的星灵与可怕的异虫之间的战争。《星际争霸：战地手册》建基于绵延十载的系列设定，对游戏中的作战单位、各式建筑等单位进行了详细剖析，此外亦包含兵种属性、克制关系以及令人忍俊不禁的陆战队士兵手写批注，是系列爱好者必备的收藏佳品。');


drop table if exists orders;
create table if not exists orders
(
	o_id int(4) primary key auto_increment,
	o_isbn varchar(32) not null,
	o_addr varchar(100) not null,
	o_date timestamp default current_timestamp,
	o_state int(1) not null default 0,
	o_mark varchar(50),
	u_name varchar(8) not null references users(u_name)
);

drop table if exists cart;
create table if not exists cart
(
	c_id int(6) primary key auto_increment,
	u_name varchar(8) not null references users(u_name),
	b_id int(8) not null references books(b_id),
	c_number int(3) not null
);

drop table if exists orderdetails;
create table if not exists orderdetails
(
	od_number int(3) not null,
	o_isbn varchar(32) references orders(o_isbn) ,
	b_id int(8) references books(b_id),
	primary key(o_isbn,b_id)
);
