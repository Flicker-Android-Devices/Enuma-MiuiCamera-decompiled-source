.class public Lcom/android/camera/data/data/config/ComponentConfigRatio;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentConfigRatio.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/data/config/ComponentConfigRatio$CameraRatio;
    }
.end annotation


# static fields
.field public static final RATIO_16X9:Ljava/lang/String; = "16x9"

.field public static final RATIO_1X1:Ljava/lang/String; = "1x1"

.field public static final RATIO_4X3:Ljava/lang/String; = "4x3"

.field public static final RATIO_FULL_16X10:Ljava/lang/String; = "16x10"

.field public static final RATIO_FULL_18X9:Ljava/lang/String; = "18x9"

.field public static final RATIO_FULL_18_7_5X9:Ljava/lang/String; = "18.75x9"

.field public static final RATIO_FULL_195X9:Ljava/lang/String; = "19.5x9"

.field public static final RATIO_FULL_19X9:Ljava/lang/String; = "19x9"

.field public static final RATIO_FULL_20X9:Ljava/lang/String; = "20x9"

.field public static final RATIO_FULL_20_5X9:Ljava/lang/String; = "20.5x9"

.field public static final RATIO_FULL_21X9:Ljava/lang/String; = "21x9"

.field public static final RATIO_FULL_9X8:Ljava/lang/String; = "9x8"


# instance fields
.field public mForceValue:Ljava/lang/String;

.field public mSupportDefaultValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public sSupport16x10:Z

.field public sSupport18_7_5x9:Z

.field public sSupport18x9:Z

.field public sSupport19_5x9:Z

.field public sSupport19x9:Z

.field public sSupport20_5x9:Z

.field public sSupport20x9:Z

.field public sSupport21x9:Z

.field public sSupport9x8:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mSupportDefaultValues:Ljava/util/Map;

    return-void
.end method

.method private checkFullSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xe4b9

    const-string v2, "21x9"

    const-string v3, "9x8"

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x177d7f

    if-eq v0, v1, :cond_1

    const v1, 0x178140

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v4

    goto :goto_1

    :cond_1
    const-string v0, "20x9"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v5

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_4

    return-object p1

    .line 2
    :cond_4
    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayRatio()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object v3

    .line 3
    :cond_5
    invoke-static {}, Lcom/android/camera/display/Display;->support21x9FullRatio()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object v2

    .line 4
    :cond_6
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x400e38e4

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    const-string p1, "4x3"

    :cond_7
    return-object p1
.end method


# virtual methods
.method public cleanDefaultValues()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mSupportDefaultValues:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method public getComponentValue(I)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/16 v0, 0xa3

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->isSquareModule()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_1
    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->checkFullSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :goto_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "16x9"

    return-object p1

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getItems()Ljava/util/List;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/ComponentDataItem;

    if-eqz v2, :cond_3

    .line 7
    iget-object v2, v2, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v0

    .line 8
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getDefaultValue(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    invoke-virtual {v0, v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OooO0O0(Z)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mSupportDefaultValues:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    move-object v0, p1

    .line 3
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->checkFullSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDisplayTitleString()I
    .locals 1

    const v0, 0x7f12076a

    return v0
.end method

.method public getItems()Ljava/util/List;
    .locals 4
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

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v1

    .line 4
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v3

    .line 5
    invoke-virtual {v3, v1, v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getActualOpenCameraId(II)I

    move-result v3

    .line 6
    invoke-virtual {v2, v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    .line 7
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->reInit(IILcom/android/camera2/CameraCapabilities;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const-string/jumbo p1, "pref_camera_picturesize_key"

    return-object p1
.end method

.method public getNextValue(I)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getPersistValue(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 4
    iget-object v3, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v3, v3, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object p1, p1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getDefaultValue(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPictureSizeRatioString(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public initSensorRatio(Ljava/util/Map;IILcom/android/camera2/CameraCapabilities;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "Lcom/android/camera/CameraSize;",
            ">;II",
            "Lcom/android/camera2/CameraCapabilities;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    const/4 v1, 0x1

    if-ne v1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OooO0O0(Z)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mSupportDefaultValues:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Lcom/android/camera/Util;->getRatio(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "16x9"

    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->reInit(IILcom/android/camera2/CameraCapabilities;)V

    return-void
.end method

.method public isSquareModule()Z
    .locals 3

    const/16 v0, 0xa3

    .line 1
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-super {p0, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "1x1"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v2
.end method

.method public reInit(IILcom/android/camera2/CameraCapabilities;)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->cleanDefaultValues()V

    .line 2
    invoke-static {}, Lcom/android/camera/display/Display;->support18x9FullRatio()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport18x9:Z

    .line 3
    invoke-static {}, Lcom/android/camera/display/Display;->support16x10FullRatio()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport16x10:Z

    .line 4
    invoke-static {}, Lcom/android/camera/display/Display;->support19_5x9FullRatio()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport19_5x9:Z

    .line 5
    invoke-static {}, Lcom/android/camera/display/Display;->support20_5x9FullRatio()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport20_5x9:Z

    .line 6
    invoke-static {}, Lcom/android/camera/display/Display;->support20x9FullRatio()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport20x9:Z

    .line 7
    invoke-static {}, Lcom/android/camera/display/Display;->support19x9FullRatio()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport19x9:Z

    .line 8
    invoke-static {}, Lcom/android/camera/display/Display;->support18_7_5x9FullRatio()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport18_7_5x9:Z

    .line 9
    invoke-static {}, Lcom/android/camera/display/Display;->getDisplayRatio()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "unknown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 10
    iput-boolean v3, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport9x8:Z

    .line 11
    iput-boolean v4, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport21x9:Z

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Lcom/android/camera/display/Display;->support21x9FullRatio()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 13
    iput-boolean v4, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport9x8:Z

    .line 14
    iput-boolean v3, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport21x9:Z

    goto :goto_0

    .line 15
    :cond_1
    iput-boolean v4, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport9x8:Z

    .line 16
    iput-boolean v4, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport21x9:Z

    .line 17
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 18
    iput-object v3, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    const/16 v3, 0xa3

    const-string v4, "4x3"

    if-eq v1, v3, :cond_22

    const/16 v5, 0xab

    if-eq v1, v5, :cond_18

    const/16 v5, 0xad

    if-eq v1, v5, :cond_22

    const/16 v5, 0xb6

    if-eq v1, v5, :cond_17

    const/16 v5, 0xcd

    if-eq v1, v5, :cond_17

    const/16 v5, 0xd5

    if-eq v1, v5, :cond_16

    const/16 v5, 0xd8

    if-eq v1, v5, :cond_16

    const/16 v5, 0xa6

    if-eq v1, v5, :cond_15

    const/16 v5, 0xa7

    if-eq v1, v5, :cond_a

    const/16 v5, 0xaf

    if-eq v1, v5, :cond_16

    const/16 v5, 0xb0

    if-eq v1, v5, :cond_17

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 19
    :pswitch_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v1

    const-class v3, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v1, v3}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 20
    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getPreviewState()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 21
    iput-object v4, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    .line 22
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v6, 0x7f080271

    const v7, 0x7f080271

    const v8, 0x7f080271

    const v9, 0x7f120766

    const v10, 0x7f120094

    const-string v11, "4x3"

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 23
    :cond_2
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v13, 0x7f080271

    const v14, 0x7f080271

    const v15, 0x7f080271

    const v16, 0x7f120766

    const v17, 0x7f120094

    const-string v18, "4x3"

    move-object v12, v1

    invoke-direct/range {v12 .. v18}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08026d

    const v5, 0x7f08026d

    const v6, 0x7f08026d

    const v7, 0x7f120767

    const v8, 0x7f120095

    const-string v9, "16x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport18x9:Z

    if-eqz v1, :cond_3

    .line 26
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08029e

    const v5, 0x7f08029e

    const v6, 0x7f08029e

    const v7, 0x7f120768

    const v8, 0x7f120096

    const-string v9, "18x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 27
    :cond_3
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport19_5x9:Z

    if-eqz v1, :cond_4

    .line 28
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08029e

    const v5, 0x7f08029e

    const v6, 0x7f08029e

    const v7, 0x7f120768

    const v8, 0x7f120096

    const-string v9, "19.5x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 29
    :cond_4
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport19x9:Z

    if-eqz v1, :cond_5

    .line 30
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08029e

    const v5, 0x7f08029e

    const v6, 0x7f08029e

    const v7, 0x7f120768

    const v8, 0x7f120096

    const-string v9, "19x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 31
    :cond_5
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport20x9:Z

    if-eqz v1, :cond_6

    .line 32
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08029e

    const v5, 0x7f08029e

    const v6, 0x7f08029e

    const v7, 0x7f120768

    const v8, 0x7f120096

    const-string v9, "20x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 33
    :cond_6
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport16x10:Z

    if-eqz v1, :cond_7

    .line 34
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08029e

    const v5, 0x7f08029e

    const v6, 0x7f08029e

    const v7, 0x7f120768

    const v8, 0x7f120096

    const-string v9, "16x10"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 35
    :cond_7
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport9x8:Z

    if-eqz v1, :cond_8

    .line 36
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08029e

    const v5, 0x7f08029e

    const v6, 0x7f08029e

    const v7, 0x7f120768

    const v8, 0x7f120096

    const-string v9, "9x8"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 37
    :cond_8
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport21x9:Z

    if-eqz v1, :cond_9

    .line 38
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08029e

    const v5, 0x7f08029e

    const v6, 0x7f08029e

    const v7, 0x7f120768

    const v8, 0x7f120096

    const-string v9, "21x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 39
    :cond_9
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport20_5x9:Z

    if-eqz v1, :cond_30

    .line 40
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08029e

    const v5, 0x7f08029e

    const v6, 0x7f08029e

    const v7, 0x7f120768

    const v8, 0x7f120096

    const-string v9, "20.5x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 41
    :cond_a
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 42
    iput-object v4, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    .line 43
    :cond_b
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSupportRealSquare()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 44
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08026e

    const v5, 0x7f08026e

    const v6, 0x7f08026e

    const v7, 0x7f120765

    const v8, 0x7f120093

    const-string v9, "1x1"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_c
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v11, 0x7f080271

    const v12, 0x7f080271

    const v13, 0x7f080271

    const v14, 0x7f120766

    const v15, 0x7f120094

    const-string v16, "4x3"

    move-object v10, v1

    invoke-direct/range {v10 .. v16}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08026d

    const v5, 0x7f08026d

    const v6, 0x7f08026d

    const v7, 0x7f120767

    const v8, 0x7f120095

    const-string v9, "16x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport18_7_5x9:Z

    if-eqz v1, :cond_d

    .line 48
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08029e

    const v5, 0x7f08029e

    const v6, 0x7f08029e

    const v7, 0x7f120768

    const v8, 0x7f120096

    const-string v9, "18.75x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 49
    :cond_d
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport18x9:Z

    if-eqz v1, :cond_e

    .line 50
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08029e

    const v5, 0x7f08029e

    const v6, 0x7f08029e

    const v7, 0x7f120768

    const v8, 0x7f120096

    const-string v9, "18x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 51
    :cond_e
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport19_5x9:Z

    if-eqz v1, :cond_f

    .line 52
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08029e

    const v5, 0x7f08029e

    const v6, 0x7f08029e

    const v7, 0x7f120768

    const v8, 0x7f120096

    const-string v9, "19.5x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 53
    :cond_f
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport19x9:Z

    if-eqz v1, :cond_10

    .line 54
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08029e

    const v5, 0x7f08029e

    const v6, 0x7f08029e

    const v7, 0x7f120768

    const v8, 0x7f120096

    const-string v9, "19x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 55
    :cond_10
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport20x9:Z

    if-eqz v1, :cond_11

    .line 56
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08029e

    const v5, 0x7f08029e

    const v6, 0x7f08029e

    const v7, 0x7f120768

    const v8, 0x7f120096

    const-string v9, "20x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 57
    :cond_11
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport16x10:Z

    if-eqz v1, :cond_12

    .line 58
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08029e

    const v5, 0x7f08029e

    const v6, 0x7f08029e

    const v7, 0x7f120768

    const v8, 0x7f120096

    const-string v9, "16x10"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 59
    :cond_12
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport9x8:Z

    if-eqz v1, :cond_13

    .line 60
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08029e

    const v5, 0x7f08029e

    const v6, 0x7f08029e

    const v7, 0x7f120768

    const v8, 0x7f120096

    const-string v9, "9x8"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 61
    :cond_13
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport21x9:Z

    if-eqz v1, :cond_14

    .line 62
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08029e

    const v5, 0x7f08029e

    const v6, 0x7f08029e

    const v7, 0x7f120768

    const v8, 0x7f120096

    const-string v9, "21x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 63
    :cond_14
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport20_5x9:Z

    if-eqz v1, :cond_30

    .line 64
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08029e

    const v5, 0x7f08029e

    const v6, 0x7f08029e

    const v7, 0x7f120768

    const v8, 0x7f120096

    const-string v9, "20.5x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_15
    const-string v1, "16x9"

    .line 65
    iput-object v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    .line 66
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08026d

    const v5, 0x7f08026d

    const v6, 0x7f08026d

    const v7, 0x7f120767

    const v8, 0x7f120095

    const-string v9, "16x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 67
    :cond_16
    :pswitch_1
    iput-object v4, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    goto/16 :goto_1

    .line 68
    :cond_17
    :pswitch_2
    iput-object v4, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    .line 69
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v11, 0x7f080271

    const v12, 0x7f080271

    const v13, 0x7f080271

    const v14, 0x7f120766

    const v15, 0x7f120094

    const-string v16, "4x3"

    move-object v10, v1

    invoke-direct/range {v10 .. v16}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_18
    if-nez p2, :cond_19

    .line 70
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000oo00()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 71
    iput-object v4, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    .line 72
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v6, 0x7f080271

    const v7, 0x7f080271

    const v8, 0x7f080271

    const v9, 0x7f120766

    const v10, 0x7f120094

    const-string v11, "4x3"

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 73
    :cond_19
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v13, 0x7f080271

    const v14, 0x7f080271

    const v15, 0x7f080271

    const v16, 0x7f120766

    const v17, 0x7f120094

    const-string v18, "4x3"

    move-object v12, v1

    invoke-direct/range {v12 .. v18}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08026d

    const v5, 0x7f08026d

    const v6, 0x7f08026d

    const v7, 0x7f120767

    const v8, 0x7f120095

    const-string v9, "16x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport18_7_5x9:Z

    if-eqz v1, :cond_1a

    .line 76
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08029e

    const v5, 0x7f08029e

    const v6, 0x7f08029e

    const v7, 0x7f120768

    const v8, 0x7f120096

    const-string v9, "18.75x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 77
    :cond_1a
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport18x9:Z

    if-eqz v1, :cond_1b

    .line 78
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08029e

    const v5, 0x7f08029e

    const v6, 0x7f08029e

    const v7, 0x7f120768

    const v8, 0x7f120096

    const-string v9, "18x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 79
    :cond_1b
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport19_5x9:Z

    if-eqz v1, :cond_1c

    .line 80
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08029e

    const v5, 0x7f08029e

    const v6, 0x7f08029e

    const v7, 0x7f120768

    const v8, 0x7f120096

    const-string v9, "19.5x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 81
    :cond_1c
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport19x9:Z

    if-eqz v1, :cond_1d

    .line 82
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08029e

    const v5, 0x7f08029e

    const v6, 0x7f08029e

    const v7, 0x7f120768

    const v8, 0x7f120096

    const-string v9, "19x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 83
    :cond_1d
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport20x9:Z

    if-eqz v1, :cond_1e

    .line 84
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08029e

    const v5, 0x7f08029e

    const v6, 0x7f08029e

    const v7, 0x7f120768

    const v8, 0x7f120096

    const-string v9, "20x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 85
    :cond_1e
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport16x10:Z

    if-eqz v1, :cond_1f

    .line 86
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08029e

    const v5, 0x7f08029e

    const v6, 0x7f08029e

    const v7, 0x7f120768

    const v8, 0x7f120096

    const-string v9, "16x10"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 87
    :cond_1f
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport9x8:Z

    if-eqz v1, :cond_20

    .line 88
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08029e

    const v5, 0x7f08029e

    const v6, 0x7f08029e

    const v7, 0x7f120768

    const v8, 0x7f120096

    const-string v9, "9x8"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 89
    :cond_20
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport21x9:Z

    if-eqz v1, :cond_21

    .line 90
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08029e

    const v5, 0x7f08029e

    const v6, 0x7f08029e

    const v7, 0x7f120768

    const v8, 0x7f120096

    const-string v9, "21x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 91
    :cond_21
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport20_5x9:Z

    if-eqz v1, :cond_30

    .line 92
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08029e

    const v5, 0x7f08029e

    const v6, 0x7f08029e

    const v7, 0x7f120768

    const v8, 0x7f120096

    const-string v9, "20.5x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 93
    :cond_22
    :goto_1
    :pswitch_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v5

    if-nez v5, :cond_23

    invoke-static {}, Lcom/android/camera/CameraSettings;->isAIWatermarkOn()Z

    move-result v5

    if-eqz v5, :cond_24

    .line 94
    :cond_23
    iput-object v4, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    :cond_24
    if-ne v1, v3, :cond_25

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->isSquareModule()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 96
    invoke-static/range {p3 .. p3}, Lcom/android/camera/module/ModuleManager;->isSupportRealSquare(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v5

    if-nez v5, :cond_25

    .line 97
    iput-object v4, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    .line 98
    :cond_25
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentIDPhoto()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 99
    iput-object v4, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->mForceValue:Ljava/lang/String;

    :cond_26
    if-ne v1, v3, :cond_27

    .line 100
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v7, 0x7f08026e

    const v8, 0x7f08026e

    const v9, 0x7f08026e

    const v10, 0x7f120765

    const v11, 0x7f120093

    const-string v12, "1x1"

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_27
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v14, 0x7f080271

    const v15, 0x7f080271

    const v16, 0x7f080271

    const v17, 0x7f120766

    const v18, 0x7f120094

    const-string v19, "4x3"

    move-object v13, v1

    invoke-direct/range {v13 .. v19}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08026d

    const v5, 0x7f08026d

    const v6, 0x7f08026d

    const v7, 0x7f120767

    const v8, 0x7f120095

    const-string v9, "16x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport18_7_5x9:Z

    if-eqz v1, :cond_28

    .line 104
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08029e

    const v5, 0x7f08029e

    const v6, 0x7f08029e

    const v7, 0x7f120768

    const v8, 0x7f120096

    const-string v9, "18.75x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 105
    :cond_28
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport18x9:Z

    if-eqz v1, :cond_29

    .line 106
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08029e

    const v5, 0x7f08029e

    const v6, 0x7f08029e

    const v7, 0x7f120768

    const v8, 0x7f120096

    const-string v9, "18x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 107
    :cond_29
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport19_5x9:Z

    if-eqz v1, :cond_2a

    .line 108
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08029e

    const v5, 0x7f08029e

    const v6, 0x7f08029e

    const v7, 0x7f120768

    const v8, 0x7f120096

    const-string v9, "19.5x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 109
    :cond_2a
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport19x9:Z

    if-eqz v1, :cond_2b

    .line 110
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08029e

    const v5, 0x7f08029e

    const v6, 0x7f08029e

    const v7, 0x7f120768

    const v8, 0x7f120096

    const-string v9, "19x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 111
    :cond_2b
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport20x9:Z

    if-eqz v1, :cond_2c

    .line 112
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08029e

    const v5, 0x7f08029e

    const v6, 0x7f08029e

    const v7, 0x7f120768

    const v8, 0x7f120096

    const-string v9, "20x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 113
    :cond_2c
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport16x10:Z

    if-eqz v1, :cond_2d

    .line 114
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08029e

    const v5, 0x7f08029e

    const v6, 0x7f08029e

    const v7, 0x7f120768

    const v8, 0x7f120096

    const-string v9, "16x10"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 115
    :cond_2d
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport9x8:Z

    if-eqz v1, :cond_2e

    .line 116
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08029e

    const v5, 0x7f08029e

    const v6, 0x7f08029e

    const v7, 0x7f120768

    const v8, 0x7f120096

    const-string v9, "9x8"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 117
    :cond_2e
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport21x9:Z

    if-eqz v1, :cond_2f

    .line 118
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08029e

    const v5, 0x7f08029e

    const v6, 0x7f08029e

    const v7, 0x7f120768

    const v8, 0x7f120096

    const-string v9, "21x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 119
    :cond_2f
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigRatio;->sSupport20_5x9:Z

    if-eqz v1, :cond_30

    .line 120
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08029e

    const v5, 0x7f08029e

    const v6, 0x7f08029e

    const v7, 0x7f120768

    const v8, 0x7f120096

    const-string v9, "20.5x9"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_30
    :goto_2
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-void

    :pswitch_data_0
    .packed-switch 0xb8
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public supportRatioSwitch()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
