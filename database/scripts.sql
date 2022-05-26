CREATE TABLE menu (
  menuid       INTEGER      NOT NULL PRIMARY KEY,
  sequence     INTEGER      NOT NULL,
  text         VARCHAR(150) NOT NULL,
  header       VARCHAR(150),
  link         VARCHAR(150) NOT NULL,
  fathermenuid INTEGER,
  FOREIGN KEY (fathermenuid)
    REFERENCES MENU(menuid)
    ON DELETE CASCADE
);

INSERT INTO menu (menuid, sequence, text, header, link, fathermenuid) VALUES(1, 10, 'products', NULL, '#', NULL);
INSERT INTO menu (menuid, sequence, text, header, link, fathermenuid) VALUES(2, 10, 'exchange', NULL, 'index.html#exchange', 1);
INSERT INTO menu (menuid, sequence, text, header, link, fathermenuid) VALUES(3, 20, 'insurances', NULL, 'index.html#insurance', 1);
INSERT INTO menu (menuid, sequence, text, header, link, fathermenuid) VALUES(4, 30, 'investments', NULL, 'index.html#investments', 1);
INSERT INTO menu (menuid, sequence, text, header, link, fathermenuid) VALUES(5, 40, 'leePayCardMachine', NULL, 'index.html#cardMachine', 1);
INSERT INTO menu (menuid, sequence, text, header, link, fathermenuid) VALUES(6, 50, 'paymentGateway', NULL, 'index.html#paymentGateway', 1);
INSERT INTO menu (menuid, sequence, text, header, link, fathermenuid) VALUES(7, 60, 'giftCard', NULL, 'index.html#giftCard', 1);
INSERT INTO menu (menuid, sequence, text, header, link, fathermenuid) VALUES(8, 20, 'services', NULL, '#', NULL);
INSERT INTO menu (menuid, sequence, text, header, link, fathermenuid) VALUES(9, 10, 'currentAccount', NULL, '#', 8);
INSERT INTO menu (menuid, sequence, text, header, link, fathermenuid) VALUES(10, 20, 'creditCard', NULL, '#', 8);
INSERT INTO menu (menuid, sequence, text, header, link, fathermenuid) VALUES(11, 30, 'taxes', NULL, '#', 8);
INSERT INTO menu (menuid, sequence, text, header, link, fathermenuid) VALUES(12, 30, 'help', NULL, '#', NULL);
INSERT INTO menu (menuid, sequence, text, header, link, fathermenuid) VALUES(13, 40, '_currentLanguage', NULL, '#', NULL);
INSERT INTO menu (menuid, sequence, text, header, link, fathermenuid) VALUES(14, 10, 'ZH', NULL, 'setLanguage', 13);
INSERT INTO menu (menuid, sequence, text, header, link, fathermenuid) VALUES(15, 20, 'EN', NULL, 'setLanguage', 13);
INSERT INTO menu (menuid, sequence, text, header, link, fathermenuid) VALUES(16, 30, 'PT', NULL, 'setLanguage', 13);
INSERT INTO menu (menuid, sequence, text, header, link, fathermenuid) VALUES(17, 50, 'login', NULL, '#', NULL);
INSERT INTO menu (menuid, sequence, text, header, link, fathermenuid) VALUES(18, 60, 'signUp', NULL, '#', NULL);
INSERT INTO menu (menuid, sequence, text, header, link, fathermenuid) VALUES(19, 10, 'acessOurAppToSignUp', 'signUpForLeeBank', '#', 18);

CREATE TABLE dictionary (
  dictionaryid CHAR(150)     NOT NULL PRIMARY KEY,
  pt           VARCHAR(5000) NOT NULL,
  en           VARCHAR(5000) NOT NULL,
  zh           VARCHAR(5000) NOT NULL
);

INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('aboutUs', 'Sobre nós', 'About Us', '关于我们');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('absoluteSecurity', 'Segurança Absoluta', 'Absolute Security', '绝对安全');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('acceptsPayments', 'Aceita pagamentos de qualquer lugar e qualquer tipo de cartão (débito, chip, e PIN).', 'Accepts payments from anywhere and any type of card (debit, chip, and PIN).', '接受来自任何地方和任何类型的卡（借记卡、芯片和 PIN）的付款');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('accidentInsurance', 'O seguro de acidentes pessoais oferece proteção em caso de imprevistos e deixa você e sua família mais tranquilos.', 'Personal accident insurance offers protection in the event of unforeseen events and makes you and your family more relaxed.', '人身意外保险可在发生意外事件时提供保障，让您和您的家人更加放松');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('accidents', 'Acidentes Pessoais', 'Personal accidents', '人身意外保险');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('acessOurAppToSignUp', 'Acesse o nosso App para cadastrar-se', 'Access our APP to sign up', '进入我们的应用程序进行注册');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('address', 'Endereço da Lee Bank - Escritório', 'Lee Bank Address - Office', 'Lee Bank 地址 - 办公室');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('agility', 'agilidade', 'agility', '敏捷');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('allMachines', 'Todas as maquininhas são conectadas ao aplicativo Lee Bank e disponibilizam atendimento em chinês, inglês e português.', 'All machines are connected to the Lee Bank app and provide service in Chinese, English and Portuguese.', '所有刷卡机都连接到Lee Bank应用程序，并提供中文、中文和葡萄牙语服务');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('allowsPayments', 'Permite pagamentos com sistema mais seguro', 'Allows payments with a more secure system.', '允许使用更安全的系统进行支付');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('allYouNeed', 'Tudo o que você precisa, ', 'All you need,', '您需要的一切，');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('and', ' e ', ' and ', '和');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('android', 'Sistema baseado em Android', 'Android based system', '基于安卓 (Android)的系统');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('anticipate', 'Antecipe o recebebimento do seu dinheiro e receba-o em até 1 dia útil na sua conta.', 'Anticipate the receipt of your money and receive it within 1 business day in your account.', '预计收到您的款项，并在 1 天内 (工作日) 将款项存入您的账户');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('anyQuestion', 'Alguma dúvida?', 'Any questions?', '任何问题？');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('appStore', 'Criação de sua própria loja de aplicativos de maneira fácil e intuitiva, para melhor atender os seus clientes.', 'Creating your own app store in an easy and intuitive way, to better serve your customers.', '以简单直观的方式创建您自己的应用商店，以更好地为您的客户服务');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('awayFromHome', 'Se precisar depositar dinheiro na sua conta Lee Bank, basta ir à uma agência dos bancos parceiros mais próxima para fazer o depósito.', 'If you need to deposit money into your Lee Bank account, just go to the nearest partner bank branch to make the deposit.', '如果您需要将钱存入您的 Lee Bank 账户，只需前往离您最近的合作银行分行进行存款');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('battery', 'Bateria com grande autonomia', 'Battery with great autonomy', '具有极大自主权的电池');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('batteryUse', 'Uso em ambientes fechados e ao ar livre', 'Use indoors and outdoors', '在室内和室外使用');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('benefits', 'Benefícios aos tópicos como: Compras online, gestão de empresas e relatórios detalhados.', 'Benefits to topics such as: Online shopping, business management and detailed reports.', '对以下主题的好处：在线购物、业务管理和详细报告');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('callMe', 'Me Chame de Simplicidade', 'Call me Simplicity', '易用性 ');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('cash', 'Cash In & Cash Out', 'Cash In & Cash Out', '存款 和 取款');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('cashIn', 'Soluções de cash-in e cash-out', 'Cash-in and cash-out solutions', '存款和取款解决方案。');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('certificationPci', 'Certificação PCI-PTS 4.x', 'PCI-PTS 4.x certification', 'PCI-PTS 4.x 认证');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('certification', 'Certificação', 'Certification', '认证');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('certifications', 'CI PTS 5.x, EMV L1/L2/CL1', 'CI PTS 5.x, EMV L1/L2/CL1', 'CI PTS 5.x，EMV L1/L2/CL1');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('clickToLearn', 'Clique para saber mais sobre as vantagens da Lee Pay:', 'Click to learn more about Lee Pay benefits:', '点击”查看更多“了解有关 Lee Pay 福利的更多信息：');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('companyEmail', 'E-mail da empresa', 'company email', '公司邮箱');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('completeBank', 'Serviço Completo do Banco', 'Complete Bank Service', '完整的银行服务');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('completeService', 'Serviço Completo, Confiança Total', 'Complete Service, Total Trust', '全方位服务，完全信任');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('conections', '4G, Wi-Fi e Bluetooth', '4G, Wi-Fi e Bluetooth', '4G、WiFi 和蓝牙 ');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('contact', 'Entre em Contato', 'Contact', '联系我们');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('contactUs', 'Fale Conosco', 'Contact us', '请联系我们');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('contacUsBussiness', 'Entre em contato conosco para buscarmos a melhor solução para o seu negócio.', 'Contact us to find the best solution for your business.', '联系我们，我们为您寻找最佳解决方案');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('creditCard', 'Cartão de Crédito', 'Credit Card', '信用卡');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('currentAccount', 'Conta-Corrente', 'Current Account', '支票账户');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('debts', 'Sobre as Dívidas', 'About Debts', '关于债务');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('debtsInsurance', 'O seguro garante em caso de morte, invalidez ou perda de renda involuntária do segurado o pagamento do saldo devedor de dívida contraída em financiamento.', 'The insurance guarantees in case of death, disability or involuntary loss of income of the insured, the payment of the outstanding balance of debt contracted in financing.', '保险保证在被保险人死亡、残疾或非自愿丧失收入的情况下，支付融资合同中未偿还的债务余额');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('design', 'Sustentabilidade X Design', 'Sustainability X Design', '可持续性 X 设计');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('designPolicy', 'Política de concepção de produtos ecológica-proativa', 'Eco-Proactive Product Design Policy', '环保产品设计政策');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('digital', 'Digital', 'Digital', '数码');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('discover', 'Conheça as nossas máquininhas abaixo!', 'Discover our machines below!', '查看下面我们的刷卡机!');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('doBussines', 'Faça negócios com empresas no exterior sem se preocupar em como realizar ou receber pagamentos.', 'Do business with companies abroad without worrying about how to make or receive payments.', '与国外公司开展业务，无需担心如何付款或收款');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('doubts', 'Dúvidas', 'Doubts', '疑问');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('efficient', 'Eficiente', 'Efficient', '高效');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('email', 'E-mail', 'E-mail', '电子邮件：');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('EN', 'English', 'English', 'English');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('encryption', 'Esquema de criptografia mais avançado', 'More advanced encryption scheme', '更高级的加密方案');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('essential', 'Lee Pay Essencial', 'Lee Pay Essential', 'Lee Pay Essential');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('exchange', 'Câmbio', 'Exchange', '跨境汇款');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('experience', 'Experiência Simples e Segura', 'Simple and Secure Experience', '简单安全的体验');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('findInAClick', 'acha num clique', 'find in a click', '点击即可找到');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('fullConnectivity', 'Conectividade total', 'full connectivity', '完全连接');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('gatewayFrom', 'Gateway de', 'Payment', '支付闸道器');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('giftCard', 'Gift Card', 'Gift Card', '礼品卡');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('greatestPracticality', 'Contamos com a maior praticidade quando se fala em cash-in e cash-out. No Lee Bank você consegue sacar dinheiro em qualquer caixa eletrônico 24h.', 'We have the greatest practicality when it comes to cash-in and cash-out. At Lee Bank you can withdraw money from any ATM 24 hours a day.', '在存款和取款方面，我们具有最大的实用性。 在 Lee Bank，您可以 24 小时从任何自动取款机 (ATM) 取款');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('helloWeAreLeeBank', 'Olá, nós somos o Lee Bank', 'Hello, we are Lee Bank', '您好，我们是Lee Bank');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('help', 'Ajuda', 'Help', '帮助');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('helpCenter', 'Central de Ajuda', 'Help center', '帮助中心');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('idealSolution', 'Nós temos a solução ideal para a sua loja online. Deixe os seus clientes mais seguros na hora de fazer as compras. Comece agora mesmo a utilizar nosso gateway de pagamento no seu e-commerce e potencialize suas vendas. Gerencie-as através da nossa plataforma que oferece dados completos e taxas mais baratas.', 'We have the ideal solution for your online store. Make your customers safer when shopping. Start now using our payment gateway in your e-commerce and boost your sales. Manage them through our platform that offers complete data and cheaper rates.', '我们为您的网上商店提供理想的解决方案。让您的客户在购物时更安全。立即开始在您的电商中使用我们的支付闸道器并提高您的销售额。通过我们的平台管理您的业务，该平台提供完整的数据和更便宜的价格');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('insurance', 'Seguro', 'Insurance', '保险');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('insurances', 'Seguros', 'Insurances', '保险');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('intuitive', 'Intuitivo', 'Intuitive', '直观');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('investment', 'Investimento', 'Investment', '投资');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('investments', 'Investimentos', 'Investments', '投资');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('investSafely', 'Invista com segurança. Nós temos diferentes opções de investimentos para você aplicar o seu dinheiro onde preferir. Acompanhe os rendimentos de perto e se informe sobre o mercado financeiro.', 'Invest safely. We have different investment options for you to apply your money wherever you prefer. Monitor income closely and learn about the financial market.', '安全投資。 我們為您提供不同的投資選擇，讓您可以將資金用於您喜歡的任何地方。密切監控收入並了解金融市場');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('knowMore', 'Saiba mais', 'Know more', '查看更多');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('leeBankCash', 'Com o cash-in do Lee Bank, você consegue pagar boletos, recarregar o seu celular e fazer depósito em conta do Lee Bank no caixa eletrônico ou lotérica mais próxima de você. Receba o valor depositado em até 1 dia útil. Veja as agências parceiras.', 'With Lee Bank cash-in, you can pay slips, recharge your cell phone and make deposits into your Lee Bank account at the nearest ATM or lottery shop. Receive the deposited amount within 1 business day. See partner agencies.', '使用 Lee Bank 存款，您可以在最近的自动取款机 或彩票店支付boleto、为手机充值以及将存款存入您的 Lee Bank 账户。 在  1 天内 (工作日) 收到存款金额。 查看合作银行机构');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('leeBankMachine', 'Com a maquininha do Lee Bank, você tem soluções do início ao fim das suas vendas e, o melhor, na língua que você escolher. Tenha acesso aos relatórios de entrada e saída, extratos e saldos em três idiomas diferentes.', 'With the Lee Bank machine, you have solutions from the beginning to the end of your sales and, the best, in the language you choose. Get access to incoming and outgoing reports, statements and balances in three different languages.', '使用 Lee Bank  刷卡机，您可以从销售的开始到结束获得解决方案，而且最好的解决方案是您选择的语言。 访问三种不同语言的出入报告、报表和余额');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('leeBankWasBorn', 'O Lee Bank nasceu com o intuito de oferecer serviços bancários com  ', 'Lee Bank was born with the aim of offering banking services with ', 'Lee Bank 成立是为了居住在巴西的 30万多名华人提供');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('leePay', 'Lee Pay', 'Lee Pay', 'Lee Pay');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('leePayCardMachine', 'Maquininha de Cartão Lee Pay', 'Lee Pay Card Machine', 'Lee Pay  刷卡机');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('legalPerson', 'Pessoa Jurídica', 'Legal person', '法人');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('login', 'Login', 'Login', '登录');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('logInto', 'Entre no seu app do Lee Bank e adquira o seu gift card!', 'Log into your Lee Bank app and get your gift card!', '登录您的 Lee Bank 应用程序并获取您的礼品卡！');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('makeYourMoney', 'Faça o seu dinheiro render com o Lee Bank aqui no Brasil, como você faria na China.', 'Make your money work with Lee Bank here in Brazil, as you would in China.', '就像您在中国一样 ， 与巴西的 Lee Bank 让你的钱发挥作用');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('makingApplications', 'Plataforma de aplicativo mobile mais utilizada do mercado ', 'Ease of making applications available on the most used mobile platform on the market.', '市场上最常用的移动应用平台');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('marketplace', 'Marketplace para o seu negócio', 'Marketplace for your business', '适合您业务的市场');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('monitoring', 'Monitoramento, gestão e atualização, permite mais produtividade e agilidade no uso dos terminais.', 'Monitoring, management and updating, allows for more productivity and agility in the use of terminals.', '监控、管理和更新，可以提高终端使用的生产力和灵活性');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('name', 'Nome', 'Name', '姓名');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('nativeLanguage', 'língua nativa.', 'native language.', '');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('operations', 'Operações por: WiFi, Bluetooth e 4G.', 'Operations by: WiFi, Bluetooth and 4G.', '操作方式：WiFi、蓝牙和 4G');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('order', 'Peça já a sua!', 'Order yours now!', '申請您的 Lee Pay LeePay刷卡机');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('ourCashOut', 'O nosso serviço de cash-out permite você sacar o seu dinheiro em conta Lee Bank nos caixas 24h.', 'Our cash-out service allows you to withdraw your money from your Lee Bank account at cashiers 24/7.', '我们的取款服务允许您在 24 小时自动取款机 (ATM) 从您的 Lee Bank 账户中取款您的钱');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('ourFuture', 'Nosso Futuro', 'Our Future', '我们的未来');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('ourHelpCenter', 'Visite nosso Central de Ajuda ou entre em contato conosco.', 'Visit our Help Center or contact us.', '访问我们的帮助中心或联系我们');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('ourInsurance', 'Nossos Seguros', 'Our Insurance', '我们的保险');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('payCertification', 'PayPass, PayWave, Expresspay', 'PayPass, PayWave, Expresspay', 'PayPass, PayWave, Expresspay');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('payment', 'Todas as Opções de Pagamento', 'All Payment Options', '所有付款方式');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('paymentGateway', 'Gateway de Pagamento', 'Payment Gateway', '支付闸道器');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('paymentsGateway', 'Pagamento', 'Gateway', '付款');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('paymentIndustry', 'Aderente a todas as certificações de segurança da indústria de pagamentos.', 'Adheres to all payment industry security certifications.', '遵守所有支付行业安全认证');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('paymentOptions', 'NFC, carteira-eletrônica, além de EMV Chip&PIN, tarja magnética e contactless', 'NFC, e-wallet, plus EMV Chip&PIN, magnetic stripe and contactless', 'NFC、电子钱包、EMV Chip&PIN、磁条和非接触式');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('paymentOptionsContacless', 'Cartão Chip, Contactless, Tarja magnética, QRCode.', 'Chip Card, Contactless, Magnetic Stripe, QRCode.', '芯片卡、非接触式、磁条、二维码');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('paymentProcess', 'Processos de Pagamento Simples e Móvel', 'Simple and Mobile Payment Processes', '简单和无线支付流程');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('physicalPerson', 'Pessoa Física', 'Physical person', '个人');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('pointYourCell', 'Aponte sua câmera do celular para o QR code ao lado ou baixe o app pelo Google Play / App Store e conheça uma nova experiência de banco digital', 'Point your cell phone camera at the QR code on the side or download the app from Google Play / App Store and discover a new digital banking experience', '将您的手机摄像头扫描二维码或从 Google Play / App Store 下载应用程序并体验新的数码银行');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('policies', 'Políticas de Provacidade', 'Provacity Policies', '隐私权政策');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('products', 'Produtos', 'Products', '产品');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('professionalService', 'Ideal para serviços profissionais, lojas e departamentos, restaurantes e serviços de atendimento rápido.', 'Ideal for professional services, stores and departments, restaurants and quick service.', '专业服务、商店和部门、餐厅和快速服务的理想选择');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('protectTransation', 'Protege a privacidade de transação enquanto promove o acesso ao aplicativos de pagamento', 'Protects transaction privacy while promoting access to payment apps', '保护交易隐私，同时促进对支付应用程序的访问');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('PT', 'Português', 'Português', 'Português');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('purse', 'Perda e Roubo/Bolsa Protegida', 'Loss and Theft/Protected Purse', '丢失和被盗/受保护的钱包');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('purseInsurance', 'Cobertura da sua bolsa, mochila ou pertences. Ele indeniza o valor para reposição dos itens que foram listados na contratação do seguro e que estavam guardados nelas.', 'Coverage for your purse, backpack or belongings. It indemnifies the replacement value of the items that were listed in the insurance contract and that were stored in them.', '为您的钱包、背包或随身物品提供保障。 赔偿保险合同中列出的物品的重置价值 ，以及物品里面存放的东西');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('reachingHorizons', 'Alcançando Novos Horizontes', 'Reaching New Horizons', '达到新的视野');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('realTime', 'Controle e gestão em tempo real', 'Real-time control and management', '实时控制和管理');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('remittances', 'Envie remessas para familiares e amigos no exterior com a melhor taxa de câmbio.', 'Send remittances to family and friends abroad at the best exchange rate.', '以最优惠的汇率向国外的家人和朋友汇款');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('report', 'Reportar Problemas e Reclamações', 'Report Problems and Complaints', '报告问题和投诉');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('requestIntegration', 'Solicite a integração com sua loja online e garanta as menores taxas, além da melhor experiência em pagamentos tanto para você, quanto para seu cliente. Acompanhe suas vendas através da nossa plataforma de gerenciamento.', 'Request integration with your online store and guarantee the lowest fees, in addition to the best payment experience for both you and your customer. Track your sales through our management platform.', '与您的网上商店融合并保证最低费用，此外还为您和您的客户提供最佳支付体验。通过我们的管理平台跟踪您的销售情况');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('residential', 'Residencial e DIH (Diárias Internação Hospitalar)', 'Residential and IHL (Hospital Admission Rates)', '住宿和医院每日津贴');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('residentialInsurance', 'A cobertura de diárias por internação hospitalar (DIH) é um serviço no qual se garante o pagamento de uma diária ao segurado, de acordo com o valor contratado.', 'The daily coverage for hospitalization (DIH) is a service that guarantees the payment of a daily rate to the insured, according to the contracted amount.', '住院每日保险 (DIH) 是一项保证根据合同金额向被保险人支付一日费用的服务');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('righsReserved', '© Razão Social da Lee Bank, 2022. Todos os direitos reservados', '© Lee Bank Corporate Name, 2022. All rights reserved', 'Copyright© Leebank, 2022. 版权所有');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('scanner', 'Sistema de Scanner', 'Scanner System', '扫描仪系统');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('security', 'segurança', 'security', '安全');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('securityAgility', 'Segurança e agilidade para seu negócio, no seu idioma, e sempre com as melhores taxas.  As máquinas LeePay foram pensadas para você que busca facilidade na hora de fechar suas vendas.', 'Security and agility for your business, in your language, and always with the best rates. LeePay machines were designed for you who seek ease when closing your sales.', '以您的语言为您的业务提供安全性和敏捷性，并始终以最优惠的价格。LeePay刷卡机是为那些在完成销售时寻求轻松的人设计的');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('secutiryMechanics', 'Melhores Mecanismos de Segurança', 'Best Security Mechanisms', '最佳安全机制');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('seeBelow', 'Consulte abaixo o seguro que mais se adequa às suas necessidades.', 'See below for the insurance that best suits your needs.', '請參閱下文，了解最適合您需求的保險');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('send', 'Enviar', 'Send', '发送');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('services', 'Serviços', 'Services', '服务');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('signUp', 'Cadastre-Se', 'Sign Up', '注册');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('signUpForLeeBank', 'Cadastre-se no Lee Bank', 'Sign Up For Lee Bank', '在Lee Bank注册');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('sleepSoundly', 'Durma com tranquilidade sabendo que sua família está segura conosco. Fazer um seguro é bem simples: basta entrar no campo “Seguros” do nosso app e escolher quais tipos você quer. Pronto! Simples, prático, fácil e na palma da sua mão.', 'Sleep soundly knowing your family is safe with us. Taking out insurance is very simple: just enter the “Insurance” field of our app and choose which types you want. Ready! Simple, practical, easy and in the palm of your hand.', '知道您的家人在我们这里是安全的，您可以安然入睡。 购买保险非常简单：只需进入我们应用程序的“保险”字段并选择您想要的类型。 准备好！ 简单、实用、轻松，尽在您的掌中');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('smart', 'Lee Pay Smart', 'Lee Pay Smart', 'Lee Pay Smart');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('startHere', 'Começa Aqui', 'Starts Here', '从这里开始');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('taxes', 'Impostos', 'Taxes', '税收');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('telephone', 'Telefone', 'Telephone', '电话');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('terms', 'Termos de Uso', 'Terms of use', '使用条款');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('theChineseCommunity', 'a comunidade chinesa no Brasil', 'the Chinese Community in Brazil', '巴西银行');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('theFirstBank', 'O Primeiro banco personalizado para', 'The First Bank Customized for', '第一家为华人设立的');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('theft', 'Roubo, Furto e Danos Materiais', 'Theft and Property Damage', '盗窃和财产损失');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('theftInsurance', 'Oferecemos a cobertura para roubo, furto e danos materiais.', 'We provide coverage for theft, theft and property damage.', '我们为抢劫、盗窃和物质损失提供保险');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('theService', 'O atendimento no Lee Bank é pensado para quem busca descomplicar esse processo, com serviço personalizado, de qualidade e com as melhores taxas do mercado. ', 'The service at Lee Bank is designed for those who seek to simplify this process, with personalized, quality service and the best rates on the market.', 'Lee Bank 的服务专为那些寻求简化流程的人而设计，提供个性化、优质的服务和市场上最优惠的价格');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('tools', 'Ferramentas para Gestão de Negócios', 'Business Management Tools', '业务管理工具');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('toTheMorThan', ' para os mais de 300 mil chineses que vivem no Brasil.', 'to the more than 300,000 Chinese living in Brazil.', '的银行服务');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('touchScreen', 'Touch screen, leitor de QR Codes e câmeras (promoções e trackings de inventários).', 'Touch screen, QR Code reader and cameras (promotions and inventory tracking).', '触摸屏、二维码阅读器和摄像头（促销和库存跟踪）');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('transactionVolume', 'Volume de transações contactless', 'Contactless transaction volume', '非接触式交易量');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('transaction', 'Faça a transação agora mesmo com a ferramenta ao lado, e o valor estará disponível em até um dia útil. ', 'Make the transaction right now with the tool on the side, and the amount will be available within one business day.', '立即使用旁边的工具进行交易，资金将在一个工作日内到账');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('transactionFlow', 'Leitura de cartões e rápido fluxo de transações', 'Card reading and fast transaction flow', '读卡和快速交易流程');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('typeDoubts', 'Digite suas dúvidas aqui', 'Enter your queries here', '输入疑问');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('typeEmail', 'Digite seu E-mail', 'Type your e-mail', '输入您的电子邮件');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('typeName', 'Digite seu nome', 'Type your name', '输入您的姓名');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('typesPayments', 'Diversos tipos de pagamento', 'Various types of payment', '各种支付方式');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('typesPaymentsSecurity', 'Segurança no pagamento', 'Payment security', '支付安全');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('unlimitedSecurity', 'Quantidade ilimitado de caracteres da chave de segurança', 'Unlimited security key size', '安全密钥中的字符数不限');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('wantPracticality', 'Quer praticidade? Compre gift cards online das maiores empresas de entretenimento, transporte e alimentação para você ou para presentear. Recarregue o seu celular usando nossos serviços sem precisar sair de casa.', 'Want practicality? Buy gift cards online from the biggest entertainment, transportation and food companies for yourself or as a gift. Recharge your cell phone using our services without having to leave your home.', '好的实用性? 从最大的娱乐、交通和食品公司在线购买礼品卡给自己或作为礼物。无需离开家，即可使用我们的服务为您的手机充值');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('weAlsoOffer', 'Oferecemos serviços também para pessoas jurídicas, tudo de forma transparente e sem surpresas no final.{ Quer saber mais? Clique no botão abaixo de acordo com seu o seu perfil:', 'We also offer services for legal entities, all transparently and without surprises at the end. Want to know more? Click the button below according to your profile:', '我们还为法人实体提供服务，所有这些服务都是透明化的，最后不会有任何意外。想知道更多？根据您的个人资料点击下面的按钮：');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('weAreComplete', 'Somos um banco digital completo para quem quer soluções financeiras na vida e nos negócios na palma da mão.', 'We are a complete digital bank for those who want financial solutions in life and business in the palm of their hand.', '我们是一家完整的数码银行，适合那些希望在生活和业务中掌握财务解决方案的人');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('weArePersonalized', 'Somos um banco personalizado que presta serviços financeiros com atendimento na sua ', 'We are a personalized bank that provides financial services with service in your ', '我们是一家个個性化银行，以您的母语提供金融服务');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('withLeeBank', 'Com os seguros Lee Bank, você protege o que conquistou e o que realmente importa. Deixe sua vida livre de preocupações e tenha mais tempo para você e para quem ama. ', 'With Lee Bank insurance, you protect what you''ve achieved and what really matters. Leave your life free of worries and have more time for you and the ones you love. ', '使用 Lee Bank 保险，您可以保护您所取得的成就和真正重要的事情。 让您的生活无忧无虑，并有更多时间陪伴您和您所爱的人');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('withOurExchange', 'Com o nosso serviço de câmbio é possível fazer remessas para fora do país, de forma rápida e segura. Se você precisar enviar dinheiro para amigos e familiares no exterior, conte conosco.', 'With our exchange service it is possible to make remittances abroad, quickly and safely. If you need to send money to friends and family abroad, count on us.', '通过我们的跨境汇款服务，可以快速安全地向国外汇款。如果您需要汇款给国外的朋友和家人，我们随时为您服务');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('yourDoubts', 'Tire suas dúvidas conosco.', 'Take your doubts with us.', '向我们提出您的疑问');
INSERT INTO dictionary (dictionaryid, pt, en, zh) VALUES ('ZH', '中文', '中文', '中文');

UPDATE dictionary SET pt = 'Oferecemos serviços também para pessoas jurídicas, tudo de forma transparente e sem surpresas no final. Quer saber mais? Clique no botão abaixo de acordo com seu o seu perfil:' WHERE dictionaryid = 'weAlsoOffer';

ALTER TABLE dictionary ADD COLUMN website CHAR(20) NOT NULL DEFAULT 'LEE-MARKETING';
ALTER TABLE menu ADD COLUMN website CHAR(20) NOT NULL DEFAULT 'LEE-MARKETING';

INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiGuiding', 'Guiando você', 'Guiding you', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiFuture', 'para o seu futuro', 'for your future', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiInspire', 'Viemos para inspirar as pessoas a irem mais longe, alcançarem seus sonhos, através de uma parceria de confiança que cresce a cada dia.', 'We have come to inspire people to go further, to achieve their dreams, through a partnership of trust that grows every day.', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiExhange', 'VIXI Exchange', 'VIXI Exchange', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiSynonym', 'Somos o sinônimo de competência, confiança e acessibilidade.', 'We are synonymous with competence, reliability, and accessibility.', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiClient', 'Queremos que nossos clientes tenham a sensação exata de que podem contar conosco e que nosso produto atenda suas expectaivas e necessidades.', 'We want our customers to have the exact feeling that they can count on us and that our product meets their expectations and needs.', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiOtc', 'OTC', 'OTC', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiDesk', 'A mesa de OTC da VIXI tem uma oferta de liquidez que garante ao cliente institucional a quantia desejada de Bitcoin, Ethereum, Decred, Stablecoins e outros ativos digitais.', 'VIXI''s OTC desk has a liquidity offering that guarantees institutional customers the desired amount of Bitcoin, Ethereum, Decred, Stablecoins and other digital assets.', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiProblems', 'Principais problemas resolvidos pela mesa de OTC da VIXI', 'Main problems solved by VIXI''s OTC desk', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiSlippage', 'Slippage', 'Slippage', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiDIfference', 'A diferença de tempo entre a hora do pedido e sua liquidação incorre muitas vezes em uma diferença do preço inicial devido ao tamanho da ordem.', 'The time difference between the time of the order and its settlement often incurs a difference in the initial price due to the size of the order.', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiLimits', 'Limites de negociação', 'Trading Limits', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiExchange', ' É comum que as grandes exchanges imponham limites de trading e negociação diários para manter a sua liquidez. Para clientes que operam com alto volume essa prática é inadequada.', 'It is common for large exchanges to impose daily trading and trading limits to maintain their liquidity. For high-volume clients this practice is inappropriate.', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiKnow', 'Saiba mais', 'Learn More', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiCompliance', 'Compliance', 'Compliance', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiSecurity', 'Segurança', 'Security', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiRelation', 'Prezamos por uma relação de confiança e transparência com nossos clientes. Por conta disso, a segurança dos dados e a privacidade dos nossos usuários é de extrema importância para nós.', 'We value a relationship of trust and transparency with our customers. Because of this, the data security and privacy of our users is of utmost importance to us.', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiPolicy', 'Nossa política de Compliance segue todas as normas da LGPD, além de oferecer sigilo absoluto sobre você e suas moedas. Também contamos com uma equipe de segurança digital altamente capacitada.', 'Our Compliance policy follows all LGPD standards, and offers absolute confidentiality about you and your coins. We also have a highly trained digital security team.', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiSign', 'Cadastre-se', 'Register', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiFill', 'Peencha os campos abaixo para', 'Fill in the fields below to', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiSolicitation', 'a solicitação do cadastro', 'the registration request', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiSolicitationButton', 'Solicitar Cadastro', 'Request Registration', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiName', 'Nome Completo', 'Full Name', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiEmail', 'E-mail', 'E-mail', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiTelephone', 'Telefone', 'Phone', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiCpf', 'CPF', 'CPF', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiCnpj', 'CNPJ', 'CNPJ', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiRefference', 'OTC ou over-the-counter, faz referência à época em que os ativos eram negociados em balcões das corretoras. O processo oferece menos burocracia e permite negociações mais diretas entre compradores e vendedores. possibilitando o investidor à encontrar mais oportunidades na hora de comprar moedas.', 'OTC, or over-the-counter, refers to the time when assets were traded over the counter at brokerage houses. The process offers less bureaucracy and allows more direct negotiations between buyers and sellers, enabling the investor to find more opportunities when buying currencies.', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiNegociation', 'Para negociações de grande quantidade, a operação OTC fornece principalmente as seguintes vantagens', 'For large quantity trading, OTC trading mainly provides the following advantages', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiMoney', 'Poupança de dinheiro', 'Saving Money', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiPrivacy', 'Privacidade', 'Privacy', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiBigLimits', 'Grandes limites', 'Great limits', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiImportant', 'Uma das mais importantes, nas operações de balcão há uma concordância de um preço que é benéfico para ambas as partes e que não precisa corresponder ao preço de mercado. Isso gera um cenário WIN-WIN para os envolvidos.', 'One of the most important, in OTC transactions there is an agreement on a price that is beneficial to both parties and that does not need to correspond to the market price. This creates a WIN-WIN scenario for those involved.', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiMarket', 'O mercado não verá variações, ocultando suas intenções de entrada ou saída. Além disso, com um intermediário confiável entre as contrapartes, eles não precisam revelar suas identidades, sendo o único que conhece os dois lados.', 'The market will not see variations, concealing their intentions to enter or exit. Moreover, with a trusted intermediary between the counterparties, they do not need to reveal their identities, being the only one who knows both sides.', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiUnbound', 'Não está vinculada à participação em uma troca sob regras fixas. Isso garante aos negociantes a capacidade de negociar valores mobiliários de forma mais ampla e sem os baixos limites das plataformas tradicionais.', 'It is not tied to participation on an exchange under fixed rules. This guarantees traders the ability to trade securities more broadly and without the low limits of traditional platforms.', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiHomepage', 'Voltar à Homepage', 'Back to Homepage', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiTel', 'Tel', 'Phone', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiAddress', 'Endereço da Empresa', 'Company Address', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiPrivacyPolice', 'Política de Privacidade', 'Privacy Policy', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiTerms', 'Termos de uso', 'Terms of Use', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiHelp', 'Central de Ajuda', 'Help Center', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiAllRights', '© Razão Social da VIXI, 2022. Todos os direitos reservados', '© VIXI Corporate Name, 2022. All rights reserved', '??', 'VIXI'); 

UPDATE dictionary SET pt = '© Lee Bank Instituicao de Pagamento LTDA, 2022. Todos os direitos reservados', en = '© Lee Bank Payment Institution LTDA, 2022. All rights reserved' WHERE dictionaryid = 'righsReserved'; 

INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiMenuWho', 'Quem Somos', 'Who We Are', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiMenuArticle', 'Artigo', 'Article', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiMenuSafety', 'Compliance Segurança', 'Compliance Security', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiManagement', 'Política para Gestão de Risco', 'Policy for Risk Management', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiMenuPrevention', 'Política de Prevenção à Lavagem de Dinheiro e Combate ao Terrorismo', 'Anti-Money Laundering and Combating Terrorism Policy', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiMenuInformation', 'Política de Segurança da Informação e Cibernética', 'Information Security and Cybernetics Policy', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiMenuPolicyCompliance', 'Política de Compliance', 'Compliance Policy', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiMenuProcedures', 'Procedimento', 'Procedures', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiMenuKyt', 'KYT - Know Your Transaction', 'KYT - Know Your Transaction', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiMenuKyc', 'KYC - Know Your Customer', 'KYC - Know Your Customer', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiMenuKyp', 'KYP - Know Your Partner', 'KYP - Know Your Partner', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiMenuEnglish', 'English', 'English', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiMenuPortugues', 'Português', 'Português', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiMenu中文', '中文', '中文', '??', 'VIXI'); 
INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('vixiMenusign', 'Cadastre-se', 'Sign Up', '??', 'VIXI'); 

UPDATE dictionary SET zh = '指导你' WHERE dictionaryid = 'vixiGuiding';
UPDATE dictionary SET zh = '为了你的未来' WHERE dictionaryid = 'vixiFuture';
UPDATE dictionary SET zh = '通过每天增长的信任伙伴关系, 我们来激励人们走得更远，实现人民的梦想。' WHERE dictionaryid = 'vixiInspire';
UPDATE dictionary SET zh = 'VIXI Exchange' WHERE dictionaryid = 'vixiExhange';
UPDATE dictionary SET zh = '我们是能力、信任和可及性的代名词。' WHERE dictionaryid = 'vixiSynonym';
UPDATE dictionary SET zh = '我们希望客户确切地感受到可以信赖我们，并且我们的产品能够满足他们的期望和需求。' WHERE dictionaryid = 'vixiClient';
UPDATE dictionary SET zh = 'OTC (场外交易市场)' WHERE dictionaryid = 'vixiOtc';
UPDATE dictionary SET zh = 'VIXI 的 OTC 柜台, 提供流动性产品，保证机构客户获得所需数量的比特币、以太坊、Decred、稳定币和其他数字资产。' WHERE dictionaryid = 'vixiDesk';
UPDATE dictionary SET zh = 'VIXI 的 OTC 柜台, 解决的主要问题：' WHERE dictionaryid = 'vixiProblems';
UPDATE dictionary SET zh = '滑点' WHERE dictionaryid = 'vixiSlippage';
UPDATE dictionary SET zh = '由于订单的大小，订单的时间与其结算之间的时间差通常会导致与初始价格的差异。' WHERE dictionaryid = 'vixiDIfference';
UPDATE dictionary SET zh = '交易限制' WHERE dictionaryid = 'vixiLimits';
UPDATE dictionary SET zh = '主要交易所通常会施加每日交易和交易限制以维持其流动性。 对于大批量客户，这种做法是不合适的。' WHERE dictionaryid = 'vixiExchange';
UPDATE dictionary SET zh = '查看更多' WHERE dictionaryid = 'vixiKnow';
UPDATE dictionary SET zh = '合规性' WHERE dictionaryid = 'vixiCompliance';
UPDATE dictionary SET zh = '安全' WHERE dictionaryid = 'vixiSecurity';
UPDATE dictionary SET zh = '我们珍视与客户的信任和透明关系。 因此，数据安全和用户的隐私对我们来说至关重要。' WHERE dictionaryid = 'vixiRelation';
UPDATE dictionary SET zh = '我们的合规政策遵循 LGPD 的所有规则，并为您和您的硬币提供绝对保密。 我们还拥有一支训练有素的数字安全团队。' WHERE dictionaryid = 'vixiPolicy';
UPDATE dictionary SET zh = '注册' WHERE dictionaryid = 'vixiSign';
UPDATE dictionary SET zh = '填写以下字段以' WHERE dictionaryid = 'vixiFill';
UPDATE dictionary SET zh = '请求注册' WHERE dictionaryid = 'vixiSolicitation';
UPDATE dictionary SET zh = '注册请求' WHERE dictionaryid = 'vixiSolicitationButton';
UPDATE dictionary SET zh = '姓名' WHERE dictionaryid = 'vixiName';
UPDATE dictionary SET zh = '电子邮件' WHERE dictionaryid = 'vixiEmail';
UPDATE dictionary SET zh = '电话' WHERE dictionaryid = 'vixiTelephone';
UPDATE dictionary SET zh = '个人税号' WHERE dictionaryid = 'vixiCpf';
UPDATE dictionary SET zh = '法人税号' WHERE dictionaryid = 'vixiCnpj';
UPDATE dictionary SET zh = 'OTC 或 over-the-counter，是指资产在券商柜台交易的时间。 该过程减少了官僚主义，并允许买家和卖家之间进行更直接的谈判。 让投资者在购买货币时发现更多机会。' WHERE dictionaryid = 'vixiRefference';
UPDATE dictionary SET zh = '对于大额交易，OTC 操作主要提供以下优势' WHERE dictionaryid = 'vixiNegociation';
UPDATE dictionary SET zh = '存钱' WHERE dictionaryid = 'vixiMoney';
UPDATE dictionary SET zh = '隐私' WHERE dictionaryid = 'vixiPrivacy';
UPDATE dictionary SET zh = '大限制' WHERE dictionaryid = 'vixiBigLimits';
UPDATE dictionary SET zh = '其中最重要的一点是，在场外交易中，有一个对双方都有利且不必与市场价格相对应的价格协议。 这为相关人员生成了双赢方案。' WHERE dictionaryid = 'vixiImportant';
UPDATE dictionary SET zh = '市场不会看到变化，隐藏您的进入或退出意图。 此外，由于交易对手之间有一个值得信赖的中介，他们不需要透露自己的身份，是唯一了解双方的人。' WHERE dictionaryid = 'vixiMarket';
UPDATE dictionary SET zh = '它与根据固定规则参与交易所无关。 这保证了交易者能够更广泛地交易证券，而不受传统平台的限制。' WHERE dictionaryid = 'vixiUnbound';
UPDATE dictionary SET zh = '返回首页' WHERE dictionaryid = 'vixiHomepage';

INSERT INTO menu (menuid, sequence, text, header, link, fathermenuid, website) VALUES(20, 10, 'vixiMenuWho', null, '#', null, 'VIXI');
INSERT INTO menu (menuid, sequence, text, header, link, fathermenuid, website) VALUES(21, 20, 'vixiOtc', null, 'index.html#otc', null, 'VIXI');
INSERT INTO menu (menuid, sequence, text, header, link, fathermenuid, website) VALUES(22, 30, 'vixiMenuArticle', null, '#', null, 'VIXI');
INSERT INTO menu (menuid, sequence, text, header, link, fathermenuid, website) VALUES(23, 40, 'vixiMenuSafety', null, '#', null, 'VIXI');
INSERT INTO menu (menuid, sequence, text, header, link, fathermenuid, website) VALUES(24, 10, 'vixiCompliance', null, '#', 23, 'VIXI');
INSERT INTO menu (menuid, sequence, text, header, link, fathermenuid, website) VALUES(25, 20, 'vixiMenuManagement', null, '#', 23, 'VIXI');
INSERT INTO menu (menuid, sequence, text, header, link, fathermenuid, website) VALUES(26, 30, 'vixiMenuPrevention', null, '#', 23, 'VIXI');
INSERT INTO menu (menuid, sequence, text, header, link, fathermenuid, website) VALUES(27, 40, 'vixiMenuInformation', null, '#', 23, 'VIXI');
INSERT INTO menu (menuid, sequence, text, header, link, fathermenuid, website) VALUES(28, 50, 'vixiMenuPolicyCompliance', null, '#', 23, 'VIXI');
INSERT INTO menu (menuid, sequence, text, header, link, fathermenuid, website) VALUES(29, 60, 'vixiMenuProcedures', null, '#', 23, 'VIXI');
INSERT INTO menu (menuid, sequence, text, header, link, fathermenuid, website) VALUES(30, 70, 'vixiMenuKyt', null, '#', 23, 'VIXI');
INSERT INTO menu (menuid, sequence, text, header, link, fathermenuid, website) VALUES(31, 80, 'vixiMenuKyc', null, '#', 23, 'VIXI');
INSERT INTO menu (menuid, sequence, text, header, link, fathermenuid, website) VALUES(32, 90, 'vixiMenuKyp', null, '#', 23, 'VIXI');
INSERT INTO menu (menuid, sequence, text, header, link, fathermenuid, website) VALUES(33, 50, '_currentLanguage', null, '#', null, 'VIXI');
INSERT INTO menu (menuid, sequence, text, header, link, fathermenuid, website) VALUES(34, 10, 'EN', null, 'setLanguage', 33, 'VIXI');
INSERT INTO menu (menuid, sequence, text, header, link, fathermenuid, website) VALUES(35, 20, 'PT', null, 'setLanguage', 33, 'VIXI');
INSERT INTO menu (menuid, sequence, text, header, link, fathermenuid, website) VALUES(36, 30, 'ZH', null, 'setLanguage', 33, 'VIXI');
INSERT INTO menu (menuid, sequence, text, header, link, fathermenuid, website) VALUES(37, 60, 'vixiMenusign', null, '#', null, 'VIXI');

UPDATE dictionary SET pt = 'Fale Conosco.', en ='Contact us.', zh ='请联系我们。' WHERE dictionaryid = 'contactUs';
UPDATE dictionary SET pt = 'Soluções de cash-in e cash-out.', en ='Cash-in and cash-out solutions.', zh ='存款和取款解决方案。' WHERE dictionaryid = 'cashIn';
UPDATE dictionary SET pt = 'acha num clique.', en ='find in a click.', zh ='点击即可找到。' WHERE dictionaryid = 'findInAClick';
UPDATE dictionary SET pt = 'Acesse o nosso App para cadastrar-se.', en ='Access our APP to sign up.', zh ='进入我们的应用程序进行注册。' WHERE dictionaryid = 'acessOurAppToSignUp';
UPDATE dictionary SET pt = 'Certificação.', en ='Certification.', zh ='认证。' WHERE dictionaryid = 'certification';
UPDATE dictionary SET pt = 'Esquema de criptografia mais avançado.', en ='More advanced encryption scheme.', zh ='更高级的加密方案。' WHERE dictionaryid = 'encryption';
UPDATE dictionary SET pt = 'Quantidade ilimitado de caracteres da chave de segurança.', en ='Unlimited security key size.', zh ='安全密钥中的字符数不限。' WHERE dictionaryid = 'unlimitedSecurity';
UPDATE dictionary SET pt = 'NFC, carteira-eletrônica, além de EMV Chip&PIN, tarja magnética e contactless.', en ='NFC, e-wallet, plus EMV Chip&PIN, magnetic stripe and contactless.', zh ='NFC、电子钱包、EMV Chip&PIN、磁条和非接触式。' WHERE dictionaryid = 'paymentOptions';
UPDATE dictionary SET pt = 'Uso em ambientes fechados e ao ar livre.', en ='Use indoors and outdoors.', zh ='在室内和室外使用。' WHERE dictionaryid = 'batteryUse';
UPDATE dictionary SET pt = 'Leitura de cartões e rápido fluxo de transações.', en ='Card reading and fast transaction flow.', zh ='读卡和快速交易流程。' WHERE dictionaryid = 'transactionFlow';
UPDATE dictionary SET pt = 'Protege a privacidade de transação enquanto promove o acesso ao aplicativos de pagamento.', en ='Protects transaction privacy while promoting access to payment apps.', zh ='保护交易隐私，同时促进对支付应用程序的访问。' WHERE dictionaryid = 'protectTransation';
UPDATE dictionary SET pt = 'Política de concepção de produtos ecológica-proativa.', en ='Eco-Proactive Product Design Policy.', zh ='环保产品设计政策。' WHERE dictionaryid = 'designPolicy';
UPDATE dictionary SET pt = 'Permite pagamentos com sistema mais seguro.', zh ='允许使用更安全的系统进行支付。' WHERE dictionaryid = 'allowsPayments';
UPDATE dictionary SET pt = 'CI PTS 5.x, EMV L1/L2/CL1.', en ='CI PTS 5.x, EMV L1/L2/CL1.', zh ='CI PTS 5.x，EMV L1/L2/CL1。' WHERE dictionaryid = 'certifications';
UPDATE dictionary SET pt = 'PayPass, PayWave, Expresspay.', en ='PayPass, PayWave, Expresspay.', zh ='PayPass, PayWave, Expresspay。' WHERE dictionaryid = 'payCertification';
UPDATE dictionary SET pt = 'Plataforma de aplicativo mobile mais utilizada do mercado.', zh ='市场上最常用的移动应用平台。' WHERE dictionaryid = 'makingApplications';
UPDATE dictionary SET pt = '4G, Wi-Fi e Bluetooth.', en ='4G, Wi-Fi e Bluetooth.', zh ='4G、WiFi 和蓝牙。' WHERE dictionaryid = 'conections';


UPDATE dictionary SET pt = 'Cadastre-se' WHERE dictionaryid = 'signUp';
UPDATE dictionary SET pt = 'O primeiro banco personalizado para' WHERE dictionaryid = 'theFirstBank';
UPDATE dictionary SET pt = 'Processos de pagamento simples e móvel' WHERE dictionaryid = 'paymentProcess';
UPDATE dictionary SET pt = 'Ferramentas para gestão de negócios' WHERE dictionaryid = 'tools';
UPDATE dictionary SET pt = 'Sistema de scanner' WHERE dictionaryid = 'scanner';
UPDATE dictionary SET pt = 'Segurança absoluta' WHERE dictionaryid = 'absoluteSecurity';
UPDATE dictionary SET pt = 'Todas as opções de pagamento' WHERE dictionaryid = 'payment';
UPDATE dictionary SET pt = 'Experiência simples e segura' WHERE dictionaryid = 'experience';
UPDATE dictionary SET pt = 'Melhores mecanismos de segurança' WHERE dictionaryid = 'secutiryMechanics';


UPDATE dictionary SET pt = '© Lee Bank Instituição de Pagamento LTDA, 2022. Todos os direitos reservados' WHERE dictionaryid = 'righsReserved';

UPDATE dictionary SET pt = 'encontre num clique.' WHERE dictionaryid = 'findInAClick';

UPDATE dictionary SET pt = 'Políticas de Privacidade', en ='Privacy Policies' WHERE dictionaryid = 'policies';

INSERT INTO dictionary (dictionaryid, pt, en, zh, website) VALUES ('backHome', 'Voltar para Homepage', 'Back to Homepage', '??', 'LEE-MARKETING'); 

UPDATE dictionary SET pt ='Tel', en ='Phone', zh ='电话' WHERE dictionaryid = 'vixiTel';
UPDATE dictionary SET pt ='Endereço da Empresa', en ='Company Address', zh ='公司地址' WHERE dictionaryid = 'vixiAddress';
UPDATE dictionary SET pt ='Política de Privacidade', en ='Privacy Policy', zh ='隐私权政策' WHERE dictionaryid = 'vixiPrivacyPolice';
UPDATE dictionary SET pt ='Termos de uso', en ='Terms of Use', zh ='使用条款' WHERE dictionaryid = 'vixiTerms';
UPDATE dictionary SET pt ='Central de Ajuda', en ='Help Center', zh ='帮助中心' WHERE dictionaryid = 'vixiHelp';
UPDATE dictionary SET pt ='© Razão Social da VIXI, 2022. Todos os direitos reservados', en ='© VIXI Corporate Name, 2022. All rights reserved', zh ='© VIXI 公司名称，2022。版权所有' WHERE dictionaryid = 'vixiAllRights';


