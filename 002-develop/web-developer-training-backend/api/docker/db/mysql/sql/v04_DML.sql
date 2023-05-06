-- genre
INSERT INTO genre (id, genre_code, genre_name) VALUES(1, 'GENRE_001', 'フロントエンド');
INSERT INTO genre (id, genre_code, genre_name) VALUES(2, 'GENRE_002', 'バックエンド');
INSERT INTO genre (id, genre_code, genre_name) VALUES(3, 'GENRE_003', 'インフラ');
INSERT INTO genre (id, genre_code, genre_name) VALUES(4, 'GENRE_004', 'データベース');

-- quiz
-- フロントエンド
INSERT INTO quiz (id, genre_id, question) VALUES(1, 1, 'ビルド時にレンダリングをおこない、WebサーバーにHTMLファイルをキャッシュするレンダリングの種類はどれでしょうか？');
INSERT INTO quiz (id, genre_id, question) VALUES(2, 1, 'グローバルstateに保存した値がページをリロードした際に消えてしまうのはどれでしょうか？');
INSERT INTO quiz (id, genre_id, question) VALUES(3, 1, 'HTMLの基本構造で正しいものはどれでしょうか？');
INSERT INTO quiz (id, genre_id, question) VALUES(4, 1, 'CSSでセレクタによって対象を特定する方法のうち、IDセレクタを使用する場合の記述方法はどれでしょうか？');
INSERT INTO quiz (id, genre_id, question) VALUES(5, 1, 'JavaScriptでDOM要素を取得するためのメソッドで、ID属性を指定して要素を取得するものはどれでしょうか？');
INSERT INTO quiz (id, genre_id, question) VALUES(6, 1, 'レスポンシブデザインで使用される、デバイスの画面サイズに応じてスタイルを適用するためのCSS機能はどれでしょうか？');
INSERT INTO quiz (id, genre_id, question) VALUES(7, 1, 'JavaScriptの非同期処理において、Promiseをより簡潔に書くために利用される機能はどれでしょうか？');
INSERT INTO quiz (id, genre_id, question) VALUES(8, 1, 'Reactでコンポーネントの状態を管理するために使用されるフックはどれでしょうか？');
INSERT INTO quiz (id, genre_id, question) VALUES(9, 1, 'Vue.jsにおいて、データの双方向バインディングを実現するディレクティブはどれでしょうか？');
INSERT INTO quiz (id, genre_id, question) VALUES(10, 1, 'Angularでサービスを提供するために使用されるデコレータはどれでしょうか？');
INSERT INTO quiz (id, genre_id, question) VALUES(11, 1, 'Ajaxを使用してAPIからデータを取得する際に、データの形式としてよく使用されるのはどれでしょうか？');
INSERT INTO quiz (id, genre_id, question) VALUES(12, 1, 'モジュールバンドラーの一つで、JavaScriptファイルやCSSファイルをまとめて出力するツールはどれでしょうか？');
INSERT INTO quiz (id, genre_id, question) VALUES(13, 1, 'Reactで、親コンポーネントから子コンポーネントにデータを渡す方法はどれでしょうか？');
INSERT INTO quiz (id, genre_id, question) VALUES(14, 1, 'Webページのパフォーマンスを計測・分析するためにGoogleが提供しているツールは何でしょうか？');
INSERT INTO quiz (id, genre_id, question) VALUES(15, 1, 'CSSにおいて、要素を水平方向に中央揃えにするために利用できるプロパティはどれでしょうか？');

-- バックエンド
INSERT INTO quiz (id, genre_id, question) VALUES(16, 2, 'RESTful APIの設計原則のうち、APIが持つべき性質を示す言葉はどれでしょうか？');
INSERT INTO quiz (id, genre_id, question) VALUES(17, 2, 'HTTPメソッドのうち、リソースの更新に使用されるものはどれでしょうか？');
INSERT INTO quiz (id, genre_id, question) VALUES(18, 2, 'SQLインジェクション攻撃を防ぐために、プリペアドステートメントを使用する理由は何ですか？');
INSERT INTO quiz (id, genre_id, question) VALUES(19, 2, 'OAuth2.0で、クライアントがリソースオーナーの代わりにリソースをアクセスする際に必要なものは何ですか？');
INSERT INTO quiz (id, genre_id, question) VALUES(20, 2, 'HTTPステータスコードで、クライアント側に問題があることを示す3桁の数字は何ですか？');
INSERT INTO quiz (id, genre_id, question) VALUES(21, 2, 'Webアプリケーションで使用されるセッション管理に関して、サーバーサイドの状態を保持せず、クライアント側で状態を保持する方法は何ですか？');
INSERT INTO quiz (id, genre_id, question) VALUES(22, 2, 'NoSQLデータベースの一種で、高いスケーラビリティと速度が特徴のデータベースは何ですか？');
INSERT INTO quiz (id, genre_id, question) VALUES(23, 2, 'リバースプロキシサーバーが主に果たす役割は何ですか？');
INSERT INTO quiz (id, genre_id, question) VALUES(24, 2, 'クロスサイトリクエストフォージェリ攻撃(CSRF)からWebアプリケーションを守るために使用されるトークンは何ですか？');
INSERT INTO quiz (id, genre_id, question) VALUES(25, 2, 'Webアプリケーションにおいて、異なるオリジン間でリソースを共有するための仕組みは何ですか？');

-- データベース
INSERT INTO quiz (id, genre_id, question) VALUES(26, 3, 'リレーショナルデータベースでデータを構造化する基本単位は何ですか？');
INSERT INTO quiz (id, genre_id, question) VALUES(27, 3, 'データベースのテーブルに新しいレコードを追加するSQL文は何ですか？');
INSERT INTO quiz (id, genre_id, question) VALUES(28, 3, '特定の条件に合致するレコードのみを取得するために使用するSQLキーワードは何ですか？');
INSERT INTO quiz (id, genre_id, question) VALUES(29, 3, '以下のうち、SQLにおいてテーブルを作成する文はどれですか？');
INSERT INTO quiz (id, genre_id, question) VALUES(30, 3, '1対多のリレーションシップを表現するために使用されるキーは何ですか？');
INSERT INTO quiz (id, genre_id, question) VALUES(31, 3, 'NULL値とは何ですか？');
INSERT INTO quiz (id, genre_id, question) VALUES(32, 3, 'データベースのトランザクションにおいて、ACID特性とは何を指しますか？');
INSERT INTO quiz (id, genre_id, question) VALUES(33, 3, 'データベースのインデックスとは何ですか？');
INSERT INTO quiz (id, genre_id, question) VALUES(34, 3, 'データベースにおける正規化とは何ですか？');
INSERT INTO quiz (id, genre_id, question) VALUES(35, 3, 'SQLインジェクション攻撃とは何ですか？');

-- インフラ
INSERT INTO quiz (id, genre_id, question) VALUES(36, 4, 'HTTPとHTTPSの違いは何ですか？');
INSERT INTO quiz (id, genre_id, question) VALUES(37, 4, 'どのプロトコルがデータ転送の信頼性を保証していますか？');
INSERT INTO quiz (id, genre_id, question) VALUES(38, 4, 'クラウドコンピューティングのサービスモデルの1つである、仮想マシンやストレージ、ネットワークなどの基本的なコンピューティングリソースを提供するサービスは何ですか？');
INSERT INTO quiz (id, genre_id, question) VALUES(39, 4, 'Dockerはどのような技術を利用していますか？');
INSERT INTO quiz (id, genre_id, question) VALUES(40, 4, 'サーバーに負荷を分散させるために使われるデバイスやソフトウェアは何と呼ばれますか？');
INSERT INTO quiz (id, genre_id, question) VALUES(41, 4, 'DNS（Domain Name System）は何を行うシステムですか？');
INSERT INTO quiz (id, genre_id, question) VALUES(42, 4, '機密性、完全性、可用性の3つの要素からなるセキュリティの基本原則は何と呼ばれますか？');
INSERT INTO quiz (id, genre_id, question) VALUES(43, 4, 'CDNとは何の略ですか？');
INSERT INTO quiz (id, genre_id, question) VALUES(44, 4, '仮想マシンを管理し、複数の物理マシンで仮想マシンを動作させるためのソフトウェアは何ですか？');
INSERT INTO quiz (id, genre_id, question) VALUES(45, 4, 'サーバーがダウンしてもサービスが継続できるようにする構成を何と呼びますか？');

-- quiz_choice
-- クイズ1の選択肢
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(1, 1, 1, 'CSR', 0, 'CSR（クライアントサイドレンダリング）では、レンダリングはクライアント側（ブラウザ）で行われます。ビルド時にはHTMLファイルがキャッシュされません。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(2, 1, 2, 'SSR', 0, 'SSR（サーバーサイドレンダリング）では、HTMLはサーバーで生成されますが、ビルド時にHTMLファイルをキャッシュすることはありません。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(3, 1, 3, 'SG', 1, 'SG（スタティックジェネレーション）はビルド時にレンダリングが行われ、HTMLファイルがキャッシュされる方法です。これにより、ページの読み込み速度が向上します。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(4, 1, 4, 'ISR', 0, 'ISR（インクリメンタルスタティックレンダリング）は、ページを徐々に静的生成する方法ですが、ビルド時にすべてのHTMLファイルをキャッシュするわけではありません。');

-- クイズ2の選択肢
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(5, 2, 1, 'インメモリ', 1, 'インメモリは、ページをリロードするとグローバルステートのデータが消えてしまう保存方法です。他のストレージ方法は、ページリロード後もデータが保持されます。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(6, 2, 2, 'ローカルストレージ', 0, 'ローカルストレージは、ブラウザを閉じてもデータが保持されるストレージ方法です。ページリロード後もデータが消えません。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(7, 2, 3, 'セッションストレージ', 0, 'セッションストレージは、ブラウザのセッションが継続している間はデータが保持されます。ページリロード後もデータが消えません。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(8, 2, 4, 'Cookie', 0, 'Cookieはサーバーとクライアント間で情報をやり取りするための仕組みで、ブラウザを閉じてもデータが保持されます。ページリロード後もデータが消えません。');

-- クイズ3の選択肢
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(9, 3, 1, '<!DOCTYPE html><html><head></head><body></body></html>', 1, '正しいHTMLの基本構造は、<!DOCTYPE html>宣言の後に<html>タグで囲まれた<head>と<body>が続く形です。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(10, 3, 2, '<!DOCTYPE html><head></head><body></body>', 0, null);
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(11, 3, 3, '<html><head></head><body></body></html>', 0, null);
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(12, 3, 4, '<!DOCTYPE html><head></head><body></body><html>', 0, null);

-- クイズ4の選択肢
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(13, 4, 1, '.example', 0, null);
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(14, 4, 2, '#example', 1, 'IDセレクタを使用する場合は、#記号に続けて対象とする要素のID名を記述します。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(15, 4, 3, 'example', 0, null);
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(16, 4, 4, ':example', 0, null);

-- クイズ5の選択肢
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(17, 5, 1, 'getElementById()', 1, 'getElementById()メソッドは、指定したID属性を持つ要素を取得するために使用されます。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(18, 5, 2, 'getElementsByClassName()', 0, null);
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(19, 5, 3, 'querySelector()', 0, null);
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(20, 5, 4, 'getElementsByTagName()', 0, null);


-- クイズ6の選択肢
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(21, 6, 1, 'グリッドレイアウト', 0, null);
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(22, 6, 2, 'フレックスボックス', 0, null);
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(23, 6, 3, 'メディアクエリ', 1, 'メディアクエリは、デバイスの画面サイズに応じてスタイルを適用するために使用されるCSS機能です。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(24, 6, 4, 'ポジショニング', 0, null);

-- クイズ7の選択肢
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(25, 7, 1, 'コールバック', 0, null);
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(26, 7, 2, 'async/await', 1, 'async/awaitは、非同期処理を行う際にPromiseをより簡潔に書くために利用される機能です。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(27, 7, 3, 'ジェネレータ', 0, null);
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(28, 7, 4, 'クロージャ', 0, null);

-- クイズ8の選択肢
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(29, 8, 1, 'useContext', 0, null);
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(30, 8, 2, 'useEffect', 0, null);
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(31, 8, 3, 'useState', 1, 'useStateフックは、Reactのコンポーネントの状態を管理するために使用されます。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(32, 8, 4, 'useRef', 0, null);

-- クイズ9の選択肢
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(33, 9, 1, 'v-if', 0, null);
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(34, 9, 2, 'v-for', 0, null);
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(35, 9, 3, 'v-model', 1, 'v-modelディレクティブは、Vue.jsでデータの双方向バインディングを実現するために使用されます。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(36, 9, 4, 'v-show', 0, null);

-- クイズ10の選択肢
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(37, 10, 1, '@Component', 1, 'Angularでサービスを提供するために使用されるデコレータは@Componentです。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(38, 10, 2, '@Injectable', 0, null);
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(39, 10, 3, '@Directive', 0, null);
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(40, 10, 4, '@Pipe', 0, null);

-- クイズ11の選択肢
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(41, 11, 1, 'XML', 0, null);
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(42, 11, 2, 'JSON', 1, 'Ajaxを使用してAPIからデータを取得する際に、データの形式としてよく使用されるのはJSONです。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(43, 11, 3, 'CSV', 0, null);
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(44, 11, 4, 'YAML', 0, null);

-- クイズ12の選択肢
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(45, 12, 1, 'Babel', 0, null);
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(46, 12, 2, 'ESLint', 0, null);
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(47, 12, 3, 'Webpack', 1, 'Webpackは、JavaScriptファイルやCSSファイルをまとめて出力するモジュールバンドラーの一つです。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(48, 12, 4, 'PostCSS', 0, null);

-- クイズ13の選択肢
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(49, 13, 1, 'イベント', 0, 'イベントは子コンポーネントから親コンポーネントに情報を伝えるための方法です。親から子へのデータの受け渡しではありません。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(50, 13, 2, 'ローカルストレージ', 0, 'ローカルストレージはブラウザにデータを永続化するための方法です。親コンポーネントから子コンポーネントにデータを渡すための方法ではありません。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(51, 13, 3, 'プロップス', 1, 'プロップスはReactで親コンポーネントから子コンポーネントにデータを渡すための方法です。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(52, 13, 4, 'グローバルステート', 0, 'グローバルステートはアプリケーション全体で共有される状態を管理するための方法です。親コンポーネントから子コンポーネントにデータを渡すための方法ではありません。');

-- クイズ14の選択肢
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(53, 14, 1, 'Google Webmaster', 0, 'Google Webmasterは、ウェブサイトをGoogle検索エンジンに適切に表示するためのツールです。パフォーマンス計測・分析ツールではありません。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(54, 14, 2, 'Google Analytics', 0, 'Google Analyticsは、ウェブサイトのトラフィックやユーザーアクションを分析するためのツールです。パフォーマンス計測・分析ツールではありません。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(55, 14, 3, 'Google Lighthouse', 1, 'Google Lighthouseは、Webページのパフォーマンスを計測・分析するためにGoogleが提供しているツールです。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(56, 14, 4, 'Google Optimize', 0, 'Google Optimizeは、ウェブサイトのA/Bテストやマルチバリエントテストを実施するためのツールです。パフォーマンス計測・分析ツールではありません。');

-- クイズ15の選択肢
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(57, 15, 1, 'vertical-align', 0, 'vertical-alignプロパティは、インライン要素やテーブルセルを垂直方向に揃えるためのプロパティです。水平方向の中央揃えには使用できません。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(58, 15, 2, 'text-align', 1, 'text-alignプロパティは、要素の中のテキストやインライン要素を水平方向に揃えるためのプロパティです。中央揃えにするには、text-align: center;を使用します。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(59, 15, 3, 'align-items', 0, 'align-itemsプロパティは、FlexboxやGridレイアウトのコンテナ内で、要素を垂直方向に揃えるためのプロパティです。水平方向の中央揃えには使用できません。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(60, 15, 4, 'justify-content', 0, 'justify-contentプロパティは、FlexboxやGridレイアウトのコンテナ内で、要素を水平方向に揃えるためのプロパティです。ただし、単一の要素を中央揃えにするために使用するプロパティではありません。');

-- クイズ16の選択肢
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(61, 16, 1, 'CRUD', 0, 'CRUDは、Create(作成)、Read(読み取り)、Update(更新)、Delete(削除)の頭文字をとったものです。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(62, 16, 2, 'HATEOAS', 1, 'HATEOAS（Hypermedia As The Engine Of Application State）は、RESTful APIの設計原則の一つで、APIが持つべき性質を示す言葉です。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(63, 16, 3, 'REST', 0, 'REST（Representational State Transfer）は、ウェブサービスの設計手法の一つですが、APIが持つべき性質を示す言葉ではありません。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(64, 16, 4, 'JSON', 0, 'JSON（JavaScript Object Notation）は、データ交換フォーマットの一つですが、APIが持つべき性質を示す言葉ではありません。');

-- クイズ17の選択肢
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(65, 17, 1, 'GET', 0, 'GETメソッドは、リソースの取得に使用されますが、リソースの更新には使用されません。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(66, 17, 2, 'POST', 0, 'POSTメソッドは、新しいリソースの作成に使用されますが、リソースの更新には使用されません。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(67, 17, 3, 'PUT', 1, 'PUTメソッドは、リソースの更新に使用されます。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(68, 17, 4, 'DELETE', 0, 'DELETEメソッドは、リソースの削除に使用されますが、リソースの更新には使用されません。');

-- クイズ18の選択肢
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(69, 18, 1, 'SQL文の可読性を向上させるため', 0, 'プリペアドステートメントは、SQL文の可読性を向上させる目的ではなく、SQLインジェクション攻撃を防ぐために使用されます。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(70, 18, 2, 'データベースへの接続速度を向上させるため', 0, 'プリペアドステートメントは、データベースへの接続速度を向上させる目的ではなく、SQLインジェクション攻撃を防ぐために使用されます。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(71, 18, 3, 'SQLインジェクション攻撃を防ぐため', 1, 'プリペアドステートメントは、SQLインジェクション攻撃を防ぐために使用されます。これにより、ユーザー入力を適切にエスケープし、安全なSQLクエリを実行できます。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(72, 18, 4, 'データベースのパフォーマンスを向上させるため', 0, 'プリペアドステートメントは、データベースのパフォーマンスを向上させる目的ではなく、SQLインジェクション攻撃を防ぐために使用されます。');

-- クイズ19の選択肢
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(73, 19, 1, 'リソースオーナーパスワード', 0, 'リソースオーナーパスワードは、OAuth2.0でリソースオーナーの認証に使用されることがありますが、クライアントがリソースをアクセスするために必要なものではありません。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(74, 19, 2, 'クライアントID', 0, 'クライアントIDは、OAuth2.0でクライアントを識別するために使用されますが、クライアントがリソースをアクセスするために必要なものではありません。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(75, 19, 3, 'アクセストークン', 1, 'アクセストークンは、OAuth2.0でクライアントがリソースオーナーの代わりにリソースをアクセスする際に必要なものです。これにより、クライアントはリソースサーバーに対して認可されたアクセスを行うことができます。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(76, 19, 4, 'リフレッシュトークン', 0, 'リフレッシュトークンは、アクセストークンの有効期限が切れた場合に新しいアクセストークンを取得するために使用されますが、クライアントがリソースをアクセスするために必要なものではありません。');

-- クイズ20の選択肢
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(77, 20, 1, '1xx', 0, '1xxは情報提供を意味し、クライアント側の問題を示すものではありません。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(78, 20, 2, '2xx', 0, '2xxは成功を意味し、クライアント側の問題を示すものではありません。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(79, 20, 3, '3xx', 0, '3xxはリダイレクションを意味し、クライアント側の問題を示すものではありません。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(80, 20, 4, '4xx', 1, '4xxはクライアントエラーを意味し、クライアント側に問題があることを示す3桁の数字です。');

-- クイズ21の選択肢
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(81, 21, 1, 'Cookie', 0, 'Cookieは、セッション管理に使用されることがありますが、サーバーサイドの状態を保持せず、クライアント側で状態を保持する方法ではありません。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(82, 21, 2, 'セッションストレージ', 0, 'セッションストレージは、クライアント側で状態を保持するためのストレージですが、Webアプリケーションでのセッション管理には通常使用されません。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(83, 21, 3, 'JWT（JSON Web Token）', 1, 'JWT（JSON Web Token）は、サーバーサイドの状態を保持せず、クライアント側で状態を保持する方法で、セッション管理に使用されます。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(84, 21, 4, 'OAuth', 0, 'OAuthは、認可とアクセストークンの交換を行うプロトコルであり、セッション管理には使用されません。');

-- クイズ22の選択肢
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(85, 22, 1, 'Apache', 0, 'Apacheは、オープンソースのWebサーバーソフトウェアですが、Webアプリケーションフレームワークではありません。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(86, 22, 2, 'Django', 1, 'Djangoは、Pythonで開発されたオープンソースのWebアプリケーションフレームワークです。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(87, 22, 3, 'Node.js', 0, 'Node.jsは、JavaScriptでサーバーサイドアプリケーションを開発するための環境ですが、Webアプリケーションフレームワークではありません。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(88, 22, 4, 'Nginx', 0, 'Nginxは、オープンソースのWebサーバーソフトウェアですが、Webアプリケーションフレームワークではありません。');

-- クイズ23の選択肢
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(89, 23, 1, 'Node.js', 1, 'Node.jsは、JavaScriptをサーバーサイドで実行するためのプラットフォームです。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(90, 23, 2, 'React', 0, 'Reactは、Facebookが開発したJavaScriptのライブラリで、主にUIコンポーネントを構築するために使用されます。サーバーサイドでのJavaScript実行には使用されません。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(91, 23, 3, 'Angular', 0, 'Angularは、Googleが開発したJavaScriptのフレームワークで、主にシングルページアプリケーション（SPA）の開発に使用されます。サーバーサイドでのJavaScript実行には使用されません。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(92, 23, 4, 'jQuery', 0, 'jQueryは、JavaScriptのライブラリで、主にDOM操作やイベント処理、Ajaxを簡単に扱うために使用されます。サーバーサイドでのJavaScript実行には使用されません。');

-- クイズ24の選択肢
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(93, 24, 1, 'JWT', 0, 'JWT（JSON Web Token）は認証情報をやり取りするためのトークンですが、CSRF対策としては使用されません。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(94, 24, 2, 'OAuth', 0, 'OAuthはアプリケーション間で認証・認可を行うためのプロトコルですが、CSRF対策としては使用されません。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(95, 24, 3, 'CSRFトークン', 1, 'CSRFトークンは、クロスサイトリクエストフォージェリ攻撃（CSRF）からWebアプリケーションを守るために使用されるトークンです。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(96, 24, 4, 'APIキー', 0, 'APIキーはAPIの認証に使用される文字列ですが、CSRF対策としては使用されません。');

-- クイズ25の選択肢
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(97, 25, 1, 'CORS', 1, 'CORS（Cross-Origin Resource Sharing）は、異なるオリジン間でリソースを共有するための仕組みです。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(98, 25, 2, 'SOP', 0, 'SOP（Same-Origin Policy）は、同一オリジンポリシーであり、異なるオリジン間でのリソース共有を制限する仕組みです。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(99, 25, 3, 'JSONP', 0, 'JSONPはJSON with Paddingの略で、CORSがない時代に異なるオリジン間でデータを取得するための方法です。しかし、現在はCORSが主流です。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(100, 25, 4, 'Iframe', 0, 'IframeはHTML内に別のHTML文書を埋め込むための要素ですが、オリジン間でリソースを共有する仕組みではありません。');

-- クイズ26の選択肢
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(101, 26, 1, 'スキーマ', 0, 'スキーマは、データベースの構造を定義するものですが、データの基本単位ではありません。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(102, 26, 2, 'テーブル', 1, 'リレーショナルデータベースでは、データはテーブルという基本単位で構造化されます。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(103, 26, 3, 'カラム', 0, 'カラムはテーブルの一部であり、データを表現する属性ですが、データの基本単位ではありません。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(104, 26, 4, 'インデックス', 0, 'インデックスはデータの検索速度を向上させるための仕組みですが、データの基本単位ではありません。');

-- クイズ27の選択肢
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(105, 27, 1, 'SELECT', 0, 'SELECT文はデータベースからデータを取得するためのSQL文です。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(106, 27, 2, 'UPDATE', 0, 'UPDATE文はデータベースの既存のレコードを更新するためのSQL文です。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(107, 27, 3, 'DELETE', 0, 'DELETE文はデータベースからレコードを削除するためのSQL文です。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(108, 27, 4, 'INSERT', 1, 'INSERT文はデータベースに新しいレコードを追加するためのSQL文です。');

-- クイズ28の選択肢
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(109, 28, 1, 'WHERE', 1, 'WHERE句は、特定の条件に合致するレコードのみを取得するために使用されるSQLキーワードです。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(110, 28, 2, 'FROM', 0, 'FROM句は、データを取得する対象のテーブルを指定するSQLキーワードです。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(111, 28, 3, 'JOIN', 0, 'JOIN句は、複数のテーブルを結合してデータを取得するためのSQLキーワードです。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(112, 28, 4, 'GROUP BY', 0, 'GROUP BY句は、指定したカラムの値ごとにレコードをグループ化するSQLキーワードです。');

-- クイズ29の選択肢
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(113, 29, 1, 'CREATE TABLE', 1, 'CREATE TABLE文は、SQLでテーブルを作成するために使用されます。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(114, 29, 2, 'ALTER TABLE', 0, 'ALTER TABLE文は、SQLでテーブルの構造を変更するために使用されます。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(115, 29, 3, 'DROP TABLE', 0, 'DROP TABLE文は、SQLでテーブルを削除するために使用されます。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(116, 29, 4, 'TRUNCATE TABLE', 0, 'TRUNCATE TABLE文は、SQLでテーブルのすべてのデータを削除するために使用されます。');

-- クイズ30の選択肢
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(117, 30, 1, 'プライマリキー', 0, 'プライマリキーは、テーブル内の各レコードを一意に識別するキーですが、リレーションシップを表現するために使用されるものではありません。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(118, 30, 2, '外部キー', 1, '外部キーは、別のテーブルのプライマリキーを参照するカラムであり、1対多のリレーションシップを表現するために使用されます。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(119, 30, 3, 'ユニークキー', 0, 'ユニークキーは、テーブル内の各レコードを一意に識別するキーですが、リレーションシップを表現するために使用されるものではありません。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(120, 30, 4, 'インデックスキー', 0, 'インデックスキーは、データの検索速度を向上させるためのキーですが、リレーションシップを表現するために使用されるものではありません。');

-- クイズ31の選択肢
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(121, 31, 1, '0を表す値', 0, 'NULL値は未知または適用できない値を表し、0とは異なります。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(122, 31, 2, '空文字列を表す値', 0, 'NULL値は未知または適用できない値を表し、空文字列とは異なります。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(123, 31, 3, '未知または適用できない値', 1, 'NULL値は、データベース内で未知または適用できない値を表します。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(124, 31, 4, '負の数を表す値', 0, 'NULL値は未知または適用できない値を表し、負の数とは異なります。');

-- クイズ32の選択肢
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(125, 32, 1, 'Atomicity, Consistency, Isolation, Durability', 1, 'ACID特性は、データベースのトランザクションが正しく機能するために必要な特性で、原子性（Atomicity）、一貫性（Consistency）、独立性（Isolation）、永続性（Durability）を指します。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(126, 32, 2, 'Availability, Consistency, Integrity, Durability', 0, 'これは、ACID特性の説明ではありません。ACIDは、Atomicity, Consistency, Isolation, Durabilityを意味します。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(127, 32, 3, 'Atomicity, Consistency, Integrity, Durability', 0, 'これは、ACID特性の説明ではありません。ACIDは、Atomicity, Consistency, Isolation, Durabilityを意味します。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(128, 32, 4, 'Atomicity, Consistency, Isolation, Dependability', 0, 'これは、ACID特性の説明ではありません。ACIDは、Atomicity, Consistency, Isolation, Durabilityを意味します。');

-- クイズ33の選択肢
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(129, 33, 1, 'データを一意に識別するキー', 0, 'データを一意に識別するキーは、プライマリキーやユニークキーのことを指しますが、インデックスではありません。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(130, 33, 2, 'データベースの構造を定義するための情報', 0, 'データベースの構造を定義する情報はスキーマと呼ばれますが、インデックスではありません。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(131, 33, 3, 'データ検索を高速化するためのデータ構造', 1, 'インデックスは、データ検索を高速化するためのデータ構造で、特定のカラムの値に基づいてデータを効率的に検索できるようにします。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(132, 33, 4, 'データベースのバックアップを保存する場所', 0, 'データベースのバックアップは重要ですが、インデックスとは関係ありません。インデックスはデータ検索を高速化するためのデータ構造です。');

-- クイズ34の選択肢
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(133, 34, 1, 'データベースのパフォーマンスを最適化するプロセス', 0, '正規化は、データベースの構造を改善するプロセスですが、直接的にパフォーマンス最適化を目的としているわけではありません。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(134, 34, 2, 'データベースの構造を改善し、データの重複や不整合を減らすプロセス', 1, '正規化は、データベースの構造を改善し、データの重複や不整合を減らすことを目的としたプロセスです。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(135, 34, 3, 'データベースのバックアップとリカバリのプロセス', 0, 'バックアップとリカバリは重要なデータベース管理の側面ですが、正規化とは関係ありません。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(136, 34, 4, 'データベースのセキュリティを強化するプロセス', 0, 'セキュリティはデータベース管理の重要な側面ですが、正規化とは直接関係ありません。');

-- クイズ35の選択肢
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(137, 35, 1, 'データベースのパフォーマンスを低下させる攻撃', 0, 'SQLインジェクション攻撃は、データベースのパフォーマンスを低下させる攻撃ではありません。SQLインジェクションは、不正なSQLクエリを実行させることで、データベースの情報を不正に操作または抽出する攻撃です。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(138, 35, 2, 'データベースを消去する攻撃', 0, 'SQLインジェクション攻撃は、データベースを消去する攻撃ではありませんが、その結果としてデータベースが損傷を受ける可能性があります。SQLインジェクションは、不正なSQLクエリを実行させることで、データベースの情報を不正に操作または抽出する攻撃です。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(139, 35, 3, '不正なSQLクエリを実行させることで、データベースの情報を不正に操作または抽出する攻撃', 1, 'SQLインジェクション攻撃は、不正なSQLクエリを実行させることで、データベースの情報を不正に操作または抽出する攻撃です。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(140, 35, 4, 'データベースへのアクセスを遮断する攻撃', 0, 'SQLインジェクション攻撃は、データベースへのアクセスを遮断する攻撃ではありません。SQLインジェクションは、不正なSQLクエリを実行させることで、データベースの情報を不正に操作または抽出する攻撃です。');

-- クイズ36の選択肢
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(141, 36, 1, 'HTTPは暗号化されているが、HTTPSは暗号化されていない', 0, null);
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(142, 36, 2, 'HTTPは暗号化されていないが、HTTPSは暗号化されている', 1, 'HTTPSはSSL/TLSを使用して通信を暗号化し、データの機密性と完全性を保護します。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(143, 36, 3, 'HTTPとHTTPSはどちらも暗号化されている', 0, null);
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(144, 36, 4, 'HTTPとHTTPSに違いはない', 0, null);

-- クイズ37の選択肢
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(145, 37, 1, 'HTTP', 0, null);
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(146, 37, 2, 'UDP', 0, null);
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(147, 37, 3, 'TCP', 1, 'TCPはデータ転送の信頼性を保証するプロトコルで、パケットの到達確認や再送制御、順序制御などが行われます。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(148, 37, 4, 'FTP', 0, null);

-- クイズ38の選択肢
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(149, 38, 1, 'リバースプロキシ', 1, 'リバースプロキシはクライアントからのリクエストをバックエンドサーバーに転送し、その結果をクライアントに返す役割を持っています。負荷分散やキャッシュ機能などの目的で使用されます。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(150, 38, 2, 'フォワードプロキシ', 0, null);
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(151, 38, 3, 'ロードバランサー', 0, null);
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(152, 38, 4, 'VPN', 0, null);

-- クイズ39の選択肢
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(153, 39, 1, 'DNS', 0, null);
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(154, 39, 2, 'DHCP', 0, null);
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(155, 39, 3, 'NAT', 1, 'NAT（Network Address Translation）はプライベートIPアドレスとグローバルIPアドレスの変換を行う技術で、インターネット接続に必要なIPアドレスを節約し、セキュリティを向上させます。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(156, 39, 4, 'ARP', 0, null);

-- クイズ40の選択肢
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(157, 40, 1, 'HTTP', 0, null);
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(158, 40, 2, 'HTTPS', 1, 'HTTPSはHTTPにSSL/TLSによる暗号化を追加したプロトコルで、セキュアな通信を実現します。ウェブサイトで個人情報やパスワードを扱う場合には、HTTPSを使用することが推奨されます。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(159, 40, 3, 'FTP', 0, null);
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(160, 40, 4, 'SSH', 0, null);

-- クイズ41の選択肢
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(161, 41, 1, 'プッシュ通知', 0, null);
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(162, 41, 2, 'メール', 0, null);
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(163, 41, 3, 'Webhook', 1, 'Webhookは特定のイベントが発生した際に、自動的に指定されたURLにHTTPリクエストを送信する仕組みです。これにより、システム間で状況の変化をリアルタイムで通知し合うことができます。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(164, 41, 4, 'SMS', 0, null);

-- クイズ42の選択肢
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(165, 42, 1, 'リージョン', 1, 'リージョンはクラウドプロバイダが提供するデータセンターの地理的な区分です。リージョンを選択することで、データの保存場所やアプリケーションのレイテンシを最適化できます。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(166, 42, 2, 'アベイラビリティーゾーン', 0, null);
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(167, 42, 3, 'サブネット', 0, null);
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(168, 42, 4, 'VPC', 0, null);

-- クイズ43の選択肢
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(169, 43, 1, 'スケールアウト', 1, 'スケールアウトは、システムの性能を向上させるために、リソースを追加するアプローチです。例えば、複数のサーバーを追加して負荷分散を行うことが挙げられます。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(170, 43, 2, 'スケールイン', 0, null);
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(171, 43, 3, 'スケールアップ', 0, null);
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(172, 43, 4, 'スケールダウン', 0, null);

-- クイズ44の選択肢
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(173, 44, 1, 'IaaS', 1, 'IaaS (Infrastructure as a Service)は、仮想マシンやストレージ、ネットワークなどの基本的なコンピューティングリソースを提供するクラウドサービスのカテゴリです。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(174, 44, 2, 'PaaS', 0, null);
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(175, 44, 3, 'SaaS', 0, null);
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(176, 44, 4, 'FaaS', 0, null);

-- クイズ45の選択肢
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(177, 45, 1, 'HTTP', 0, null);
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(178, 45, 2, 'SSH', 1, 'SSH (Secure Shell)は、リモートでコンピュータを管理するためのプロトコルです。SSHを使用することで、暗号化された通信チャネルを介してコマンドを送信したり、ファイルを転送したりできます。');
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(179, 45, 3, 'SMTP', 0, null);
INSERT INTO quiz_choice (id, quiz_id, option_number, content, is_answer, explanation)
VALUES(180, 45, 4, 'FTP', 0, null);