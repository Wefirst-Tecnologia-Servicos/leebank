CREATE TABLE MENU (
  MENUID       INTEGER      NOT NULL PRIMARY KEY,
  SEQUENCE     INTEGER      NOT NULL,
  TEXT         VARCHAR(150) NOT NULL,
  HEADER       VARCHAR(150),
  LINK         VARCHAR(150) NOT NULL,
  FATHERMENUID INTEGER,
  FOREIGN KEY (FATHERMENUID)
    REFERENCES MENU(MENUID)
    ON DELETE CASCADE
);
INSERT INTO MENU (MENUID, SEQUENCE, TEXT, HEADER, LINK, FATHERMENUID) VALUES(1, 10, 'products', NULL, '#', NULL);
INSERT INTO MENU (MENUID, SEQUENCE, TEXT, HEADER, LINK, FATHERMENUID) VALUES(2, 10, 'exchange', NULL, 'index.html#exchange', 1);
INSERT INTO MENU (MENUID, SEQUENCE, TEXT, HEADER, LINK, FATHERMENUID) VALUES(3, 20, 'insurances', NULL, 'index.html#insurance', 1);
INSERT INTO MENU (MENUID, SEQUENCE, TEXT, HEADER, LINK, FATHERMENUID) VALUES(4, 30, 'investments', NULL, 'index.html#investments', 1);
INSERT INTO MENU (MENUID, SEQUENCE, TEXT, HEADER, LINK, FATHERMENUID) VALUES(5, 40, 'leePayCardMachine', NULL, 'index.html#cardMachine', 1);
INSERT INTO MENU (MENUID, SEQUENCE, TEXT, HEADER, LINK, FATHERMENUID) VALUES(6, 50, 'paymentGateway', NULL, 'index.html#paymentGateway', 1);
INSERT INTO MENU (MENUID, SEQUENCE, TEXT, HEADER, LINK, FATHERMENUID) VALUES(7, 60, 'giftCard', NULL, 'index.html#giftCard', 1);
INSERT INTO MENU (MENUID, SEQUENCE, TEXT, HEADER, LINK, FATHERMENUID) VALUES(8, 20, 'services', NULL, '#', NULL);
INSERT INTO MENU (MENUID, SEQUENCE, TEXT, HEADER, LINK, FATHERMENUID) VALUES(9, 10, 'currentAccount', NULL, '#', 8);
INSERT INTO MENU (MENUID, SEQUENCE, TEXT, HEADER, LINK, FATHERMENUID) VALUES(10, 20, 'creditCard', NULL, '#', 8);
INSERT INTO MENU (MENUID, SEQUENCE, TEXT, HEADER, LINK, FATHERMENUID) VALUES(11, 30, 'taxes', NULL, '#', 8);
INSERT INTO MENU (MENUID, SEQUENCE, TEXT, HEADER, LINK, FATHERMENUID) VALUES(12, 30, 'help', NULL, '#', NULL);
INSERT INTO MENU (MENUID, SEQUENCE, TEXT, HEADER, LINK, FATHERMENUID) VALUES(13, 40, '_currentLanguage', NULL, '#', NULL);
INSERT INTO MENU (MENUID, SEQUENCE, TEXT, HEADER, LINK, FATHERMENUID) VALUES(14, 10, 'ZH', NULL, 'setLanguage', 13);
INSERT INTO MENU (MENUID, SEQUENCE, TEXT, HEADER, LINK, FATHERMENUID) VALUES(15, 20, 'EN', NULL, 'setLanguage', 13);
INSERT INTO MENU (MENUID, SEQUENCE, TEXT, HEADER, LINK, FATHERMENUID) VALUES(16, 30, 'PT', NULL, 'setLanguage', 13);
INSERT INTO MENU (MENUID, SEQUENCE, TEXT, HEADER, LINK, FATHERMENUID) VALUES(17, 50, 'login', NULL, '#', NULL);
INSERT INTO MENU (MENUID, SEQUENCE, TEXT, HEADER, LINK, FATHERMENUID) VALUES(18, 60, 'signUp', NULL, '#', NULL);
INSERT INTO MENU (MENUID, SEQUENCE, TEXT, HEADER, LINK, FATHERMENUID) VALUES(19, 10, 'acessOurAppToSignUp', 'signUpForLeeBank', '#', 18);

CREATE TABLE DICTIONARY (
  DICTIONARYID CHAR(150)     NOT NULL PRIMARY KEY,
  PT           VARCHAR(5000) NOT NULL,
  EN           VARCHAR(5000) NOT NULL,
  ZH           VARCHAR(5000) NOT NULL
);

INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('aboutUs', 'Sobre nós', 'About Us', '关于我们');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('absoluteSecurity', 'Segurança Absoluta', 'Absolute Security', '绝对安全');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('acceptsPayments', 'Aceita pagamentos de qualquer lugar e qualquer tipo de cartão (débito, chip, e PIN).', 'Accepts payments from anywhere and any type of card (debit, chip, and PIN).', '接受来自任何地方和任何类型的卡（借记卡、芯片和 PIN）的付款');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('accidentInsurance', 'O seguro de acidentes pessoais oferece proteção em caso de imprevistos e deixa você e sua família mais tranquilos.', 'Personal accident insurance offers protection in the event of unforeseen events and makes you and your family more relaxed.', '人身意外保险可在发生意外事件时提供保障，让您和您的家人更加放松');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('accidents', 'Acidentes Pessoais', 'Personal accidents', '人身意外保险');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('acessOurAppToSignUp', 'Acesse o nosso App para cadastrar-se', 'Access our APP to sign up', '进入我们的应用程序进行注册');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('address', 'Endereço da Lee Bank - Escritório', 'Lee Bank Address - Office', 'Lee Bank 地址 - 办公室');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('agility', 'agilidade', 'agility', '敏捷');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('allMachines', 'Todas as maquininhas são conectadas ao aplicativo Lee Bank e disponibilizam atendimento em chinês, inglês e português.', 'All machines are connected to the Lee Bank app and provide service in Chinese, English and Portuguese.', '所有刷卡机都连接到Lee Bank应用程序，并提供中文、中文和葡萄牙语服务');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('allowsPayments', 'Permite pagamentos com sistema mais seguro', 'Allows payments with a more secure system.', '允许使用更安全的系统进行支付');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('allYouNeed', 'Tudo o que você precisa, ', 'All you need,', '您需要的一切，');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('and', ' e ', ' and ', '和');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('android', 'Sistema baseado em Android', 'Android based system', '基于安卓 (Android)的系统');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('anticipate', 'Antecipe o recebebimento do seu dinheiro e receba-o em até 1 dia útil na sua conta.', 'Anticipate the receipt of your money and receive it within 1 business day in your account.', '预计收到您的款项，并在 1 天内 (工作日) 将款项存入您的账户');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('anyQuestion', 'Alguma dúvida?', 'Any questions?', '任何问题？');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('appStore', 'Criação de sua própria loja de aplicativos de maneira fácil e intuitiva, para melhor atender os seus clientes.', 'Creating your own app store in an easy and intuitive way, to better serve your customers.', '以简单直观的方式创建您自己的应用商店，以更好地为您的客户服务');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('awayFromHome', 'Se precisar depositar dinheiro na sua conta Lee Bank, basta ir à uma agência dos bancos parceiros mais próxima para fazer o depósito.', 'If you need to deposit money into your Lee Bank account, just go to the nearest partner bank branch to make the deposit.', '如果您需要将钱存入您的 Lee Bank 账户，只需前往离您最近的合作银行分行进行存款');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('battery', 'Bateria com grande autonomia', 'Battery with great autonomy', '具有极大自主权的电池');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('batteryUse', 'Uso em ambientes fechados e ao ar livre', 'Use indoors and outdoors', '在室内和室外使用');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('benefits', 'Benefícios aos tópicos como: Compras online, gestão de empresas e relatórios detalhados.', 'Benefits to topics such as: Online shopping, business management and detailed reports.', '对以下主题的好处：在线购物、业务管理和详细报告');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('callMe', 'Me Chame de Simplicidade', 'Call me Simplicity', '易用性 ');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('cash', 'Cash In & Cash Out', 'Cash In & Cash Out', '存款 和 取款');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('cashIn', 'Soluções de cash-in e cash-out', 'Cash-in and cash-out solutions', '存款和取款解决方案。');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('certificationPci', 'Certificação PCI-PTS 4.x', 'PCI-PTS 4.x certification', 'PCI-PTS 4.x 认证');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('certification', 'Certificação', 'Certification', '认证');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('certifications', 'CI PTS 5.x, EMV L1/L2/CL1', 'CI PTS 5.x, EMV L1/L2/CL1', 'CI PTS 5.x，EMV L1/L2/CL1');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('clickToLearn', 'Clique para saber mais sobre as vantagens da Lee Pay:', 'Click to learn more about Lee Pay benefits:', '点击”查看更多“了解有关 Lee Pay 福利的更多信息：');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('companyEmail', 'E-mail da empresa', 'company email', '公司邮箱');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('completeBank', 'Serviço Completo do Banco', 'Complete Bank Service', '完整的银行服务');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('completeService', 'Serviço Completo, Confiança Total', 'Complete Service, Total Trust', '全方位服务，完全信任');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('conections', '4G, Wi-Fi e Bluetooth', '4G, Wi-Fi e Bluetooth', '4G、WiFi 和蓝牙 ');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('contact', 'Entre em Contato', 'Contact', '联系我们');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('contactUs', 'Fale Conosco', 'Contact us', '请联系我们');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('contacUsBussiness', 'Entre em contato conosco para buscarmos a melhor solução para o seu negócio.', 'Contact us to find the best solution for your business.', '联系我们，我们为您寻找最佳解决方案');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('creditCard', 'Cartão de Crédito', 'Credit Card', '信用卡');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('currentAccount', 'Conta-Corrente', 'Current Account', '支票账户');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('debts', 'Sobre as Dívidas', 'About Debts', '关于债务');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('debtsInsurance', 'O seguro garante em caso de morte, invalidez ou perda de renda involuntária do segurado o pagamento do saldo devedor de dívida contraída em financiamento.', 'The insurance guarantees in case of death, disability or involuntary loss of income of the insured, the payment of the outstanding balance of debt contracted in financing.', '保险保证在被保险人死亡、残疾或非自愿丧失收入的情况下，支付融资合同中未偿还的债务余额');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('design', 'Sustentabilidade X Design', 'Sustainability X Design', '可持续性 X 设计');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('designPolicy', 'Política de concepção de produtos ecológica-proativa', 'Eco-Proactive Product Design Policy', '环保产品设计政策');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('digital', 'Digital', 'Digital', '数码');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('discover', 'Conheça as nossas máquininhas abaixo!', 'Discover our machines below!', '查看下面我们的刷卡机!');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('doBussines', 'Faça negócios com empresas no exterior sem se preocupar em como realizar ou receber pagamentos.', 'Do business with companies abroad without worrying about how to make or receive payments.', '与国外公司开展业务，无需担心如何付款或收款');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('doubts', 'Dúvidas', 'Doubts', '疑问');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('efficient', 'Eficiente', 'Efficient', '高效');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('email', 'E-mail', 'E-mail', '电子邮件：');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('EN', 'English', 'English', 'English');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('encryption', 'Esquema de criptografia mais avançado', 'More advanced encryption scheme', '更高级的加密方案');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('essential', 'Lee Pay Essencial', 'Lee Pay Essential', 'Lee Pay Essential');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('exchange', 'Câmbio', 'Exchange', '跨境汇款');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('experience', 'Experiência Simples e Segura', 'Simple and Secure Experience', '简单安全的体验');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('findInAClick', 'acha num clique', 'find in a click', '点击即可找到');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('fullConnectivity', 'Conectividade total', 'full connectivity', '完全连接');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('gatewayFrom', 'Gateway de', 'Payment', '支付闸道器');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('giftCard', 'Gift Card', 'Gift Card', '礼品卡');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('greatestPracticality', 'Contamos com a maior praticidade quando se fala em cash-in e cash-out. No Lee Bank você consegue sacar dinheiro em qualquer caixa eletrônico 24h.', 'We have the greatest practicality when it comes to cash-in and cash-out. At Lee Bank you can withdraw money from any ATM 24 hours a day.', '在存款和取款方面，我们具有最大的实用性。 在 Lee Bank，您可以 24 小时从任何自动取款机 (ATM) 取款');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('helloWeAreLeeBank', 'Olá, nós somos o Lee Bank', 'Hello, we are Lee Bank', '您好，我们是Lee Bank');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('help', 'Ajuda', 'Help', '帮助');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('helpCenter', 'Central de Ajuda', 'Help center', '帮助中心');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('idealSolution', 'Nós temos a solução ideal para a sua loja online. Deixe os seus clientes mais seguros na hora de fazer as compras. Comece agora mesmo a utilizar nosso gateway de pagamento no seu e-commerce e potencialize suas vendas. Gerencie-as através da nossa plataforma que oferece dados completos e taxas mais baratas.', 'We have the ideal solution for your online store. Make your customers safer when shopping. Start now using our payment gateway in your e-commerce and boost your sales. Manage them through our platform that offers complete data and cheaper rates.', '我们为您的网上商店提供理想的解决方案。让您的客户在购物时更安全。立即开始在您的电商中使用我们的支付闸道器并提高您的销售额。通过我们的平台管理您的业务，该平台提供完整的数据和更便宜的价格');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('insurance', 'Seguro', 'Insurance', '保险');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('insurances', 'Seguros', 'Insurances', '保险');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('intuitive', 'Intuitivo', 'Intuitive', '直观');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('investment', 'Investimento', 'Investment', '投资');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('investments', 'Investimentos', 'Investments', '投资');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('investSafely', 'Invista com segurança. Nós temos diferentes opções de investimentos para você aplicar o seu dinheiro onde preferir. Acompanhe os rendimentos de perto e se informe sobre o mercado financeiro.', 'Invest safely. We have different investment options for you to apply your money wherever you prefer. Monitor income closely and learn about the financial market.', '安全投資。 我們為您提供不同的投資選擇，讓您可以將資金用於您喜歡的任何地方。密切監控收入並了解金融市場');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('knowMore', 'Saiba mais', 'Know more', '查看更多');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('leeBankCash', 'Com o cash-in do Lee Bank, você consegue pagar boletos, recarregar o seu celular e fazer depósito em conta do Lee Bank no caixa eletrônico ou lotérica mais próxima de você. Receba o valor depositado em até 1 dia útil. Veja as agências parceiras.', 'With Lee Bank cash-in, you can pay slips, recharge your cell phone and make deposits into your Lee Bank account at the nearest ATM or lottery shop. Receive the deposited amount within 1 business day. See partner agencies.', '使用 Lee Bank 存款，您可以在最近的自动取款机 或彩票店支付boleto、为手机充值以及将存款存入您的 Lee Bank 账户。 在  1 天内 (工作日) 收到存款金额。 查看合作银行机构');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('leeBankMachine', 'Com a maquininha do Lee Bank, você tem soluções do início ao fim das suas vendas e, o melhor, na língua que você escolher. Tenha acesso aos relatórios de entrada e saída, extratos e saldos em três idiomas diferentes.', 'With the Lee Bank machine, you have solutions from the beginning to the end of your sales and, the best, in the language you choose. Get access to incoming and outgoing reports, statements and balances in three different languages.', '使用 Lee Bank  刷卡机，您可以从销售的开始到结束获得解决方案，而且最好的解决方案是您选择的语言。 访问三种不同语言的出入报告、报表和余额');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('leeBankWasBorn', 'O Lee Bank nasceu com o intuito de oferecer serviços bancários com  ', 'Lee Bank was born with the aim of offering banking services with ', 'Lee Bank 成立是为了居住在巴西的 30万多名华人提供');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('leePay', 'Lee Pay', 'Lee Pay', 'Lee Pay');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('leePayCardMachine', 'Maquininha de Cartão Lee Pay', 'Lee Pay Card Machine', 'Lee Pay  刷卡机');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('legalPerson', 'Pessoa Jurídica', 'Legal person', '法人');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('login', 'Login', 'Login', '登录');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('logInto', 'Entre no seu app do Lee Bank e adquira o seu gift card!', 'Log into your Lee Bank app and get your gift card!', '登录您的 Lee Bank 应用程序并获取您的礼品卡！');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('makeYourMoney', 'Faça o seu dinheiro render com o Lee Bank aqui no Brasil, como você faria na China.', 'Make your money work with Lee Bank here in Brazil, as you would in China.', '就像您在中国一样 ， 与巴西的 Lee Bank 让你的钱发挥作用');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('makingApplications', 'Plataforma de aplicativo mobile mais utilizada do mercado ', 'Ease of making applications available on the most used mobile platform on the market.', '市场上最常用的移动应用平台');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('marketplace', 'Marketplace para o seu negócio', 'Marketplace for your business', '适合您业务的市场');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('monitoring', 'Monitoramento, gestão e atualização, permite mais produtividade e agilidade no uso dos terminais.', 'Monitoring, management and updating, allows for more productivity and agility in the use of terminals.', '监控、管理和更新，可以提高终端使用的生产力和灵活性');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('name', 'Nome', 'Name', '姓名');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('nativeLanguage', 'língua nativa.', 'native language.', '');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('operations', 'Operações por: WiFi, Bluetooth e 4G.', 'Operations by: WiFi, Bluetooth and 4G.', '操作方式：WiFi、蓝牙和 4G');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('order', 'Peça já a sua!', 'Order yours now!', '申請您的 Lee Pay LeePay刷卡机');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('ourCashOut', 'O nosso serviço de cash-out permite você sacar o seu dinheiro em conta Lee Bank nos caixas 24h.', 'Our cash-out service allows you to withdraw your money from your Lee Bank account at cashiers 24/7.', '我们的取款服务允许您在 24 小时自动取款机 (ATM) 从您的 Lee Bank 账户中取款您的钱');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('ourFuture', 'Nosso Futuro', 'Our Future', '我们的未来');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('ourHelpCenter', 'Visite nosso Central de Ajuda ou entre em contato conosco.', 'Visit our Help Center or contact us.', '访问我们的帮助中心或联系我们');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('ourInsurance', 'Nossos Seguros', 'Our Insurance', '我们的保险');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('payCertification', 'PayPass, PayWave, Expresspay', 'PayPass, PayWave, Expresspay', 'PayPass, PayWave, Expresspay');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('payment', 'Todas as Opções de Pagamento', 'All Payment Options', '所有付款方式');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('paymentGateway', 'Gateway de Pagamento', 'Payment Gateway', '支付闸道器');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('paymentsGateway', 'Pagamento', 'Gateway', '付款');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('paymentIndustry', 'Aderente a todas as certificações de segurança da indústria de pagamentos.', 'Adheres to all payment industry security certifications.', '遵守所有支付行业安全认证');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('paymentOptions', 'NFC, carteira-eletrônica, além de EMV Chip&PIN, tarja magnética e contactless', 'NFC, e-wallet, plus EMV Chip&PIN, magnetic stripe and contactless', 'NFC、电子钱包、EMV Chip&PIN、磁条和非接触式');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('paymentOptionsContacless', 'Cartão Chip, Contactless, Tarja magnética, QRCode.', 'Chip Card, Contactless, Magnetic Stripe, QRCode.', '芯片卡、非接触式、磁条、二维码');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('paymentProcess', 'Processos de Pagamento Simples e Móvel', 'Simple and Mobile Payment Processes', '简单和无线支付流程');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('physicalPerson', 'Pessoa Física', 'Physical person', '个人');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('pointYourCell', 'Aponte sua câmera do celular para o QR code ao lado ou baixe o app pelo Google Play / App Store e conheça uma nova experiência de banco digital', 'Point your cell phone camera at the QR code on the side or download the app from Google Play / App Store and discover a new digital banking experience', '将您的手机摄像头扫描二维码或从 Google Play / App Store 下载应用程序并体验新的数码银行');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('policies', 'Políticas de Provacidade', 'Provacity Policies', '隐私权政策');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('products', 'Produtos', 'Products', '产品');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('professionalService', 'Ideal para serviços profissionais, lojas e departamentos, restaurantes e serviços de atendimento rápido.', 'Ideal for professional services, stores and departments, restaurants and quick service.', '专业服务、商店和部门、餐厅和快速服务的理想选择');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('protectTransation', 'Protege a privacidade de transação enquanto promove o acesso ao aplicativos de pagamento', 'Protects transaction privacy while promoting access to payment apps', '保护交易隐私，同时促进对支付应用程序的访问');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('PT', 'Português', 'Português', 'Português');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('purse', 'Perda e Roubo/Bolsa Protegida', 'Loss and Theft/Protected Purse', '丢失和被盗/受保护的钱包');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('purseInsurance', 'Cobertura da sua bolsa, mochila ou pertences. Ele indeniza o valor para reposição dos itens que foram listados na contratação do seguro e que estavam guardados nelas.', 'Coverage for your purse, backpack or belongings. It indemnifies the replacement value of the items that were listed in the insurance contract and that were stored in them.', '为您的钱包、背包或随身物品提供保障。 赔偿保险合同中列出的物品的重置价值 ，以及物品里面存放的东西');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('reachingHorizons', 'Alcançando Novos Horizontes', 'Reaching New Horizons', '达到新的视野');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('realTime', 'Controle e gestão em tempo real', 'Real-time control and management', '实时控制和管理');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('remittances', 'Envie remessas para familiares e amigos no exterior com a melhor taxa de câmbio.', 'Send remittances to family and friends abroad at the best exchange rate.', '以最优惠的汇率向国外的家人和朋友汇款');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('report', 'Reportar Problemas e Reclamações', 'Report Problems and Complaints', '报告问题和投诉');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('requestIntegration', 'Solicite a integração com sua loja online e garanta as menores taxas, além da melhor experiência em pagamentos tanto para você, quanto para seu cliente. Acompanhe suas vendas através da nossa plataforma de gerenciamento.', 'Request integration with your online store and guarantee the lowest fees, in addition to the best payment experience for both you and your customer. Track your sales through our management platform.', '与您的网上商店融合并保证最低费用，此外还为您和您的客户提供最佳支付体验。通过我们的管理平台跟踪您的销售情况');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('residential', 'Residencial e DIH (Diárias Internação Hospitalar)', 'Residential and IHL (Hospital Admission Rates)', '住宿和医院每日津贴');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('residentialInsurance', 'A cobertura de diárias por internação hospitalar (DIH) é um serviço no qual se garante o pagamento de uma diária ao segurado, de acordo com o valor contratado.', 'The daily coverage for hospitalization (DIH) is a service that guarantees the payment of a daily rate to the insured, according to the contracted amount.', '住院每日保险 (DIH) 是一项保证根据合同金额向被保险人支付一日费用的服务');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('righsReserved', '© Razão Social da Lee Bank, 2022. Todos os direitos reservados', '© Lee Bank Corporate Name, 2022. All rights reserved', 'Copyright© Leebank, 2022. 版权所有');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('scanner', 'Sistema de Scanner', 'Scanner System', '扫描仪系统');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('security', 'segurança', 'security', '安全');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('securityAgility', 'Segurança e agilidade para seu negócio, no seu idioma, e sempre com as melhores taxas.  As máquinas LeePay foram pensadas para você que busca facilidade na hora de fechar suas vendas.', 'Security and agility for your business, in your language, and always with the best rates. LeePay machines were designed for you who seek ease when closing your sales.', '以您的语言为您的业务提供安全性和敏捷性，并始终以最优惠的价格。LeePay刷卡机是为那些在完成销售时寻求轻松的人设计的');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('secutiryMechanics', 'Melhores Mecanismos de Segurança', 'Best Security Mechanisms', '最佳安全机制');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('seeBelow', 'Consulte abaixo o seguro que mais se adequa às suas necessidades.', 'See below for the insurance that best suits your needs.', '請參閱下文，了解最適合您需求的保險');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('send', 'Enviar', 'Send', '发送');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('services', 'Serviços', 'Services', '服务');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('signUp', 'Cadastre-Se', 'Sign Up', '注册');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('signUpForLeeBank', 'Cadastre-se no Lee Bank', 'Sign Up For Lee Bank', '在Lee Bank注册');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('sleepSoundly', 'Durma com tranquilidade sabendo que sua família está segura conosco. Fazer um seguro é bem simples: basta entrar no campo “Seguros” do nosso app e escolher quais tipos você quer. Pronto! Simples, prático, fácil e na palma da sua mão.', 'Sleep soundly knowing your family is safe with us. Taking out insurance is very simple: just enter the “Insurance” field of our app and choose which types you want. Ready! Simple, practical, easy and in the palm of your hand.', '知道您的家人在我们这里是安全的，您可以安然入睡。 购买保险非常简单：只需进入我们应用程序的“保险”字段并选择您想要的类型。 准备好！ 简单、实用、轻松，尽在您的掌中');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('smart', 'Lee Pay Smart', 'Lee Pay Smart', 'Lee Pay Smart');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('startHere', 'Começa Aqui', 'Starts Here', '从这里开始');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('taxes', 'Impostos', 'Taxes', '税收');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('telephone', 'Telefone', 'Telephone', '电话');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('terms', 'Termos de Uso', 'Terms of use', '使用条款');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('theChineseCommunity', 'a comunidade chinesa no Brasil', 'the Chinese Community in Brazil', '巴西银行');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('theFirstBank', 'O Primeiro banco personalizado para', 'The First Bank Customized for', '第一家为华人设立的');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('theft', 'Roubo, Furto e Danos Materiais', 'Theft and Property Damage', '盗窃和财产损失');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('theftInsurance', 'Oferecemos a cobertura para roubo, furto e danos materiais.', 'We provide coverage for theft, theft and property damage.', '我们为抢劫、盗窃和物质损失提供保险');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('theService', 'O atendimento no Lee Bank é pensado para quem busca descomplicar esse processo, com serviço personalizado, de qualidade e com as melhores taxas do mercado. ', 'The service at Lee Bank is designed for those who seek to simplify this process, with personalized, quality service and the best rates on the market.', 'Lee Bank 的服务专为那些寻求简化流程的人而设计，提供个性化、优质的服务和市场上最优惠的价格');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('tools', 'Ferramentas para Gestão de Negócios', 'Business Management Tools', '业务管理工具');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('toTheMorThan', ' para os mais de 300 mil chineses que vivem no Brasil.', 'to the more than 300,000 Chinese living in Brazil.', '的银行服务');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('touchScreen', 'Touch screen, leitor de QR Codes e câmeras (promoções e trackings de inventários).', 'Touch screen, QR Code reader and cameras (promotions and inventory tracking).', '触摸屏、二维码阅读器和摄像头（促销和库存跟踪）');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('transactionVolume', 'Volume de transações contactless', 'Contactless transaction volume', '非接触式交易量');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('transaction', 'Faça a transação agora mesmo com a ferramenta ao lado, e o valor estará disponível em até um dia útil. ', 'Make the transaction right now with the tool on the side, and the amount will be available within one business day.', '立即使用旁边的工具进行交易，资金将在一个工作日内到账');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('transactionFlow', 'Leitura de cartões e rápido fluxo de transações', 'Card reading and fast transaction flow', '读卡和快速交易流程');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('typeDoubts', 'Digite suas dúvidas aqui', 'Enter your queries here', '输入疑问');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('typeEmail', 'Digite seu E-mail', 'Type your e-mail', '输入您的电子邮件');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('typeName', 'Digite seu nome', 'Type your name', '输入您的姓名');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('typesPayments', 'Diversos tipos de pagamento', 'Various types of payment', '各种支付方式');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('typesPaymentsSecurity', 'Segurança no pagamento', 'Payment security', '支付安全');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('unlimitedSecurity', 'Quantidade ilimitado de caracteres da chave de segurança', 'Unlimited security key size', '安全密钥中的字符数不限');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('wantPracticality', 'Quer praticidade? Compre gift cards online das maiores empresas de entretenimento, transporte e alimentação para você ou para presentear. Recarregue o seu celular usando nossos serviços sem precisar sair de casa.', 'Want practicality? Buy gift cards online from the biggest entertainment, transportation and food companies for yourself or as a gift. Recharge your cell phone using our services without having to leave your home.', '好的实用性? 从最大的娱乐、交通和食品公司在线购买礼品卡给自己或作为礼物。无需离开家，即可使用我们的服务为您的手机充值');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('weAlsoOffer', 'Oferecemos serviços também para pessoas jurídicas, tudo de forma transparente e sem surpresas no final.{ Quer saber mais? Clique no botão abaixo de acordo com seu o seu perfil:', 'We also offer services for legal entities, all transparently and without surprises at the end. Want to know more? Click the button below according to your profile:', '我们还为法人实体提供服务，所有这些服务都是透明化的，最后不会有任何意外。想知道更多？根据您的个人资料点击下面的按钮：');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('weAreComplete', 'Somos um banco digital completo para quem quer soluções financeiras na vida e nos negócios na palma da mão.', 'We are a complete digital bank for those who want financial solutions in life and business in the palm of their hand.', '我们是一家完整的数码银行，适合那些希望在生活和业务中掌握财务解决方案的人');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('weArePersonalized', 'Somos um banco personalizado que presta serviços financeiros com atendimento na sua ', 'We are a personalized bank that provides financial services with service in your ', '我们是一家个個性化银行，以您的母语提供金融服务');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('withLeeBank', 'Com os seguros Lee Bank, você protege o que conquistou e o que realmente importa. Deixe sua vida livre de preocupações e tenha mais tempo para você e para quem ama. ', 'With Lee Bank insurance, you protect what you''ve achieved and what really matters. Leave your life free of worries and have more time for you and the ones you love. ', '使用 Lee Bank 保险，您可以保护您所取得的成就和真正重要的事情。 让您的生活无忧无虑，并有更多时间陪伴您和您所爱的人');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('withOurExchange', 'Com o nosso serviço de câmbio é possível fazer remessas para fora do país, de forma rápida e segura. Se você precisar enviar dinheiro para amigos e familiares no exterior, conte conosco.', 'With our exchange service it is possible to make remittances abroad, quickly and safely. If you need to send money to friends and family abroad, count on us.', '通过我们的跨境汇款服务，可以快速安全地向国外汇款。如果您需要汇款给国外的朋友和家人，我们随时为您服务');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('yourDoubts', 'Tire suas dúvidas conosco.', 'Take your doubts with us.', '向我们提出您的疑问');
INSERT INTO DICTIONARY (DICTIONARYID, PT, EN, ZH) VALUES ('ZH', '中文', '中文', '中文');

UPDATE DICTIONARY SET PT = 'Oferecemos serviços também para pessoas jurídicas, tudo de forma transparente e sem surpresas no final. Quer saber mais? Clique no botão abaixo de acordo com seu o seu perfil:' WHERE ID = 'weAlsoOffer';

ALTER TABLE DICTIONARY ADD COLUMN WEBSITE CHAR(20) NOT NULL DEFAULT 'LEE-MARKETING';
ALTER TABLE MENU ADD COLUMN WEBSITE CHAR(20) NOT NULL DEFAULT 'LEE-MARKETING';