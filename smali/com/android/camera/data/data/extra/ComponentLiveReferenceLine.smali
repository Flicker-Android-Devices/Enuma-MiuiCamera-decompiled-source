.class public Lcom/android/camera/data/data/extra/ComponentLiveReferenceLine;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentLiveReferenceLine.java"


# static fields
.field public static REFERENCELINE_TYPE:Ljava/lang/String; = "jiugongge"

.field public static final REFERENCE_LINE_GOLDEN_SECTION:Ljava/lang/String; = "golden_section"

.field public static final REFERENCE_LINE_JIUGONGGE:Ljava/lang/String; = "jiugongge"

.field public static final REFERENCE_LINE_LEFT_GOLDEN_SPIRAL:Ljava/lang/String; = "left_golden_spiral"

.field public static final REFERENCE_LINE_RIGHT_GOLDEN_SPIRAL:Ljava/lang/String; = "right_golden_spiral"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/data/data/extra/DataItemLive;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    return-void
.end method


# virtual methods
.method public getComponentValue(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const-string p1, "jiugongge"

    return-object p1
.end method

.method public getDisplayTitleString()I
    .locals 1

    const v0, 0x7f12077d

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
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTopMenu()Lcom/android/camera2/compat/theme/MiThemeOperationTopMenuInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v2, v0, v1, v3}, Lcom/android/camera2/compat/theme/MiThemeOperationTopMenuInterface;->reInit(IILjava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const-string/jumbo p1, "pref_camera_referenceline_type_key"

    return-object p1
.end method

.method public setComponentValue(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method
