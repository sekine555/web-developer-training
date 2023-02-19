-- genre
INSERT INTO genre (id, genre_name) VALUES(1, 'フロントエンド');
INSERT INTO genre (id, genre_name) VALUES(2, 'バックエンド');
INSERT INTO genre (id, genre_name) VALUES(3, 'インフラストラクチャー');

-- quiz
INSERT INTO quiz (id, genre_id, question) VALUES(1, 1, 'ビルド時にレンダリングをおこない、WebサーバーにHTMLファイルをキャッシュするレンダリングの種類はどれでしょうか？');
INSERT INTO quiz (id, genre_id, question) VALUES(2, 1, 'グローバルstateに保存した値がページをリロードした際に消えてしまうのはどれでしょうか？');

-- quiz_choice
INSERT INTO quiz_choice (id, quiz_id, content, is_answer)
  VALUES(1, 1, 'CSR', 0);
INSERT INTO quiz_choice (id, quiz_id, content, is_answer)
  VALUES(2, 1, 'SSR', 0);
INSERT INTO quiz_choice (id, quiz_id, content, is_answer)
  VALUES(3, 1, 'SG', 1);
INSERT INTO quiz_choice (id, quiz_id, content, is_answer)
  VALUES(4, 1, 'ISR', 0);

INSERT INTO quiz_choice (id, quiz_id, content, is_answer)
  VALUES(5, 2, 'インメモリ', 1);
INSERT INTO quiz_choice (id, quiz_id, content, is_answer)
  VALUES(6, 2, 'ローカルストレージ', 0);
INSERT INTO quiz_choice (id, quiz_id, content, is_answer)
  VALUES(7, 2, 'セッションストレージ', 0);
INSERT INTO quiz_choice (id, quiz_id, content, is_answer)
  VALUES(8, 2, 'Cookie', 0);