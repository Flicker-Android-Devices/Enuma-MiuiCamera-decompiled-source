.class public Lcom/android/camera/fragment/beauty/MakeupParamsFragment;
.super Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;
.source "MakeupParamsFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MakeupParamsFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getClassString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShineType()Ljava/lang/String;
    .locals 1

    const-string v0, "3"

    return-object v0
.end method

.method public initExtraType()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mAlphaElement:I

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mBetaElement:I

    return-void
.end method

.method public onAdapterItemClick(Lcom/android/camera/data/data/TypeItem;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb4

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment;->getShineType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/camera/data/data/TypeItem;->mKeyOrType:Ljava/lang/String;

    iget v3, p1, Lcom/android/camera/data/data/TypeItem;->mDisplayNameRes:I

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;->onMakeupItemSelected(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 4
    iget-object p1, p1, Lcom/android/camera/data/data/TypeItem;->mKeyOrType:Ljava/lang/String;

    const-string v0, "3"

    invoke-static {v0, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackBeautyClick(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onClearClick()V
    .locals 1

    const-string v0, "0"

    .line 1
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setSkinColor(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/android/camera/fragment/beauty/ShineHelper;->clearBeauty()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->selectFirstItem()V

    return-void
.end method

.method public onResetClick()V
    .locals 2

    const-string v0, "MakeupParamsFragment"

    const-string/jumbo v1, "onResetClick"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->onResetClick()V

    const-string v0, "0"

    .line 3
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setSkinColor(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/android/camera/fragment/beauty/ShineHelper;->resetBeauty()V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->selectFirstItem()V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mItemList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12022a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->toast(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
