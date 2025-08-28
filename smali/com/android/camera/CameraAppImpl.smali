.class public Lcom/android/camera/CameraAppImpl;
.super Landroid/app/Application;
.source "CameraAppImpl.java"


# static fields
.field public static sCameraDeviceDisable:Z = false

.field public static sContext:Landroid/content/Context;


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mActivities:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public mIsVideoCastActivityResumed:Z

.field public mMainIntentActivityLaunched:Z

.field public mRestoreSetting:Z

.field public sLaunched:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 2
    const-class v0, Lcom/android/camera/CameraAppImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraAppImpl;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/CameraAppImpl;->sLaunched:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/CameraAppImpl;->mRestoreSetting:Z

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/CameraAppImpl;->mMainIntentActivityLaunched:Z

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/CameraAppImpl;->mIsVideoCastActivityResumed:Z

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/data/data/global/DataItemGlobal;)V
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    const-string/jumbo v0, "pref_custom_watermark_version"

    invoke-interface {p0, v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method private generateWatermarkCache(Lcom/android/camera/data/data/global/DataItemGlobal;)V
    .locals 2

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oOoO0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->matchCustomWatermarkVersion()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lcom/android/camera/watermark/gen2/WaterMarkUtil2;->removeCustomWatermark()V

    .line 4
    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooOOo;

    invoke-direct {v1, p1}, LOooO0O0/OooO0O0/OooO00o/OooOOo;-><init>(Lcom/android/camera/data/data/global/DataItemGlobal;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/watermark/gen2/WaterMarkUtil2;->getDefaultWatermarkFileName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/watermark/gen2/WatermarkMiSysUtils;->isFileExist(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    .line 6
    invoke-static {}, Lcom/android/camera/watermark/gen2/WaterMarkUtil2;->generateMainWatermark2File()Landroid/graphics/Bitmap;

    .line 7
    :cond_2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0OOo()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/android/camera/watermark/gen2/WaterMarkUtil2;->WATERMARK_FRONT_FILE_NAME:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lcom/android/camera/watermark/gen2/WatermarkMiSysUtils;->isFileExist(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_3

    .line 9
    invoke-static {}, Lcom/android/camera/watermark/gen2/WaterMarkUtil2;->generateFrontWatermark2File()V

    .line 10
    :cond_3
    sget-object p1, Lcom/android/camera/watermark/gen2/WaterMarkUtil2;->WATERMARK_CINEMATIC_RATIO_FILE_NAME:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/camera/watermark/gen2/WatermarkMiSysUtils;->isFileExist(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_4

    .line 11
    invoke-static {}, Lcom/android/camera/watermark/gen2/WaterMarkUtil2;->generateCinematicRatioWatermark2File()V

    :cond_4
    return-void
.end method

.method public static getAndroidContext()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/CameraAppImpl;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getApplicationId()I
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    return v0
.end method

.method private preload()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/features/mode/capture/CaptureModule;

    invoke-direct {v0}, Lcom/android/camera/features/mode/capture/CaptureModule;-><init>()V

    .line 2
    new-instance v0, Lcom/android/camera2/MiCamera2;

    invoke-direct {v0}, Lcom/android/camera2/MiCamera2;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isShowFirstUseHint()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/CameraAppImpl;->TAG:Ljava/lang/String;

    const-string v1, "Track init start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackInit(Landroid/content/Context;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraAppImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "markAllDepartedTask>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getApplicationId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {}, Lcom/android/camera/db/DbRepository;->dbItemSaveTask()Lcom/android/camera/db/item/DbItemSaveTask;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getApplicationId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/db/item/DbItemSaveTask;->markAllDepartedTask(I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/CameraAppImpl;->TAG:Ljava/lang/String;

    const-string v1, "markAllDepartedTask<<"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    .line 8
    iget-object v0, p0, Lcom/android/camera/CameraAppImpl;->TAG:Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "load +"

    invoke-static {v1, v0, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/features/FeatureLoader;->load(Landroid/content/Context;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    iget-object v0, p0, Lcom/android/camera/CameraAppImpl;->TAG:Ljava/lang/String;

    const-string v2, "load -"

    invoke-static {v1, v0, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    .line 12
    invoke-direct {p0, v0}, Lcom/android/camera/CameraAppImpl;->generateWatermarkCache(Lcom/android/camera/data/data/global/DataItemGlobal;)V

    .line 13
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "device_policy"

    .line 14
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    .line 15
    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16
    sput-boolean v2, Lcom/android/camera/CameraAppImpl;->sCameraDeviceDisable:Z

    .line 17
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    .line 18
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    .line 19
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1, v2}, Lcom/android/camera/data/provider/DataProvider;->dataConfig(I)Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    .line 20
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v0

    const-string v1, "loading_class"

    invoke-virtual {v0, v1}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/android/camera/ClassUseInLaunch;->preload()V

    .line 22
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    .line 23
    iget-object v0, p0, Lcom/android/camera/CameraAppImpl;->TAG:Ljava/lang/String;

    const-string v1, "LoadClassUseInLaunch<<"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public addActivity(Landroid/app/Activity;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/CameraAppImpl;->mMainIntentActivityLaunched:Z

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraAppImpl;->mActivities:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 10

    const-string v0, "attachBaseContext"

    .line 1
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    invoke-static {}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->getInstance()Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    move-result-object v2

    const/16 v3, 0x12c

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->startBoost(II)Z

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "android.app.ActivityThread"

    .line 4
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "currentActivityThread"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    .line 5
    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v6, 0x0

    new-array v7, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v6, "setFootprintFlag"

    new-array v7, v2, [Ljava/lang/Class;

    .line 6
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v5

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v6, v2, [Ljava/lang/Object;

    .line 7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_0

    :catch_2
    move-exception v3

    .line 8
    :goto_0
    iget-object v4, p0, Lcom/android/camera/CameraAppImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setFootprintFlag failed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :catch_3
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 10
    sput-object p0, Lcom/android/camera/CameraAppImpl;->sContext:Landroid/content/Context;

    const-string p1, "camera.db"

    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Application;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 12
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 13
    invoke-virtual {p0, p1}, Landroid/app/Application;->deleteDatabase(Ljava/lang/String;)Z

    :cond_0
    const-string/jumbo p1, "rx2.purge-period-seconds"

    const-string v3, "3600"

    .line 14
    invoke-static {p1, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    sget-boolean p1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO0O0:Z

    if-eqz p1, :cond_1

    .line 16
    invoke-static {}, Lcom/uber/rxdogtag/RxDogTag;->install()V

    .line 17
    :cond_1
    invoke-static {}, Lcom/android/camera/aftersales/AftersalesManager;->checkSelf()V

    .line 18
    sget-object p1, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO00o:Ljava/lang/String;

    const-string v3, "avenger"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 19
    invoke-virtual {p0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v3, 0x2

    const-string v4, "com.android.camera"

    invoke-virtual {p1, v4, v3, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 20
    :cond_2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0oO0O0o()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OooOo()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 21
    :cond_3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0ooOoOO()I

    move-result p1

    .line 22
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O00()I

    move-result v2

    .line 23
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00ooooO()I

    move-result v3

    .line 24
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v4

    invoke-virtual {v4}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00ooooo()I

    move-result v4

    const-wide/32 v5, 0x40000000

    .line 25
    invoke-static {}, Lcom/xiaomi/compat/common/ProcessCompat;->getTotalMemory()J

    move-result-wide v7

    div-long/2addr v7, v5

    const-wide/16 v5, 0x6

    cmp-long v5, v7, v5

    if-lez v5, :cond_4

    .line 26
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O000oo()I

    move-result p1

    .line 27
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O00O0()I

    move-result v2

    .line 28
    :cond_4
    iget-object v5, p0, Lcom/android/camera/CameraAppImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "totalMemory:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "G, maxAcquireCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", maxDequeueCount:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object v5

    invoke-virtual {v5, p1, v2}, Lcom/xiaomi/camera/imagecodec/ImagePool;->init(II)V

    .line 30
    invoke-static {}, Lcom/xiaomi/camera/imagecodec/ImagePool;->getHalPoolInstance()Lcom/xiaomi/camera/imagecodec/ImagePool;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Lcom/xiaomi/camera/imagecodec/ImagePool;->init(II)V

    .line 31
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OooOo()Z

    move-result p1

    if-nez p1, :cond_5

    .line 32
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/camera/parallel/AlgoConnector;->startService(Landroid/content/Context;)V

    .line 33
    :cond_5
    invoke-static {}, Lcom/android/camera/CrashHandler;->getInstance()Lcom/android/camera/CrashHandler;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/camera/CrashHandler;->init(Landroid/app/Application;)V

    .line 34
    invoke-static {p0}, Lcom/android/camera/network/util/NetworkUtils;->bind(Landroid/app/Application;)V

    .line 35
    invoke-static {p0}, Lcom/android/camera/upgrade/UpgradeManager;->migrateForUpgrade(Landroid/content/Context;)V

    .line 36
    invoke-static {}, Lcom/android/camera/external/mivi/MIVIHelper;->requestCloudDataAsync()V

    .line 37
    invoke-static {}, Lcom/android/camera/external/perfspy/PerfspySettings;->listenSettingDataChange()V

    .line 38
    invoke-static {p0}, Lcom/android/camera/log/FileLogger;->init(Landroid/content/Context;)V

    .line 39
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/camera/performance/PerformanceManager;->init(Landroid/content/Context;)V

    .line 40
    invoke-static {}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->getInstance()Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->stopBoost()V

    .line 41
    iget-object p1, p0, Lcom/android/camera/CameraAppImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachBaseContext: cost = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public closeAllActivitiesBut(Landroid/app/Activity;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/CameraAppImpl;->getActivityCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Lcom/android/camera/CameraAppImpl;->getActivity(I)Landroid/app/Activity;

    move-result-object v2

    if-eq v2, p1, :cond_0

    .line 3
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 5
    iget-object v3, p0, Lcom/android/camera/CameraAppImpl;->mActivities:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public containsResumedCameraInStack()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/CameraAppImpl;->mActivities:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v2, p0, Lcom/android/camera/CameraAppImpl;->mActivities:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 3
    instance-of v3, v2, Lcom/android/camera/Camera;

    if-eqz v3, :cond_0

    .line 4
    check-cast v2, Lcom/android/camera/Camera;

    .line 5
    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->isActivityStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getActivity(I)Landroid/app/Activity;
    .locals 1

    if-ltz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/CameraAppImpl;->getActivityCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraAppImpl;->mActivities:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getActivityCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/CameraAppImpl;->mActivities:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    return v0
.end method

.method public isApplicationFirstLaunched()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/CameraAppImpl;->sLaunched:Z

    if-eqz v0, :cond_0

    xor-int/lit8 v0, v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/CameraAppImpl;->sLaunched:Z

    xor-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public isMainIntentActivityLaunched()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/CameraAppImpl;->mMainIntentActivityLaunched:Z

    return v0
.end method

.method public isNeedRestore()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/CameraAppImpl;->mRestoreSetting:Z

    return v0
.end method

.method public isVideoCastActivityResumed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/CameraAppImpl;->mIsVideoCastActivityResumed:Z

    return v0
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.xiaomi.camera.action.VIDEO_CAST"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/android/camera/CameraAppImpl;->mIsVideoCastActivityResumed:Z

    :cond_1
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.xiaomi.camera.action.VIDEO_CAST"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/android/camera/CameraAppImpl;->mIsVideoCastActivityResumed:Z

    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 6

    const-string/jumbo v0, "onCreate"

    .line 1
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    invoke-static {}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->getInstance()Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    move-result-object v2

    const/16 v3, 0x12c

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->startBoost(II)Z

    .line 4
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 5
    invoke-static {p0}, Lcom/android/camera/ApplicationInit;->init(Landroid/content/Context;)V

    .line 6
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    new-instance v3, LOooO0O0/OooO0O0/OooO00o/OooOOo0;

    invoke-direct {v3, p0}, LOooO0O0/OooO0O0/OooO00o/OooOOo0;-><init>(Lcom/android/camera/CameraAppImpl;)V

    invoke-virtual {v2, v3}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    .line 7
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lcom/android/camera/CameraAppImpl;->mActivities:Ljava/util/Stack;

    const/4 v2, 0x1

    .line 8
    iput-boolean v2, p0, Lcom/android/camera/CameraAppImpl;->mRestoreSetting:Z

    .line 9
    invoke-static {p0}, Lcom/android/camera/customization/ThemeResource;->init(Landroid/content/Context;)Lcom/android/camera/customization/ThemeResource;

    .line 10
    invoke-static {}, Lcom/android/camera/customization/ThemeModeManager;->getInstance()Lcom/android/camera/customization/ThemeModeManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/customization/ThemeModeManager;->setThemeMode(I)V

    .line 11
    invoke-direct {p0}, Lcom/android/camera/CameraAppImpl;->preload()V

    .line 12
    invoke-static {}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->getInstance()Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->stopBoost()V

    .line 13
    iget-object v2, p0, Lcom/android/camera/CameraAppImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreate: cost = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public removeActivity(Landroid/app/Activity;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/CameraAppImpl;->mMainIntentActivityLaunched:Z

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraAppImpl;->mActivities:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resetRestoreFlag()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/CameraAppImpl;->mRestoreSetting:Z

    return-void
.end method
