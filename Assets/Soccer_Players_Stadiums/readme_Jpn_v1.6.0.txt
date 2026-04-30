
-------------------------------------------

GameAssetStudio
http://gameassetstudio.com/

-------------------------------------------
=====================================
内容
=====================================

このアセットには以下のデータが同梱されています。

＜モデル一覧（平均ポリゴン数）＞
・サンプル選手モデル 20種類 × 2チーム
・選手モデル
－胴体モデル（2,000tris） 10種類
－髪モデル（500tris） 19種類
・モーション 70種類
・スタジアムモデル（9,000tris） 1種類 × 昼/夜
・ゴールモデル（5,000tris） 2種類 × 昼/夜
・ボールモデル（180tris） 4種類

＜モーション一覧＞
・3D_45_in   …45度ターンイン
・3D_45_out　…45度ターンアウト
・3D_90_in　…90度ターンイン
・3D_90_out　…90度ターンアウト
・3D_135_in　…135度ターンイン
・3D_135_out　…135度ターンアウト
・3D_180_turn　…180度ターン
・3D_back_head_finsh　…ジャンプバックヘッド
・3D_back_head_start　…バックヘッド
・3D_back_run　…後ろ走り
・3D_ballstop　…ボール止め
・3D_dash　…ダッシュ
・3D_falling　…転倒
・3D_fk_kamae　…フリーキック構え
・3D_GK_bear　…GKボール持ち
・3D_GK_down_catch　…GKしゃがみキャッチ
・3D_GK_front_catch　(GK前キャッチ
・3D_GK_kamae　…GK構え
・3D_GK_kick　…GKフィードキック
・3D_GK_over_throw　…GKオーバースロー
・3D_GK_sidecatch_up　…GK横寝キャッチ上段
・3D_GK_sidecatch_mid　…GK横寝キャッチ中段
・3D_GK_sidecatch_down　…GK横寝キャッチ下段
・3D_GK_under_throw　…GKアンダースロー
・3D_guard　…敵を背負う動き
・3D_heel　…ヒール
・3D_infront　…インフロント
・3D_inside　…インサイド
・3D_instep　…インステップ
・3D_jump_insidehead　…ジャンプインサイドヘッド
・3D_jump_head　…ジャンプヘッド
・3D_wall　…壁
・3D_kamae　…構え
・3D_outside　…アウトサイド
・3D_overhead　…オーバーヘッドキック
・3D_short_pass　…ショートパス
・3D_run　…走り
・3D_guts　…得点喜び
・3D_shot　…シュート
・3D_sidehead　…サイドヘッド
・3D_sliding　…スライディング
・3D_standhead　…立ちヘディング
・3D_step　…ステップ
・3D_stand　…立ち
・3D_tackle_f　…正面足出し
・3D_tackle_s　…タックル
・3D_throw_in　…スローイン
・3D_trap_bust　…胸トラップ
・3D_trap　…トラップ
・3D_trap_turn_90　…トラップ90度ターン
・3D_turnshot_r　…ターンシュート
・3D_volley　…ボレーシュート
・3D_wakeup　…起き上がる
・3D_walk　…歩く
・3D_stagger　…よろけ
・3D_cut_wakeup　…ボールカット起き上がり
・3D_dribble_run_lp　…走りドリブル
・3D_dribble_dash_lp　…ダッシュドリブル
・3D_GK_punch_mid　…GK中間パンチング
・3D_GK_punch_down　…GK下方パンチング
・3D_GK_punch_up　…GK上方跳びパンチング
・3D_GK_punch_side_mid　…GK右中間横跳びパンチング
・3D_GK_punch_side_down　…GK右下横跳びパンチング
・3D_GK_punch_side_up　…GK右上横跳びパンチング
・3D_GK_wakeup_noball　…GK起き上がりボールなし
・3D_GK_wakeup　…GK起き上がり
・3D_wall_jump　…壁ジャンプ
・3D_trick_00_roulette　…フェイント技ルーレット
・3D_trick_01_elastico　…フェイント技エラシコ
・3D_trick_02_scissors　…フェイント技シザーズ
（70種類）

=====================================
各データの使用方法・設定
=====================================

1. 胴体モデルの使用方法・設定
AssetBundleResources > player > player_modelの中に各選手の胴体モデルフォルダ「model_***」があります。
この中にあるメッシュデータ「model_***.fbx」をHierarchyに置いてください。
配置したメッシュデータの階層内  Ploymesh > model_***を選択すると、Inspector > Skinned Mesh Rendererに各部位ごとのマテリアルが表示されます。

胴体モデルの各マテリアルについて説明します。マテリアルは各部位ごとに分かれています。
a) skin      …肌
b) glove     …ゴールキーパー用グローブ
c) num_Left  …背番号用デカール（左）
d) num_Right …背番号用デカール（右）
e) shoe　　　…スパイク
f) sock      …ソックス
g) team      …チームエンブレム用デカール
h) un_up     …ユニフォーム（上）
i) un_dn     …ユニフォーム（下）

a) skin
肌の設定は、skinマテリアルのInspector > Shaderを「Legacy Shaders/Diffuse」と設定し、Base(RGB)Trans(A)に肌用テクスチャ「skin_***_**_**_***.png」を指定してください。
肌用テクスチャは顔の種類、スキンの色、髭の有無/濃さ、タトゥーの有無/種類で分かれています。

b) glove
キーパー用グローブを付ける場合、gloveマテリアルのInspector > Shaderを「Legacy Shaders/Diffuse」と設定し、Base(RGB)Trans(A)にグローブ用テクスチャ「glove_***_**.png」を指定してください。
キーパー用グローブを付けない場合、gloveマテリアルのInspector > Shaderを「Legacy Shaders/Transparent/Diffuse」に設定し、Base(RGB)Trans(A)に「glove_000_00.png」を指定することで何もつけていない状態にすることができます。

c,d) num_Left,num_Right
背番号はnum_Leftマテリアルが背番号の左側、num_Rightマテリアルが背番号の右側に分かれています。
Inspector > Base(RBG)に使用したいユニフォーム（上）用テクスチャ「un_up_***_**.png」を指定します。
背番号を付ける場合、num_Leftまたはnum_RightのInspector > Shaderを「DecalUV2」に設定し、次にInspector > Decal(RGBA)に背番号用テクスチャ「num_***_**.png」を指定します。
付けない場合は、Inspector > Decal(RGBA)のテクスチャを「None」をしてください。

e) shoe
スパイクの設定はshoeマテリアルのInspector > Shaderを「Legacy Shaders/Diffuse」と設定し、Base(RGB)Trans(A)にスパイク用テクスチャ「shoe_***_**.png」を指定してください。

f) sock
ソックスの設定はsockマテリアルのInspector > Shaderを「Legacy Shaders/Diffuse」と設定し、Base(RGB)Trans(A)にソックス用テクスチャ「sock_***_**.png」を指定してください。

g) team
チームエンブレムを付ける場合、teamマテリアルのInspector > Shaderを「DecalUV2」に設定し、Inspector > Base(RBG)に使用したいユニフォーム（上）用テクスチャ「un_up_***_**.png」を指定します。
次にInspector > Decal(RGBA)にチームエンブレム用テクスチャ「team_***.png」を指定することでユニフォームの上にチームエンブレムを付けることができます。
チームエンブレムを付けない場合は、Inspector > Decal(RGBA)のテクスチャを「None」をしてください。

h,i) un_up,un_dn
ユニフォームのマテリアルは上下で分かれており、un_upマテリアルはユニフォームの上半身、un_dnマテリアルはユニフォームの下半身となっています。
設定する場合、両方ともInspector > Shaderを「Legacy Shaders/Diffuse」と設定し、Inspector > Base(RBG)にun_upマテリアルはユニフォーム（上）用テクスチャ「un_up_***_**.png」を、
un_dnマテリアルはユニフォーム（下）用テクスチャ「un_dn_***_**.png」を指定します。

胴体モデルの各マテリアルはAssetBundleResources > player > player_model > Materials内に部位ごとにまとめてあります。
テクスチャごとにマテリアルをご用意していますので、こちらをScene内の胴体モデルの各部位にドラッグ＆ドロップして適用することも可能です。

AssetBundleResources > player > player_prefabs内にサンプル用の選手モデルを2チーム計40体ご用意しましたので、この中の「model_*_***.prefab」をHierarchyにドラッグ＆ドロップしてお使いください。


2. 髪モデルの使用方法
AssetBundleResources > player > hair_modelの中に髪モデルフォルダ「hair_***」があります。
髪モデルを選手モデルに組み込む場合、この中にあるメッシュデータ「hair_***.fbx」と胴体モデル「model_***」をHierarchyに置いてください。
胴体モデルのジョイント階層内のroot>Hips>Spine>Spine1>Neck>Headに「hair_***.fbx」を格納することで頭の上に髪モデルが配置されます。
髪モデルのマテリアル設定はInspector > Shaderを「Custom/GzTransparentDiffuseEx」と設定し、Base(RGB)Trans(A)に髪用テクスチャ「hair_***_**.png」を指定してください。
Inspector内のCullingは「None」、ZWriteは「On」、ZTestは「LEqual」と設定します。

髪モデルのマテリアルはAssetBundleResources > player > hair_model > hair_*** > Materials内にこれらをScene内の髪モデルにドラッグ＆ドロップしても適用することは可能です。

3. モーションの使用方法
モーションはAssetBundleResources > Animations内に格納されています。
Animator Controllerを作成し、各モーションのFBXファイルをAnimator ウィンドウにドラッグ＆ドロップしてお使いください。


4. スタジアム、ゴール、ボールの使用方法
スタジアムモデルは昼verと夜verの2パターンのモデルがあります。
In the torso model folder, find the mesh data "model_***.fbx" and place it in the Hierarchy.

ゴールモデルは2種類があり、それぞれ昼verと夜verがあります。
ゴールモデルはAssetBundleResources > models > stadium > st_Goal > Prefabs内に「st_goal_**_*.prefab」が入っています。
ボールモデルはAssetBundleResources > models > stadium > st_Ball > Prefabs内に「st_ball_***.prefab」が入っています。
スタジアムモデルと同じようにHierarchyにドラッグ＆ドロップすることで使うことができます。

スタジアム、ゴールのマテリアルについて説明します。
スタジアムとゴールの一部のマテリアルは選手モデルを配置した際、リアルタイムで影を表示できるように設定しています。
各モデルのマテリアル内のInspector > Shader が「Legacy Shaders/Diffuse」となっています。
スタジアムとゴールモデルにはLightMapのテクスチャが同梱されています。
LightMapシェーダーを使用する場合、各マテリアルのInspector > Shaderを「Legacy Shaders/Diffuse」から「Unlit/Lightmap」へと変更してください。
スタジアムのPrefab「st_***_studium_all.prefab」階層内にある各モデルのInspector > Mesh Renderer の Cast Shadows を Off にしてください。
ゴールモデルも同じようにPrefab「st_goal_**_*」階層内にある「pole*」のInspector > Mesh Renderer の Cast Shadows を Off にしてください。


5. URPマテリアルの使用方法・設定
AssetBundleResources > URP > Materials内にUniversal Render Pipeline（URP）に対応したマテリアルが格納されています。
これらのマテリアルは従来のBuilt-inレンダーパイプライン用マテリアルをURP用に変換したもので、プロジェクトでURPを使用する場合に使用します。

URPマテリアルの構成：
- glove/       …ゴールキーパー用グローブ用マテリアル
- hair/        …髪モデル用マテリアル  
- num_Left/    …背番号用デカール（左）用マテリアル
- num_Right/   …背番号用デカール（右）用マテリアル
- shoe/        …スパイク用マテリアル
- skin/        …肌用マテリアル
- sock/        …ソックス用マテリアル
- stadium/     …スタジアム、ゴール、ボール用マテリアル
- team/        …チームエンブレム用デカール用マテリアル
- un_dn/       …ユニフォーム（下）用マテリアル
- un_up/       …ユニフォーム（上）用マテリアル

URPマテリアルの適用方法：

a) 選手プレハブへの適用
AssetBundleResources > player > player_prefabs内のサンプル選手プレハブ（「model_*_***.prefab」）に対してURPマテリアルを適用する場合：
1. プレハブをHierarchyに配置します
2. プレハブの階層内のPolymesh > model_***を選択します
3. Inspector > Skinned Mesh Rendererの各MaterialsスロットにURP > Materials内の対応するマテリアルをドラッグ＆ドロップで差し替えます

例：skin部位の場合
- URP > Materials > skin内から適切な肌用マテリアル（「skin_***_**_**_***.mat」）を選択
- Skinned Mesh RendererのMaterials配列のskinスロットにドラッグ＆ドロップで適用

b) スタジアム・ゴール・ボールプレハブへの適用
AssetBundleResources > stadium > models内の各プレハブに対してURPマテリアルを適用する場合：
1. 対象プレハブ（st_040, st_041のPrefabs内やst_Goal, st_Ballなど）をHierarchyに配置します
2. プレハブの階層内の各メッシュオブジェクトを選択します
3. Inspector > Mesh Rendererの各MaterialsスロットにURP > Materials > stadium内の対応するマテリアルをドラッグ＆ドロップで差し替えます

例：スタジアムst_040の場合
- URP > Materials > stadium > st_040内から適切なマテリアルを選択
- 各メッシュのMesh RendererのMaterialsスロットに適用

c) URPシェーダーについて
URP > Shaders内にはURP専用のカスタムシェーダーが含まれています：
- SimpleLit_MultiTexture.shader        …複数テクスチャ対応のシンプルリットシェーダー
- SimpleLit_UVScrollLightMap.shader    …UVスクロール機能付きライトマップシェーダー
これらのシェーダーはURPマテリアルで自動的に使用されるため、手動での設定は不要です。

注意事項：
- URPマテリアルを使用する場合は、プロジェクトのRender PipelineがUniversal Render Pipelineに設定されている必要があります
- Built-inレンダーパイプライン用のマテリアルとURP用マテリアルは互換性がないため、プロジェクトのレンダーパイプラインに応じて適切なマテリアルを選択してください
- マテリアルを差し替えた後は、プレハブにOverrideを適用することで変更を保存できます

=====================================
バージョン履歴
=====================================
Ver 1.60
・URPマテリアルの使用方法・設定を追加

Ver 1.00

