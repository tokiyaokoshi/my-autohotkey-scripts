#Requires AutoHotkey v2.0

; ==========================================
; 環境設定
; ==========================================
; ウィンドウのタイトル（タブ名）の一部が一致していれば検出できるようにする
SetTitleMatchMode 2

; ==========================================
; メイン処理：アプリ・Webサイトの一括起動
; ==========================================

; 1. Google Chrome で各タブを開く
; ※1つ目のRunでウィンドウを最大化で立ち上げ、2つ目は同じウィンドウの別タブとして開きます
Run("chrome.exe https://gemini.google.com/", , "Max")
Sleep(300)
Run("chrome.exe https://calendar.google.com/")
Sleep(300)

; 2. Visual Studio Code を最大化で開く
Run("code", , "Max")
Sleep(500)

; 3. Microsoft Edge を最大化で開く
Run("msedge.exe", , "Max")
Sleep(300)

; 4. Outlook を最大化で開く
Run("outlook.exe", , "Max")
Sleep(500)

; 5. PowerPoint を最大化で開く（最後に開くため最前面に表示されます）
Run("powerpnt.exe", , "Max")
Sleep(500)

; すべての起動処理が完了したらスクリプトを自動終了
ExitApp()

; ==========================================
; 安全設計・緊急停止ショートカット
; ==========================================
; 起動処理中に予期せぬ動作をした場合、F9キーでいつでも強制終了できます
F9::ExitApp()