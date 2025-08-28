.class public Lcom/android/camera/data/data/runing/ComponentRunningShine;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentRunningShine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/data/runing/ComponentRunningShine$ShineEntry;,
        Lcom/android/camera/data/data/runing/ComponentRunningShine$ShineType;
    }
.end annotation


# static fields
.field public static final ENTRY_NONE:I = -0x1

.field public static final ENTRY_POPUP_BEAUTY:I = 0x5

.field public static final ENTRY_POPUP_SHINE:I = 0x4

.field public static final ENTRY_TOP_BEAUTY:I = 0x2

.field public static final ENTRY_TOP_FILTER:I = 0x3

.field public static final ENTRY_TOP_SHINE:I = 0x1

.field public static final FILTER_NATIVE_NONE_ID:I = 0x0

.field public static final SHINE_BEAUTY_LEVEL_SMOOTH:Ljava/lang/String; = "2"

.field public static final SHINE_BEAUTY_LEVEL_SWITCH:Ljava/lang/String; = "1"

.field public static final SHINE_FIGURE:Ljava/lang/String; = "6"

.field public static final SHINE_FILTER:Ljava/lang/String; = "7"

.field public static final SHINE_FRONT_MAKEUPS:Ljava/lang/String; = "12"

.field public static final SHINE_FRONT_MAKEUPS_2:Ljava/lang/String; = "13"

.field public static final SHINE_FRONT_SUPER_NIGHT_BEAUTY:Ljava/lang/String; = "11"

.field public static final SHINE_KALEIDOSCOPE:Ljava/lang/String; = "10"

.field public static final SHINE_MI_LIVE_BEAUTY:Ljava/lang/String; = "9"

.field public static final SHINE_MODEL_ADVANCE:Ljava/lang/String; = "3"

.field public static final SHINE_MODEL_PORTRAIT:Ljava/lang/String; = "14"

.field public static final SHINE_MODEL_REMODELING:Ljava/lang/String; = "4"

.field public static final SHINE_MODEL_TRUESIGHT:Ljava/lang/String; = "5"

.field public static final SHINE_VIDEO_BOKEH_LEVEL:Ljava/lang/String; = "8"

.field public static final TAG:Ljava/lang/String; = "ComponentRunningShine"


# instance fields
.field public isFrontCamera:Z

.field public mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

.field public mCapabilities:Lcom/android/camera2/CameraCapabilities;

.field public mCurrentMode:I

.field public mCurrentStatus:Z

.field public mCurrentType:Ljava/lang/String;

.field public mDefaultType:Ljava/lang/String;

.field public mIsClosed:Z

.field public mIsCompare:Z

.field public mIsVideoBeautySwitchedOnMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mShineEntry:I

.field public mSupportBeautyBody:Z

.field public mSupportBeautyLevel:Z

.field public mSupportBeautyMakeUp:Z

.field public mSupportBeautyMiLive:Z

.field public mSupportBeautyMode:Z

.field public mSupportBeautyModel:Z

.field public mSupportFrontMakeups:Z

.field public mSupportFrontMakeups2:Z

.field public mSupportFrontNightBeauty:Z

.field public mSupportHalColorRententionBack:Z

.field public mSupportHalColorRententionFront:Z

.field public mSupportHalVideoBokehColorRetentionBack:Z

.field public mSupportHalVideoBokehColorRetentionFront:Z

.field public mSupportHalVideoFilter:Z

.field public mSupportPortraitBeautyItem:Z

.field public mSupportShineCompare:Z

.field public mSupportSmoothLevel:Z

.field public mTargetShow:Z

.field public mTypeElementsBeauty:Lcom/android/camera/data/data/runing/TypeElementsBeauty;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mIsVideoBeautySwitchedOnMap:Ljava/util/HashMap;

    .line 3
    new-instance p1, Lcom/android/camera/data/data/runing/TypeElementsBeauty;

    invoke-direct {p1, p0}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;-><init>(Lcom/android/camera/data/data/runing/ComponentRunningShine;)V

    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mTypeElementsBeauty:Lcom/android/camera/data/data/runing/TypeElementsBeauty;

    return-void
.end method

.method private generateBeautyLevelItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 5

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o00o()Z

    move-result v0

    const-string v1, "1"

    const v2, 0x7f080246

    const v3, 0x7f080245

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1201fa

    invoke-direct {v0, v3, v2, v4, v1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f1201fd

    invoke-direct {v0, v3, v2, v4, v1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object v0
.end method

.method private generateFigureItem(Lcom/android/camera2/CameraCapabilities;)Lcom/android/camera/data/data/ComponentDataItem;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    .line 2
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSmoothDependBeautyVersion(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f1201fa

    goto :goto_0

    :cond_0
    const p1, 0x7f1201f0

    :goto_0
    const v1, 0x7f080245

    const v2, 0x7f080246

    const-string v3, "6"

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object v0
.end method

.method private generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f0803bb

    const v2, 0x7f0803bd

    const v3, 0x7f120687

    const-string v4, "7"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object v0
.end method

.method private generateFrontSuperNightBeauty()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f080245

    const v2, 0x7f080246

    const v3, 0x7f1201fa

    const-string v4, "11"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object v0
.end method

.method private generateKaleidoscopeItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f08046a

    const v2, 0x7f12044d

    const-string v3, "10"

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object v0
.end method

.method private generateMakeups2Item()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f080245

    const v2, 0x7f080246

    const v3, 0x7f1201ff

    const-string v4, "13"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object v0
.end method

.method private generateMakeupsItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f080245

    const v2, 0x7f080246

    const v3, 0x7f1201ff

    const-string v4, "12"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object v0
.end method

.method private generateMiLiveItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f080245

    const v2, 0x7f080246

    const v3, 0x7f1201fa

    const-string v4, "9"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object v0
.end method

.method private generateModelItem(Lcom/android/camera2/CameraCapabilities;)Lcom/android/camera/data/data/ComponentDataItem;
    .locals 4

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o00o()Z

    move-result v0

    const v1, 0x7f080246

    const v2, 0x7f080245

    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    .line 3
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSmoothDependBeautyVersion(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f1201fa

    goto :goto_0

    :cond_0
    const p1, 0x7f1201fc

    .line 4
    :goto_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000OoOO()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "11"

    goto :goto_1

    :cond_1
    const-string v3, "4"

    .line 5
    :goto_1
    invoke-direct {v0, v2, v1, p1, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object v0

    .line 6
    :cond_2
    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f1201fe

    const-string v3, "3"

    invoke-direct {p1, v2, v1, v0, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p1
.end method

.method private generateProtraitBeautyItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f080245

    const v2, 0x7f080246

    const v3, 0x7f1201fa

    const-string v4, "14"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object v0
.end method

.method private generateSmoothLevelItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f080245

    const v2, 0x7f080246

    const v3, 0x7f1201fa

    const-string v4, "2"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object v0
.end method

.method private generateTsBeautyItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f080245

    const v2, 0x7f080246

    const v3, 0x7f1201fa

    const-string v4, "5"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object v0
.end method

.method private generateVideoBokeh()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f080245

    const v2, 0x7f080246

    const v3, 0x7f120418

    const-string v4, "8"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public clearArrayMap()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mIsVideoBeautySwitchedOnMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public determineStatus(I)Z
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-direct {v0}, Lcom/android/camera/fragment/beauty/BeautyValues;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isClosed()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-nez v0, :cond_2

    goto/16 :goto_4

    .line 5
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isVideoShineForceOn(I)Z

    move-result v0

    .line 6
    iget-object v2, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    move v4, v3

    move v5, v4

    move v6, v5

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/data/data/ComponentDataItem;

    if-nez v7, :cond_4

    goto :goto_0

    .line 7
    :cond_4
    iget-object v7, v7, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    const/4 v9, -0x1

    .line 8
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/16 v11, 0x61f

    if-eq v10, v11, :cond_7

    const/16 v11, 0x620

    if-eq v10, v11, :cond_6

    const/16 v11, 0x623

    if-eq v10, v11, :cond_5

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const-string v10, "9"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v9, 0x5

    goto/16 :goto_1

    :pswitch_1
    const-string v10, "8"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v9, 0xa

    goto/16 :goto_1

    :pswitch_2
    const-string v10, "7"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v9, 0x9

    goto :goto_1

    :pswitch_3
    const-string v10, "6"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v9, 0x6

    goto :goto_1

    :pswitch_4
    const-string v10, "5"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v9, 0x3

    goto :goto_1

    :pswitch_5
    const-string v10, "4"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v9, 0x2

    goto :goto_1

    :pswitch_6
    const-string v10, "3"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    move v9, v8

    goto :goto_1

    :pswitch_7
    const-string v10, "2"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v9, 0x8

    goto :goto_1

    :pswitch_8
    const-string v10, "1"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    move v9, v1

    goto :goto_1

    :cond_5
    const-string v10, "14"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v9, 0x4

    goto :goto_1

    :cond_6
    const-string v10, "11"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v9, 0x7

    goto :goto_1

    :cond_7
    const-string v10, "10"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v9, 0xb

    :cond_8
    :goto_1
    packed-switch v9, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_9
    if-nez v6, :cond_3

    .line 9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningKaleidoscope()Lcom/android/camera/data/data/runing/ComponentRunningKaleidoscope;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/data/data/runing/ComponentRunningKaleidoscope;->isSwitchOn()Z

    move-result v6

    goto/16 :goto_0

    :pswitch_a
    if-nez v5, :cond_3

    .line 10
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoBokehRatio()F

    move-result v7

    .line 11
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoBokehColorRetentionMode()I

    move-result v9

    const/4 v10, 0x0

    cmpl-float v7, v7, v10

    if-eqz v7, :cond_3

    if-eqz v9, :cond_3

    move v5, v8

    goto/16 :goto_0

    :pswitch_b
    if-nez v4, :cond_3

    .line 12
    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v7

    .line 13
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportVideoFilter()Z

    move-result v9

    if-eqz v9, :cond_9

    if-eqz v7, :cond_3

    :goto_2
    move v4, v8

    goto/16 :goto_0

    .line 14
    :cond_9
    sget v9, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-eq v7, v9, :cond_3

    if-lez v7, :cond_3

    goto :goto_2

    :pswitch_c
    if-nez v3, :cond_3

    .line 15
    iget-object v3, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-static {p1, v3}, Lcom/android/camera/CameraSettings;->isFaceBeautyOn(ILcom/android/camera/fragment/beauty/BeautyValues;)Z

    move-result v3

    goto/16 :goto_0

    :pswitch_d
    if-nez v3, :cond_3

    .line 16
    iget-object v3, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-static {p1, v3}, Lcom/android/camera/CameraSettings;->isFaceBeautyOn(ILcom/android/camera/fragment/beauty/BeautyValues;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 17
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSkinColorOpen()Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_3

    :cond_a
    move v8, v1

    :cond_b
    :goto_3
    move v3, v8

    goto/16 :goto_0

    :cond_c
    if-nez v0, :cond_d

    if-nez v3, :cond_d

    if-nez v4, :cond_d

    if-nez v5, :cond_d

    if-eqz v6, :cond_e

    :cond_d
    move v1, v8

    .line 18
    :cond_e
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    goto :goto_5

    .line 19
    :cond_f
    :goto_4
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    .line 20
    :goto_5
    iget-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public getCapabilities()Lcom/android/camera2/CameraCapabilities;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    return-object v0
.end method

.method public getCurrentStatus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    return v0
.end method

.method public getCurrentType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentType:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    return-object p1
.end method

.method public getDisplayTitleString()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTopConfigAnim(I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->determineStatus(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    .line 2
    iget p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTop()Lcom/android/camera2/compat/theme/MiThemeOperationTopInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera2/compat/theme/MiThemeOperationTopInterface;->getShineAnim()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getTopConfigEntryDesRes()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const v0, 0x7f120026

    return v0

    :cond_0
    const v0, 0x7f12005b

    return v0

    :cond_1
    const v0, 0x7f120028

    return v0
.end method

.method public getTopConfigEntryRes(I)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->determineStatus(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    .line 2
    iget v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v1, 0x1

    const v2, 0x7f08040d

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    if-eqz p1, :cond_1

    const p1, 0x7f0803bd

    goto :goto_0

    :cond_1
    const p1, 0x7f0803bb

    :goto_0
    return p1

    :cond_2
    const p1, 0x7f08042c

    return p1

    :cond_3
    return v2
.end method

.method public getTopConfigEntryShadowRes(I)I
    .locals 2

    const v0, 0x7f08040d

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const v0, 0x7f0803bb

    if-eq p1, v0, :cond_3

    const v1, 0x7f0803bd

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const v0, 0x7f08042c

    if-ne p1, v0, :cond_2

    return v0

    :cond_2
    const/4 p1, -0x1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public getTopConfigItem()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown Shine"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/16 v0, 0xd4

    return v0
.end method

.method public getTypeElementsBeauty()Lcom/android/camera/data/data/runing/TypeElementsBeauty;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mTypeElementsBeauty:Lcom/android/camera/data/data/runing/TypeElementsBeauty;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mIsClosed:Z

    return v0
.end method

.method public isShineComparing()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mIsCompare:Z

    return v0
.end method

.method public isTargetShow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mTargetShow:Z

    return v0
.end method

.method public isTopBeautyEntry()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTopFilterEntry()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVideoShineForceOn(I)Z
    .locals 2

    const/16 v0, 0xa2

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 1
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    if-eqz v0, :cond_1

    const-string v0, "front"

    goto :goto_0

    :cond_1
    const-string v0, "back"

    .line 2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mIsVideoBeautySwitchedOnMap:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_1
    return p1
.end method

.method public reInit(IILcom/android/camera2/CameraCapabilities;Z)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    .line 1
    :goto_0
    iput-boolean p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->reInitData()V

    .line 3
    iput-object p3, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    .line 4
    iput p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentMode:I

    const/4 p2, -0x1

    .line 5
    iput p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v2, 0x0

    .line 6
    iput-object v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    .line 7
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    .line 8
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    .line 9
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyModel:Z

    .line 10
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMakeUp:Z

    .line 11
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyBody:Z

    .line 12
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMiLive:Z

    .line 13
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportFrontNightBeauty:Z

    .line 14
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportFrontMakeups:Z

    .line 15
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMode:Z

    .line 16
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportShineCompare:Z

    .line 17
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportPortraitBeautyItem:Z

    .line 18
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalVideoFilter:Z

    .line 19
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalColorRententionFront:Z

    .line 20
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalColorRententionBack:Z

    .line 21
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalVideoBokehColorRetentionFront:Z

    .line 22
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalVideoBokehColorRetentionBack:Z

    const/16 v2, 0xa7

    const/4 v3, 0x3

    if-eq p1, v2, :cond_38

    const/16 v2, 0xa9

    const-string v4, "  mSupportColorRententionBack:"

    const-string v5, "mSupportColorRententionFront:"

    const-string v6, "ComponentRunningShine"

    if-eq p1, v2, :cond_36

    const/16 v2, 0xab

    const/4 v7, 0x4

    if-eq p1, v2, :cond_2f

    const/16 v2, 0xad

    if-eq p1, v2, :cond_2e

    const/16 v2, 0xb4

    if-eq p1, v2, :cond_2d

    const/16 v2, 0xaf

    if-eq p1, v2, :cond_2c

    const/16 v2, 0xb0

    if-eq p1, v2, :cond_28

    const/16 p2, 0xb7

    const-string v2, "7"

    if-eq p1, p2, :cond_1e

    const/16 p2, 0xb8

    if-eq p1, p2, :cond_1d

    const/16 p2, 0xcc

    if-eq p1, p2, :cond_15

    const/16 p2, 0xcd

    if-eq p1, p2, :cond_7

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_d

    .line 23
    :pswitch_0
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoBeauty(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 24
    iput v7, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 25
    iget-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    if-nez p1, :cond_3

    .line 26
    iput-object v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    .line 27
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSmoothDependBeautyVersion(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 28
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    .line 29
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0oO()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 31
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyBody:Z

    .line 32
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0, p3}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFigureItem(Lcom/android/camera2/CameraCapabilities;)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 33
    :cond_1
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    .line 34
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0oO()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 35
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyBody:Z

    .line 36
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0, p3}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFigureItem(Lcom/android/camera2/CameraCapabilities;)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 37
    :cond_2
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 38
    :cond_3
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSmoothDependBeautyVersion(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 39
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    .line 40
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 41
    :cond_4
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    .line 42
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 44
    :cond_6
    iput v3, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 45
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    :goto_2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OoOoOO()Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 47
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateKaleidoscopeItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 48
    :cond_7
    :pswitch_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelRearOn()Z

    move-result p4

    if-nez p4, :cond_12

    .line 49
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSmoothDependBeautyVersion(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p4

    if-nez p4, :cond_8

    sget-boolean p4, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->Oooo000:Z

    if-nez p4, :cond_8

    .line 50
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    .line 51
    iget-object p4, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v3

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 52
    :cond_8
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    .line 53
    :goto_3
    iget-boolean p4, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    if-nez p4, :cond_a

    .line 54
    iput v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 55
    iput-object v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    .line 56
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OO0O0()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 57
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyBody:Z

    .line 58
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0, p3}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFigureItem(Lcom/android/camera2/CameraCapabilities;)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 59
    :cond_9
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSmoothDependBeautyVersion(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 60
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OO0()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 61
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 62
    :cond_a
    iput v7, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 63
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p4

    invoke-virtual {p4}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000o000()Z

    move-result p4

    if-nez p4, :cond_11

    .line 64
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyModel:Z

    .line 65
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isBeautyTrueSightAlgo(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p4

    if-eqz p4, :cond_c

    if-ne p1, p2, :cond_b

    .line 66
    iget-object p2, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFrontSuperNightBeauty()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 67
    :cond_b
    iget-object p2, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateTsBeautyItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 68
    :cond_c
    iget-object p2, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0, p3}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateModelItem(Lcom/android/camera2/CameraCapabilities;)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :goto_4
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportBeautyMakeup(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 70
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMakeUp:Z

    .line 71
    :cond_d
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportMakeups(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 72
    iget-object p2, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateMakeupsItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportFrontMakeups:Z

    :cond_e
    const/16 p2, 0xa3

    if-ne p1, p2, :cond_f

    .line 74
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p4

    invoke-virtual {p4}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OO0o0()Z

    move-result p4

    if-eqz p4, :cond_f

    .line 75
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMode:Z

    :cond_f
    if-ne p1, p2, :cond_10

    .line 76
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p4

    invoke-virtual {p4}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OO0O()Z

    move-result p4

    if-eqz p4, :cond_10

    .line 77
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportShineCompare:Z

    :cond_10
    if-ne p1, p2, :cond_14

    .line 78
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportMakeups2(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 79
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateMakeups2Item()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportFrontMakeups2:Z

    goto :goto_5

    .line 81
    :cond_11
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSmoothDependBeautyVersion(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 82
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 83
    :cond_12
    iget-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    if-nez p1, :cond_13

    .line 84
    iput v3, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    goto :goto_5

    .line 85
    :cond_13
    iput v7, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 86
    :cond_14
    :goto_5
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 87
    :cond_15
    :pswitch_2
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoBeauty(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 88
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSmoothDependBeautyVersion(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_16

    const/4 p1, 0x2

    .line 89
    iput p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 90
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    .line 91
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 92
    :cond_16
    iput v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 93
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    .line 94
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_17
    :goto_6
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoFilter(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    .line 96
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportVideoFilter: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_19

    .line 97
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoMasterFilter(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_19

    .line 98
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalVideoFilter:Z

    .line 99
    iget-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    if-nez p1, :cond_18

    .line 100
    iput-object v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    .line 101
    :cond_18
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_19
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoBokehAdjust(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    .line 103
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportVideoBokehLevel:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1a

    if-eqz p4, :cond_1a

    .line 104
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateVideoBokeh()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_1a
    iget-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    invoke-static {p3, p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoBokehColorRetention(Lcom/android/camera2/CameraCapabilities;Z)Z

    move-result p1

    .line 106
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "isSupportVideoBokehColorRetention:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1c

    .line 107
    iget-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    if-eqz p1, :cond_1b

    .line 108
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalVideoBokehColorRetentionFront:Z

    goto :goto_7

    .line 109
    :cond_1b
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalVideoBokehColorRetentionBack:Z

    .line 110
    :cond_1c
    :goto_7
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoFilterColorRetentionFront(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalColorRententionFront:Z

    .line 111
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoFilterColorRetentionBack(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalColorRententionBack:Z

    .line 112
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalColorRententionFront:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalColorRententionBack:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v1, :cond_3a

    .line 114
    iput v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    goto/16 :goto_d

    .line 115
    :cond_1d
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    goto/16 :goto_d

    .line 116
    :cond_1e
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0oO0()Z

    move-result p1

    if-eqz p1, :cond_27

    .line 117
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSmoothDependBeautyVersion(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1f

    .line 118
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    .line 119
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 120
    :cond_1f
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    .line 121
    :goto_8
    iget-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    if-nez p1, :cond_22

    .line 122
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSmoothDependBeautyVersion(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_20

    .line 123
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OO0O0()Z

    move-result p1

    if-eqz p1, :cond_27

    .line 124
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyBody:Z

    .line 125
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0, p3}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFigureItem(Lcom/android/camera2/CameraCapabilities;)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 126
    :cond_20
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OO0O0()Z

    move-result p1

    if-eqz p1, :cond_21

    .line 127
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oooo0()Z

    move-result p1

    if-nez p1, :cond_21

    .line 128
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyBody:Z

    .line 129
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0, p3}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFigureItem(Lcom/android/camera2/CameraCapabilities;)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 130
    :cond_21
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 131
    :cond_22
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000OoOO()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 132
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    .line 133
    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    goto :goto_9

    .line 134
    :cond_23
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSmoothDependBeautyVersion(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_25

    .line 135
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000o000()Z

    move-result p1

    if-nez p1, :cond_24

    .line 136
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0oO()Z

    move-result p1

    if-eqz p1, :cond_24

    .line 137
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMiLive:Z

    .line 138
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateMiLiveItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 139
    :cond_24
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    .line 140
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 141
    :cond_25
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000o000()Z

    move-result p1

    if-nez p1, :cond_26

    .line 142
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0oO()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 143
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMiLive:Z

    .line 144
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateMiLiveItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 145
    :cond_26
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    .line 146
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_27
    :goto_9
    iput-object v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    .line 148
    iput v7, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 149
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance p2, Lcom/android/camera/data/data/ComponentDataItem;

    const p3, 0x7f0803bb

    const p4, 0x7f0803bd

    const v1, 0x7f120687

    invoke-direct {p2, p3, p4, v1, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OoOoOO()Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 151
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateKaleidoscopeItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 152
    :cond_28
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isBeautyTrueSightAlgo(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_2b

    .line 153
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oOoOO()Z

    move-result p1

    if-nez p1, :cond_29

    goto :goto_a

    .line 154
    :cond_29
    iput v7, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 155
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSmoothDependBeautyVersion(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_2a

    .line 156
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    .line 157
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 158
    :cond_2a
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    .line 159
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 160
    :cond_2b
    :goto_a
    iput p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    goto/16 :goto_d

    .line 161
    :cond_2c
    iput v3, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 162
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 163
    :cond_2d
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoFilter(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_3a

    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoMasterFilter(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_3a

    .line 164
    iput v3, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 165
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalVideoFilter:Z

    .line 167
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoFilterColorRetentionBack(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalColorRententionBack:Z

    .line 168
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalColorRententionFront:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalColorRententionBack:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 169
    :cond_2e
    iget-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    if-eqz p1, :cond_3a

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OoO00()Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 170
    iput v7, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 171
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    .line 172
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportFrontNightBeauty:Z

    .line 173
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFrontSuperNightBeauty()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 174
    :cond_2f
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p4

    invoke-virtual {p4}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OO0OO()Z

    move-result p4

    if-nez p4, :cond_31

    .line 175
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p4

    invoke-virtual {p4}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OOOo0()Z

    move-result p4

    if-eqz p4, :cond_30

    goto :goto_b

    .line 176
    :cond_30
    iput p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    goto/16 :goto_d

    .line 177
    :cond_31
    :goto_b
    iput v7, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 178
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p2

    invoke-virtual {p2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OO0OO()Z

    move-result p2

    if-eqz p2, :cond_35

    .line 179
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p2

    invoke-virtual {p2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OO0O()Z

    move-result p2

    if-eqz p2, :cond_32

    iget-boolean p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    if-eqz p2, :cond_32

    .line 180
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportShineCompare:Z

    .line 181
    :cond_32
    iget-boolean p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    invoke-static {p3, p1, p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportPortraitBeautyItem(Lcom/android/camera2/CameraCapabilities;IZ)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 182
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyModel:Z

    .line 183
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    .line 184
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportPortraitBeautyItem:Z

    .line 185
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateProtraitBeautyItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 186
    :cond_33
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSmoothDependBeautyVersion(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 187
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    .line 188
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 189
    :cond_34
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    .line 190
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    :goto_c
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isBeautyModeTextureVersion(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 192
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMakeUp:Z

    .line 193
    :cond_35
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OOOo0()Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 194
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 195
    :cond_36
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoFilter(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_3a

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OOooO()Z

    move-result p1

    if-nez p1, :cond_37

    .line 196
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OOooo()Z

    move-result p1

    if-eqz p1, :cond_3a

    :cond_37
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoMasterFilter(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_3a

    .line 197
    iput v3, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 198
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalVideoFilter:Z

    .line 200
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoFilterColorRetentionBack(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalColorRententionBack:Z

    .line 201
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalColorRententionFront:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalColorRententionBack:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 202
    :cond_38
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OOOo()Z

    move-result p1

    if-nez p1, :cond_39

    goto :goto_d

    .line 203
    :cond_39
    iput v3, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    .line 204
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_3a
    :goto_d
    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    if-nez p1, :cond_3b

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3b

    .line 206
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object p1, p1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    .line 207
    :cond_3b
    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentType:Ljava/lang/String;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public reInitData()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_0
    return-void
.end method

.method public setClosed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mIsClosed:Z

    return-void
.end method

.method public setCurrentType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentType:Ljava/lang/String;

    return-void
.end method

.method public setShineComparation(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mIsCompare:Z

    return-void
.end method

.method public setTargetShow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mTargetShow:Z

    return-void
.end method

.method public setVideoShineForceOn(IZ)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    if-eqz v0, :cond_0

    const-string v0, "front"

    goto :goto_0

    :cond_0
    const-string v0, "back"

    .line 2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mIsVideoBeautySwitchedOnMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public supportBeautyBody()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyBody:Z

    return v0
.end method

.method public supportBeautyLevel()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    return v0
.end method

.method public supportBeautyMakeUp()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMakeUp:Z

    return v0
.end method

.method public supportBeautyMiLive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMiLive:Z

    return v0
.end method

.method public supportBeautyMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMode:Z

    return v0
.end method

.method public supportBeautyModel()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyModel:Z

    return v0
.end method

.method public supportColorRentention()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalColorRententionFront:Z

    return v0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalColorRententionBack:Z

    return v0
.end method

.method public supportFcNoneBeautyModeTsBeauty()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentMode:I

    iget-boolean v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    invoke-static {v0, v1, v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isFcNoneBeautyModeTsBeauty(Lcom/android/camera2/CameraCapabilities;IZ)Z

    move-result v0

    return v0
.end method

.method public supportFrontMakeups()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportFrontMakeups:Z

    return v0
.end method

.method public supportFrontMakeups2()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportFrontMakeups2:Z

    return v0
.end method

.method public supportFrontNightBeauty()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportFrontNightBeauty:Z

    return v0
.end method

.method public supportPopUpEntry()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public supportPortraitBeautyItem()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportPortraitBeautyItem:Z

    return v0
.end method

.method public supportShineCompare()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportShineCompare:Z

    return v0
.end method

.method public supportSmoothLevel()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    return v0
.end method

.method public supportTopConfigEntry()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method public supportVideoBokehColorRetention()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalVideoBokehColorRetentionFront:Z

    return v0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalVideoBokehColorRetentionBack:Z

    return v0
.end method

.method public supportVideoFilter()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalVideoFilter:Z

    return v0
.end method
