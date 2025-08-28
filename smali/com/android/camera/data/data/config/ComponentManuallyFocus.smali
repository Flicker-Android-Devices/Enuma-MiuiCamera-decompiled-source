.class public Lcom/android/camera/data/data/config/ComponentManuallyFocus;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentManuallyFocus.java"


# instance fields
.field public mIsFixedFocus:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    return-void
.end method

.method private initItems()Ljava/util/List;
    .locals 5
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
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v2, 0x7f1206f4

    const/4 v3, -0x1

    const-string v4, "1000"

    invoke-direct {v1, v3, v3, v2, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const-string v4, "manual"

    invoke-direct {v1, v3, v3, v2, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public disableUpdate()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/data/config/ComponentManuallyFocus;->mIsFixedFocus:Z

    return v0
.end method

.method public getContentDescriptionString()I
    .locals 1

    const v0, 0x7f1205e4

    return v0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const-string p1, "1000"

    return-object p1
.end method

.method public getDefaultValueDisplayString(I)I
    .locals 0

    const p1, 0x7f1206f4

    return p1
.end method

.method public getDisplayTitleString()I
    .locals 1

    const v0, 0x7f120848

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
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentManuallyFocus;->initItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xa9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_0

    const-string/jumbo p1, "pref_focus_position_key"

    return-object p1

    :cond_0
    const-string/jumbo p1, "pref_pro_video_focus_position_key"

    return-object p1

    :cond_1
    const-string/jumbo p1, "pref_fastmotion_pro_focus_position_key"

    return-object p1
.end method

.method public getValueDisplayString(I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    const p1, 0x7f1206f4

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getValueSelectedDrawable(I)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationManual()Lcom/android/camera2/compat/theme/MiThemeOperationManualInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/camera2/compat/theme/MiThemeOperationManualInterface;->getValueSelectedDrawable(Lcom/android/camera/data/data/ComponentData;I)I

    move-result p1

    return p1
.end method

.method public getValueSelectedShadowDrawable(I)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationManual()Lcom/android/camera2/compat/theme/MiThemeOperationManualInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/camera2/compat/theme/MiThemeOperationManualInterface;->getValueSelectedShadowDrawable(Lcom/android/camera/data/data/ComponentData;I)I

    move-result p1

    return p1
.end method

.method public setFixedFocusLens(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/data/data/config/ComponentManuallyFocus;->mIsFixedFocus:Z

    return-void
.end method
