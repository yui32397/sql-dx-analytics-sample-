# [Portfolio / Unofficial] Retail & App DX SQL Analytics
### 購買データを用いたマーケティングクエリ集（技術実証用・疑似データ）

![Unofficial](https://img.shields.io/badge/Status-Unofficial%20/%20Portfolio-red?style=for-the-badge)
![Data](https://img.shields.io/badge/Data-Simulated%20/%20Dummy-orange?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-blue?style=for-the-badge)

---

## ⚠️ 免責事項 / Disclaimer (必ずお読みください)

*   **非公式プロジェクト (Unofficial Project)**: 本プロジェクトおよび本リポジトリに含まれるすべてのクエリ、仕様書、およびインサイトは、**スターバックス（Starbucks Corporation）公式およびその他の実在する企業とは一切関係がありません。** 
*   **ダミーデータ想定 (Simulated/Dummy Data)**: 本プロジェクトで使用・想定されているすべてのデータ（売上、会員数、客単価、A/Bテストのログ等）は、実際のスターバックスの内部データや機密情報に基づくものではなく、一般に公開されている市場トレンドや業界ベンチマークをベースに、**SQLのデータ抽出・集計スキルを実証（ポートフォリオ）するためにゼロから設計された「完全な疑似データ（ダミーデータ）」**です。
*   **商標・知的財産権 (Trademarks)**: 「スターバックス」「Starbucks」およびそれに関連する名称・ロゴは、Starbucks Corporationの登録商標です。本プロジェクトは、学術・技術ポートフォリオの目的においてのみこれらを引用しており、商業的意図、商標の侵害、またはブランドの流用を目的とするものではありません。

---

## 📂 プロジェクトのファイル構成

日本の小売・EC・アプリDXの実務を想定したディレクトリ構成を採用し、クエリを資産として独立管理しています。

```text
sql-dx-analytics-sample/
├── LICENSE                     # MIT License（権利関係をクリアにした法的防壁）
├── requirements.txt            # 依存関係を縛るハコ
├── README.md                   # 本ドキュメント（日本人向けに特化した全体仕様書）
└── queries/                     # クエリ格納フォルダ
    ├── 01_basic_selection.sql  # レベル1: 条件抽出とソートの基本クエリ
    ├── 02_aggregation_kpi.sql  # レベル2: グループ集計と主要KPI算出クエリ
    ├── 03_table_join.sql       # レベル3: 複数テーブルの結合（LEFT JOIN）クエリ
    └── 04_subquery_case.sql    # レベル4: WITH句（共通テーブル式）と条件分岐クエリ
