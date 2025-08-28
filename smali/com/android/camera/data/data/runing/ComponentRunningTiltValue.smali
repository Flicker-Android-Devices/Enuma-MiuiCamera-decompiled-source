.class public Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentRunningTiltValue.java"


# static fields
.field public static final TILT_CIRCLE:Ljava/lang/String; = "circle"

.field public static final TILT_PARALLEL:Ljava/lang/String; = "parallel"


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    return-void
.end method

.method private initItems()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v8, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopAlert()Lcom/android/camera2/compat/theme/MiThemeOperationTopAlertInterface;

    move-result-object v1

    const v2, 0x7f0802c1

    invoke-interface {v1, v2}, Lcom/android/camera2/compat/theme/MiThemeOperationTopAlertInterface;->getTopAlertRes(I)I

    move-result v3

    .line 3
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopAlert()Lcom/android/camera2/compat/theme/MiThemeOperationTopAlertInterface;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/android/camera2/compat/theme/MiThemeOperationTopAlertInterface;->getTopAlertBgRes(I)I

    move-result v4

    .line 4
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopAlert()Lcom/android/camera2/compat/theme/MiThemeOperationTopAlertInterface;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/android/camera2/compat/theme/MiThemeOperationTopAlertInterface;->getTopAlertRes(I)I

    move-result v5

    const v6, 0x7f1207b2

    const v7, 0x7f1200c1

    const-string v9, "circle"

    move-object v1, v8

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v9

    invoke-direct/range {v1 .. v7}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    .line 5
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopAlert()Lcom/android/camera2/compat/theme/MiThemeOperationTopAlertInterface;

    move-result-object v2

    const v3, 0x7f0802c2

    invoke-interface {v2, v3}, Lcom/android/camera2/compat/theme/MiThemeOperationTopAlertInterface;->getTopAlertRes(I)I

    move-result v11

    .line 7
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopAlert()Lcom/android/camera2/compat/theme/MiThemeOperationTopAlertInterface;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/android/camera2/compat/theme/MiThemeOperationTopAlertInterface;->getTopAlertBgRes(I)I

    move-result v12

    .line 8
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopAlert()Lcom/android/camera2/compat/theme/MiThemeOperationTopAlertInterface;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/android/camera2/compat/theme/MiThemeOperationTopAlertInterface;->getTopAlertRes(I)I

    move-result v13

    const v14, 0x7f1207b3

    const v15, 0x7f1200c2

    const-string/jumbo v16, "parallel"

    move-object v10, v1

    invoke-direct/range {v10 .. v16}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIILjava/lang/String;)V

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const-string p1, "circle"

    return-object p1
.end method

.method public getDisplayTitleString()I
    .locals 1

    const v0, 0x7f1207b6

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

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;->initItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const-string/jumbo p1, "pref_camera_tilt_shift_key"

    return-object p1
.end method

.method public isSwitchOn(I)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    const-string/jumbo v0, "pref_camera_tilt_shift_mode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public toSwitch(IZ)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    const-string/jumbo v0, "pref_camera_tilt_shift_mode"

    invoke-virtual {p1, v0, p2}, Lcom/android/camera/data/data/DataItemBase;->putBoolean(Ljava/lang/String;Z)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    return-void
.end method
