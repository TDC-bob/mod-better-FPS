-- available through options.graphics
Plugins =
{
    "DXRenderer.dll",
    "ZweiBlau.dll",
    "AVIMaker.dll",
    "Weather.dll",
    "NGModel.dll",
    "edterraingraphics3.dll",
    "Effects.dll",
}

Precaching =
{
    around_camera = 200000;
    around_objects = 50000;
    around_types = {"world", "point"};
    preload_types = {"map", "world", "mission"};
}

PrecompiledEffects =
{
	mode = "USE_PRECOMPILED_EFFECTS_FOR_UNCHANGED_FILES";
	--mode = "USE_PRECOMPILED_EFFECTS_ONLY";
}

VFSTexturePaths =
{
    "./Bazar/TempTextures",
    "./Bazar/Textures/c-130",
    "./Bazar/Textures/Batumi_buildings",
    "./Bazar/Effects/EffectTextures",
    "./Bazar/Effects/EffectRiverTGA",
    "./Bazar/Effects/WaterEffects",
    "./Bazar/Textures/old_textures",
    "./Bazar/Textures/f-15",
    "./Bazar/Textures/e-2d",
    "./Bazar/Textures/f-15e",
    "./Bazar/Textures/An-26B",
    "./Bazar/Textures/An-30M",
    "./Bazar/Textures/Patriot",
    "./Bazar/Textures/kc-135",
    "./Bazar/Textures/e-3",
    "./Bazar/Textures/il-76md",
    "./Bazar/Textures/a-50",
    "./Bazar/Textures/il-78m",
    "./Bazar/Textures/uh-1",
    "./Bazar/Textures/Su-27",
    "./Bazar/World/textures/TexturesBMP_weapons",
    "./Bazar/World/textures/WorldTexturesBMP3",
    "./Bazar/World/textures/WorldTexturesTGA3",
    "./Bazar/World/textures/WorldTexturesTGA2",
    "./Bazar/World/textures/WorldTexturesTGA",
    "./Bazar/World/textures/WorldTexturesBMP2",
    "./Bazar/World/textures/WorldTexturesBMP",
    "./Bazar/World/textures/WorldTexturesBMP1",
    "./Bazar/World/textures/ShipTexturesBMP",
    "./Bazar/World/textures/Y_FInal_Texture",
    "./Bazar/World/textures/Y2_FInal_Texture",
    "./Bazar/World/textures/Y3_FInal_Texture",
    "./Bazar/World/textures/Y4_FInal_Texture",
    "./Bazar/World/textures/Y4_FIame",
    "./Bazar/World/textures/Y5_FInal_Texture",
    "./Bazar/World/textures/Y6_FInal_Texture",
    "./Bazar/World/textures/Vehicles_misc",
    "./Bazar/World/textures/A-10_Weapons",
    "./Bazar/World/textures/AH-64_Apache",
    "./Bazar/World/textures/gunners",
    "./Bazar/World/textures/KA-27textures",
    "./Bazar/World/textures/MI26_textures",   
    "./Bazar/World/textures/UH_60_textures",
    "./Bazar/World/textures/T_Textures",
    "./Bazar/World/textures/Ka-50_general",
    "./Bazar/World/textures/A-10",
    "./Bazar/World/textures/L-39",
    "./Bazar/World/textures/yak-40_tex",
    "./Bazar/World/textures/NAVY_Textures",
    "./Bazar/World/textures/Railroad_trains_texture",
    "./Bazar/World/textures/Su-25_common_textures",
    "./Bazar/World/textures/Su-25_Georgian_Skins",
    "./Bazar/World/textures/Su-25_Russian_Skins",
    "./Bazar/World/textures/Su-25_Ukrainian_Skins",
    "./Bazar/World/textures/MI-8MT",
    "./Bazar/World/textures/Mig-31",
    "./Bazar/World/textures/F-18C",
    "./Bazar/World/textures/P-51D",
    "./FUI/Common/",
    "./FUI/Common/Net/",	
    "./Bazar/ParticleEffects/textures/",
}

ModelPaths =
{
    "./Bazar/World/Shapes/",
    "./Bazar/Terrain/Structures/High/EDM/",
}

Camera =
{
    Low =
    {
        near_clip = 0.2;
        middle_clip = 4;
        far_clip = 150000;

        structures = {30, 2000};
        trees = {1000, 1500};
        dynamic = {300, 20000};
        dynamic2 = {300, 20000,0.5};
        objects = {3000, 80000};
        mirage = {3000, 20000};
        surface = {10000, 50000};
        lights = {50, 10000};
        districtobjects = {100, 100};
        districts = {2000, 2000};

        lodMult = 1;
        lodAdd = 100;
    };
    Medium =
    {
        near_clip = 0.2;
        middle_clip = 4;
        far_clip = 150000;

        structures = {35, 10000};
        trees = {1000, 6000};
        dynamic = {300, 20000};
        dynamic2 = {300, 20000,0.5};
        objects = {3000, 80000};
        mirage = {3000, 20000};
        surface = {14000, 80000};
        lights = {100, 30000};
        districtobjects = {300, 300};
        districts = {6000, 6000};

        lodMult = 1.5;
        lodAdd = 0;
    };
High =
    {
        near_clip = 0.2;
        middle_clip = 4;
        far_clip = 100000;

        structures = {10, 10000};
        trees = {3000, 15000};
        dynamic = {3000, 15000};
        dynamic2 = {3000, 15000,0.5};
        objects = {3000, 80000};
        mirage = {3000, 15000};
        surface = {3000, 15000};
        lights = {3000, 15000};
        districtobjects = {200, 200};
        districts = {5000, 5000};

        lodMult = 1; -- 1.0;
        lodAdd = 100; -- 0;
    };
}

--[[
-- these params are set via options
shadows = 1;
lights = 0;
mirrors = 0;
textures = 2;
water = 4;
scenes = "medium";
effects = 0;
heatBlr = 0;
MSAA = 2;
HDR = 0;
TranspSSAA = 1;
environmentMap = 1;
ambientMap = false;
]]--

DebugColoredTexture = 0;
ScreenshotQuality = 90;
ScreenshotExt = "jpg";
FogParam1 = 6;
FogParam2 = 1.1;
PilotNames = false;
maxfps = 30;
RenderEffect = 0;
render3D = true;
cockpitOnly = false;
treesVisibility = 1500;
sync = false;

MFD_render_params =
{
	two_pass_always       		= true;
	dist_multiplier_fov_base	= 0.3;
	second_pass_start_fov 		= 0.1;
	second_pass_far_clip  		= 100;
	single_pass_near_clip 		= 10;
}

-- настройки Луны
Moon =
{
    Ktex = 1.7355; -- коэффициент, учитывающий размер луны на текстуре 512.0/295.0;
    Smax = 3;  -- коэффициент размера луны при угле места равном нулю
    Smin = 2.5; -- коэффициент размера луны при угле места >= Hmax
    Hmax = 45; -- макс. угол места в градусах  в пределах которого луна изменяет свой размер
	moonLightColor = {63.75, 71.4, 89.25}; -- цвет света от луны
}

Stars =
{
	c0 = 0;
	c1 = 2;
	c2 = 9;
	c3 = 10;
	flickerEnabled = true;
	tau = 15;
	period = 20;
}
