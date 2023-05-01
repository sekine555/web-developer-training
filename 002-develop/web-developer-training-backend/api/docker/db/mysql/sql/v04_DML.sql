-- genre
INSERT INTO genre (id, genre_code, genre_name) VALUES(1, 'GENRE_001', 'フロントエンド');
INSERT INTO genre (id, genre_code, genre_name) VALUES(2, 'GENRE_002', 'バックエンド');
INSERT INTO genre (id, genre_code, genre_name) VALUES(3, 'GENRE_003', 'インフラ');
INSERT INTO genre (id, genre_code, genre_name) VALUES(4, 'GENRE_004', 'データベース');

-- quiz
INSERT INTO quiz (id, genre_id, question) VALUES(1, 1, 'ビルド時にレンダリングをおこない、WebサーバーにHTMLファイルをキャッシュするレンダリングの種類はどれでしょうか？');
INSERT INTO quiz (id, genre_id, question) VALUES(2, 1, 'グローバルstateに保存した値がページをリロードした際に消えてしまうのはどれでしょうか？');

-- quiz_choice
INSERT INTO quiz_choice (id, quiz_id, content, is_answer, explanation)
  VALUES(1, 1, 'CSR', 0, null);
INSERT INTO quiz_choice (id, quiz_id, content, is_answer, explanation)
  VALUES(2, 1, 'SSR', 0, null);
INSERT INTO quiz_choice (id, quiz_id, content, is_answer, explanation)
  VALUES(3, 1, 'SG', 1, '解説文が入ります解説文が入ります解説文が入ります');
INSERT INTO quiz_choice (id, quiz_id, content, is_answer, explanation)
  VALUES(4, 1, 'ISR', 0, null);

INSERT INTO quiz_choice (id, quiz_id, content, is_answer, explanation)
  VALUES(5, 2, 'インメモリ', 1, '解説文が入ります解説文が入ります解説文が入ります');
INSERT INTO quiz_choice (id, quiz_id, content, is_answer, explanation)
  VALUES(6, 2, 'ローカルストレージ', 0, null);
INSERT INTO quiz_choice (id, quiz_id, content, is_answer, explanation)
  VALUES(7, 2, 'セッションストレージ', 0, null);
INSERT INTO quiz_choice (id, quiz_id, content, is_answer, explanation)
  VALUES(8, 2, 'Cookie', 0, null);