-------------------------------------------

GameAssetStudio
http://gameassetstudio.com/

-------------------------------------------
=====================================
Contents
=====================================

This asset package contains the following data:

<Model List (Average Polygon Count)>
- Sample player models: 20 types Å~ 2 teams
- Player models
  - Body models (2,000 tris): 10 types
  - Hair models (500 tris): 19 types
- Animations: 70 types
- Stadium model (9,000 tris): 1 type Å~ Day/Night
- Goal models (5,000 tris): 2 types Å~ Day/Night
- Ball models (180 tris): 4 types

<Animation List>
- 3D_45_in - 45-degree turn in
- 3D_45_out - 45-degree turn out
- 3D_90_in - 90-degree turn in
- 3D_90_out - 90-degree turn out
- 3D_135_in - 135-degree turn in
- 3D_135_out - 135-degree turn out
- 3D_180_turn - 180-degree turn
- 3D_back_head_finsh - Jump back header
- 3D_back_head_start - Back header
- 3D_back_run - Back run
- 3D_ballstop - Ball stop
- 3D_dash - Dash
- 3D_falling - Falling
- 3D_fk_kamae - Free kick stance
- 3D_GK_bear - GK ball holding
- 3D_GK_down_catch - GK crouch catch
- 3D_GK_front_catch - GK front catch
- 3D_GK_kamae - GK stance
- 3D_GK_kick - GK feed kick
- 3D_GK_over_throw - GK over throw
- 3D_GK_sidecatch_up - GK side dive catch upper
- 3D_GK_sidecatch_mid - GK side dive catch middle
- 3D_GK_sidecatch_down - GK side dive catch lower
- 3D_GK_under_throw - GK under throw
- 3D_guard - Guarding motion
- 3D_heel - Heel kick
- 3D_infront - In-front kick
- 3D_inside - Inside kick
- 3D_instep - Instep kick
- 3D_jump_insidehead - Jump inside header
- 3D_jump_head - Jump header
- 3D_wall - Wall formation
- 3D_kamae - Stance
- 3D_outside - Outside kick
- 3D_overhead - Overhead kick
- 3D_short_pass - Short pass
- 3D_run - Running
- 3D_guts - Goal celebration
- 3D_shot - Shooting
- 3D_sidehead - Side header
- 3D_sliding - Sliding tackle
- 3D_standhead - Standing header
- 3D_step - Stepping
- 3D_stand - Standing
- 3D_tackle_f - Front tackle
- 3D_tackle_s - Side tackle
- 3D_throw_in - Throw-in
- 3D_trap_bust - Chest trap
- 3D_trap - Ball trap
- 3D_trap_turn_90 - Trap 90-degree turn
- 3D_turnshot_r - Turn shot
- 3D_volley - Volley shot
- 3D_wakeup - Getting up
- 3D_walk - Walking
- 3D_stagger - Staggering
- 3D_cut_wakeup - Ball cut get up
- 3D_dribble_run_lp - Running dribble
- 3D_dribble_dash_lp - Dash dribble
- 3D_GK_punch_mid - GK middle punch
- 3D_GK_punch_down - GK down punch
- 3D_GK_punch_up - GK upper jump punch
- 3D_GK_punch_side_mid - GK right middle side punch
- 3D_GK_punch_side_down - GK right down side punch
- 3D_GK_punch_side_up - GK right upper side punch
- 3D_GK_wakeup_noball - GK get up without ball
- 3D_GK_wakeup - GK get up
- 3D_wall_jump - Wall jump
- 3D_trick_00_roulette - Feint trick roulette
- 3D_trick_01_elastico - Feint trick elastico
- 3D_trick_02_scissors - Feint trick scissors
(70 types total)

=====================================
Usage Instructions and Settings
=====================================

1. Body Model Usage and Settings
Body model folders "model_***" are located in AssetBundleResources > player > player_model.
Drag the mesh data "model_***.fbx" from these folders into the Hierarchy.
Select Polymesh > model_*** within the placed mesh hierarchy to view materials for each body part in Inspector > Skinned Mesh Renderer.

Body model materials are organized by body parts:
a) skin - Skin
b) glove - Goalkeeper gloves
c) num_Left - Jersey number decal (left)
d) num_Right - Jersey number decal (right)
e) shoe - Football boots
f) sock - Socks
g) team - Team emblem decal
h) un_up - Jersey (upper)
i) un_dn - Jersey (lower)

a) Skin
Set skin material Inspector > Shader to "Legacy Shaders/Diffuse" and assign skin texture "skin_***_**_**_***.png" to Base(RGB)Trans(A).
Skin textures vary by face type, skin color, facial hair presence/density, and tattoo presence/type.

b) Glove
For goalkeeper gloves: Set Inspector > Shader to "Legacy Shaders/Diffuse" and assign glove texture "glove_***_**.png" to Base(RGB)Trans(A).
For no gloves: Set Inspector > Shader to "Legacy Shaders/Transparent/Diffuse" and assign "glove_000_00.png" to Base(RGB)Trans(A).

c,d) num_Left, num_Right
Jersey numbers use num_Left for left side and num_Right for right side.
Assign desired jersey (upper) texture "un_up_***_**.png" to Inspector > Base(RGB).
To add numbers: Set Inspector > Shader to "DecalUV2" and assign number texture "num_***_**.png" to Inspector > Decal(RGBA).
To remove numbers: Set Inspector > Decal(RGBA) texture to "None".

e) Shoe
Set shoe material Inspector > Shader to "Legacy Shaders/Diffuse" and assign shoe texture "shoe_***_**.png" to Base(RGB)Trans(A).

f) Sock
Set sock material Inspector > Shader to "Legacy Shaders/Diffuse" and assign sock texture "sock_***_**.png" to Base(RGB)Trans(A).

g) Team
For team emblems: Set Inspector > Shader to "DecalUV2", assign jersey (upper) texture "un_up_***_**.png" to Inspector > Base(RGB), and assign team emblem texture "team_***.png" to Inspector > Decal(RGBA).
To remove emblems: Set Inspector > Decal(RGBA) texture to "None".

h,i) un_up, un_dn
Set both materials' Inspector > Shader to "Legacy Shaders/Diffuse".
For un_up: Assign jersey (upper) texture "un_up_***_**.png" to Inspector > Base(RGB).
For un_dn: Assign jersey (lower) texture "un_dn_***_**.png" to Inspector > Base(RGB).

Pre-configured materials are available in AssetBundleResources > player > player_model > Materials, organized by body parts. These can be drag-and-dropped directly onto body models.

Sample player models are provided in AssetBundleResources > player > player_prefabs (2 teams, 40 models total). Drag "model_*_***.prefab" files into the Hierarchy to use.

2. Hair Model Usage
Hair model folders "hair_***" are located in AssetBundleResources > player > hair_model.
To add hair to player models: Place both hair mesh data "hair_***.fbx" and body model "model_***" in the Hierarchy.
Position "hair_***.fbx" within the body model's joint hierarchy at root>Hips>Spine>Spine1>Neck>Head.

Hair material settings: Set Inspector > Shader to "Custom/GzTransparentDiffuseEx" and assign hair texture "hair_***_**.png" to Base(RGB)Trans(A).
Set Inspector Culling to "None", ZWrite to "On", and ZTest to "LEqual".

Hair materials are available in AssetBundleResources > player > hair_model > hair_*** > Materials for direct application.

3. Animation Usage
Animations are stored in AssetBundleResources > Animations.
Create an Animator Controller and drag FBX animation files into the Animator window.

4. Stadium, Goal, and Ball Usage
Stadium models include day and night versions.
Goal models: 2 types, each with day and night versions, located in AssetBundleResources > models > stadium > st_Goal > Prefabs ("st_goal_**_*.prefab").
Ball models: Located in AssetBundleResources > models > stadium > st_Ball > Prefabs ("st_ball_***.prefab").
Drag these prefabs into the Hierarchy to use.

Stadium and goal materials support real-time shadows from player models using "Legacy Shaders/Diffuse".
LightMap textures are included. To use LightMap shaders: Change material Inspector > Shader from "Legacy Shaders/Diffuse" to "Unlit/Lightmap".
Set Cast Shadows to Off in Inspector > Mesh Renderer for stadium prefab hierarchy objects and goal "pole*" objects.

5. URP Material Usage and Settings
URP (Universal Render Pipeline) compatible materials are located in AssetBundleResources > URP > Materials.
These materials are URP conversions of the original Built-in render pipeline materials.

URP Material Structure:
- glove/ - Goalkeeper glove materials
- hair/ - Hair model materials
- num_Left/ - Jersey number decal (left) materials
- num_Right/ - Jersey number decal (right) materials
- shoe/ - Football boot materials
- skin/ - Skin materials
- sock/ - Sock materials
- stadium/ - Stadium, goal, and ball materials
- team/ - Team emblem decal materials
- un_dn/ - Jersey (lower) materials
- un_up/ - Jersey (upper) materials

URP Material Application:

a) Player Prefab Application
For sample player prefabs ("model_*_***.prefab") in AssetBundleResources > player > player_prefabs:
1. Place prefab in Hierarchy
2. Select Polymesh > model_*** within prefab hierarchy
3. Drag corresponding URP materials from URP > Materials to Inspector > Skinned Mesh Renderer Materials slots

Example for skin: Select appropriate skin material ("skin_***_**_**_***.mat") from URP > Materials > skin and drag to skin slot in Skinned Mesh Renderer Materials array.

b) Stadium/Goal/Ball Prefab Application
For prefabs in AssetBundleResources > stadium > models:
1. Place target prefab in Hierarchy (st_040, st_041 Prefabs, st_Goal, st_Ball, etc.)
2. Select each mesh object within prefab hierarchy
3. Drag corresponding materials from URP > Materials > stadium to Inspector > Mesh Renderer Materials slots

Example for stadium st_040: Select appropriate materials from URP > Materials > stadium > st_040 and apply to each mesh's Materials slots.

c) URP Shaders
Custom URP shaders are included in URP > Shaders:
- SimpleLit_MultiTexture.shader - Multi-texture simple lit shader
- SimpleLit_UVScrollLightMap.shader - UV scroll lightmap shader
These shaders are automatically used by URP materials and require no manual configuration.

Important Notes:
- URP materials require project Render Pipeline to be set to Universal Render Pipeline
- Built-in and URP materials are not compatible - choose appropriate materials for your project's render pipeline
- After replacing materials, apply Override to prefabs to save changes

=====================================
Version History
=====================================
Ver 1.6.0
- Added URP material usage and settings

Ver 1.0.0
- Initial release