.class public Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;
.super Lcom/android/camera/fragment/mode/FragmentMoreModeBase;
.source "FragmentMoreModeNormal.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MoreModeNormal"


# instance fields
.field public mEditIcon:Landroid/view/View;

.field public mModeContain:Landroid/widget/FrameLayout;

.field public mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

.field public mMoreModeV1:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV1;

.field public mMoreModeV2:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;

.field public mNewMoreModeRoot:Landroid/widget/FrameLayout;

.field public mScanIcon:Landroid/view/View;

.field public mSupportOrientation:Z

.field public mSwitchIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;-><init>()V

    .line 2
    new-instance v0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV1;

    invoke-direct {v0}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV1;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mMoreModeV1:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV1;

    .line 3
    new-instance v0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;

    invoke-direct {v0}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mMoreModeV2:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->useNewMoreTabStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mMoreModeV2:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mMoreModeV1:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV1;

    :goto_0
    iput-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    return-void
.end method

.method private isDataChanged(Ljava/util/List;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v4

    :cond_3
    return v1
.end method

.method private notifyDataChanged()V
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->getModeAdapter()Lcom/android/camera/fragment/mode/ModeAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/mode/ModeAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/ComponentModuleList;->getMoreItems()Ljava/util/List;

    move-result-object v1

    .line 5
    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->isDataChanged(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->getModeAdapter()Lcom/android/camera/fragment/mode/ModeAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/mode/ModeAdapter;->setItems(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private switchStyle(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mDownloadingFeature:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getMoreModeTabStyle()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->switchType()V

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mRootView:Landroid/view/View;

    if-nez v1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->getModeList(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 7
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 9
    iget-object v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mRootView:Landroid/view/View;

    invoke-super {p0, v1}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->initView(Landroid/view/View;)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->notifyDataChanged()V

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mMoreModeV1:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV1;

    iget-object v2, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV1;->getModeList(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mMoreModeV2:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;

    iget-object v4, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v4}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->getModeList(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    .line 13
    check-cast p1, Landroid/widget/ImageView;

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v4, :cond_3

    goto :goto_1

    :cond_3
    const v0, 0x7f080382

    .line 14
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f080383

    .line 15
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    move v0, v3

    goto :goto_1

    :cond_4
    const v0, 0x7f080384

    .line 16
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f080385

    .line 17
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    move v0, v4

    .line 18
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->updateSwitchIcon(I)V

    .line 19
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->setMoreModeTabStyle(I)V

    if-ne v0, v4, :cond_5

    const-string/jumbo p1, "vale_enter_more_mode_tab_new"

    goto :goto_2

    :cond_5
    const-string/jumbo p1, "vale_enter_more_mode_tab_old"

    .line 20
    :goto_2
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackSwitchTabStyle(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->getModeAdapter()Lcom/android/camera/fragment/mode/ModeAdapter;

    move-result-object p1

    iget v5, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {p1, v5}, Lcom/android/camera/fragment/mode/ModeAdapter;->setRotate(I)V

    if-eqz v0, :cond_7

    if-eq v0, v4, :cond_6

    goto :goto_3

    .line 22
    :cond_6
    iget-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mNewMoreModeRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 23
    invoke-static {v1}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 24
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 25
    invoke-static {v2}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 26
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    instance-of p1, p1, Lcom/android/camera/fragment/mode/ModeAdapter;

    if-eqz p1, :cond_8

    .line 27
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_3

    .line 28
    :cond_7
    invoke-static {v2}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 29
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 30
    iget-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mNewMoreModeRoot:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 31
    invoke-static {v1}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 32
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 33
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 34
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->getModeAdapter()Lcom/android/camera/fragment/mode/ModeAdapter;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/camera/fragment/mode/ModeAdapter;->setAnimFlags(I)V

    return-void
.end method

.method private updateMoreMode()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mMoreModeV1:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV1;

    iget-object v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV1;->getModeList(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mMoreModeV2:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;

    iget-object v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    if-eq v0, v1, :cond_2

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->getModeList(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private updateSwitchIcon(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->supportMoreModeNewStyle()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mSwitchIcon:Landroid/widget/ImageView;

    const v0, 0x7f080384

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mSwitchIcon:Landroid/widget/ImageView;

    const v0, 0x7f080385

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mSwitchIcon:Landroid/widget/ImageView;

    const v0, 0x7f080382

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mSwitchIcon:Landroid/widget/ImageView;

    const v0, 0x7f080383

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public applyEnterAnim()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mModeContain:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/16 v2, 0x12c

    .line 2
    invoke-static {v0, v1, v2}, Lcom/android/camera/animation/FolmeUtils;->animationSlide(Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method public createLayoutManager(Landroid/content/Context;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-interface {v0, p1}, Lcom/android/camera/fragment/mode/IMoreMode;->createLayoutManager(Landroid/content/Context;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    return-object p1
.end method

.method public createModeItemDecoration(Landroid/content/Context;Lcom/android/camera/fragment/mode/IMoreMode;)Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/fragment/mode/IMoreMode;->createModeItemDecoration(Landroid/content/Context;Lcom/android/camera/fragment/mode/IMoreMode;)Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object p1

    return-object p1
.end method

.method public getCountPerLine()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-interface {v0}, Lcom/android/camera/fragment/mode/IMoreMode;->getCountPerLine()I

    move-result v0

    return v0
.end method

.method public getFragmentInto()I
    .locals 1

    const v0, 0xfff5

    return v0
.end method

.method public getHeaderRes()I
    .locals 1

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o000()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0d00b3

    goto :goto_0

    :cond_0
    const v0, 0x7f0d00b2

    :goto_0
    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d00b0

    return v0
.end method

.method public getModeList(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-interface {v0, p1}, Lcom/android/camera/fragment/mode/IMoreMode;->getModeList(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    return-object p1
.end method

.method public getType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    invoke-interface {v0}, Lcom/android/camera/fragment/mode/IMoreMode;->getType()I

    move-result v0

    return v0
.end method

.method public go2Custom()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    const-class v2, Lcom/android/camera/fragment/settings/PreferenceExtraActivity;

    goto :goto_0

    :cond_0
    const-class v2, Lcom/android/camera/fragment/settings/PreferenceExtraPadActivity;

    :goto_0
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0xfe

    const-string v3, "from_where"

    .line 4
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "target_tag"

    const-string v3, "CustomizationFragment"

    .line 5
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/CameraIntentManager;->isStartActivityWhenLocked(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 7
    invoke-static {v1, v2}, Lcom/android/camera/CameraIntentManager;->setStartActivityWhenLocked(Landroid/content/Intent;Z)V

    .line 8
    :cond_1
    instance-of v2, v0, Lcom/android/camera/ActivityBase;

    if-eqz v2, :cond_2

    .line 9
    check-cast v0, Lcom/android/camera/ActivityBase;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/android/camera/ActivityBase;->setJumpFlag(I)V

    .line 10
    :cond_2
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    const-string v1, "attr_custom_camera"

    .line 11
    invoke-static {v1, v0}, Lcom/android/camera/statistic/MistatsWrapper;->settingClickEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    invoke-static {v1}, Lcom/android/camera/statistic/MistatsWrapper;->customizeCameraSettingClick(Ljava/lang/String;)V

    return-void
.end method

.method public hide()V
    .locals 3

    const-string v0, "MoreModeNormal"

    const-string v1, "hideMore"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz v0, :cond_0

    const/16 v1, 0x16

    .line 3
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result v1

    const v2, 0xfff5

    if-ne v1, v2, :cond_0

    const/16 v1, 0x1e

    const/4 v2, 0x0

    new-array v2, v2, [I

    .line 4
    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    :cond_0
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mMoreModeV1:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV1;

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV1;->getModeList(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->useNewMoreTabStyle()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mMoreModeV2:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->getModeList(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->useNewMoreTabStyle()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    invoke-super {p0, p1}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->initView(Landroid/view/View;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initView isLandscape : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/display/Display;->isLandscape()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MoreModeNormal"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->getHeaderRes()I

    move-result v1

    move-object v4, p1

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a02d3

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 8
    instance-of v4, v1, Lcom/android/camera/Camera;

    if-eqz v4, :cond_2

    .line 9
    check-cast v1, Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getIsSupportOrientation()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mSupportOrientation:Z

    .line 10
    :cond_2
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 11
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o000()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f0a0301

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mScanIcon:Landroid/view/View;

    .line 13
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mScanIcon:Landroid/view/View;

    iget v4, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setRotation(F)V

    .line 15
    iget-object v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mScanIcon:Landroid/view/View;

    invoke-static {v1}, Lcom/android/camera/animation/FolmeUtils;->touchTint(Landroid/view/View;)V

    :cond_3
    const v1, 0x7f0a02d2

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mEditIcon:Landroid/view/View;

    .line 17
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-boolean v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mSupportOrientation:Z

    if-nez v1, :cond_4

    .line 19
    iget-object v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mEditIcon:Landroid/view/View;

    iget v4, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setRotation(F)V

    .line 20
    :cond_4
    iget-object v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mEditIcon:Landroid/view/View;

    invoke-static {v1}, Lcom/android/camera/animation/FolmeUtils;->touchTint(Landroid/view/View;)V

    .line 21
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->supportMoreModeNewStyle()Z

    move-result v1

    if-eqz v1, :cond_6

    const v1, 0x7f0a02d7

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mSwitchIcon:Landroid/widget/ImageView;

    .line 23
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 24
    iget-object v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mSwitchIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-boolean v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mSupportOrientation:Z

    if-nez v1, :cond_5

    .line 26
    iget-object v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mSwitchIcon:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setRotation(F)V

    .line 27
    :cond_5
    iget-object v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mSwitchIcon:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/android/camera/animation/FolmeUtils;->touchTint(Landroid/view/View;)V

    :cond_6
    const v1, 0x7f0a02d6

    .line 28
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070654

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 31
    invoke-static {}, Lcom/android/camera/display/Display;->isLandscape()Z

    move-result v6

    if-eqz v6, :cond_7

    move v6, v3

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/android/camera/display/Display;->getMarginEnd()I

    move-result v6

    :goto_2
    add-int/2addr v5, v6

    .line 32
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 33
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0a02ef

    .line 34
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mNewMoreModeRoot:Landroid/widget/FrameLayout;

    .line 35
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->useNewMoreTabStyle()Z

    move-result v1

    if-eqz v1, :cond_8

    move v2, v3

    :cond_8
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 36
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getMoreModeTabStyle()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->updateSwitchIcon(I)V

    .line 37
    invoke-static {}, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->getInstance()Lcom/android/camera/fragment/mode/MoreModeListAnimation;

    move-result-object p1

    iget-object v1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mMoreModeV1:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV1;

    iget-object v2, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mMoreModeV2:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;

    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/ComponentModuleList;->getMoreItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p1, v1, v2, v4}, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->initSwitchAnimation(Lcom/android/camera/fragment/mode/IMoreMode;Lcom/android/camera/fragment/mode/IMoreMode;I)V

    .line 38
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 39
    invoke-static {}, Lcom/android/camera/display/Display;->getTopBarHeight()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 40
    invoke-static {}, Lcom/android/camera/display/Display;->getTopMargin()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 41
    iget-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mRootView:Landroid/view/View;

    const v0, 0x7f0a02c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mModeContain:Landroid/widget/FrameLayout;

    .line 42
    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 43
    iget-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mModeContain:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 44
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayThin()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_9

    .line 45
    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 46
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 47
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_3

    .line 48
    :cond_9
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 49
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 50
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 51
    :goto_3
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mModeContain:Landroid/widget/FrameLayout;

    .line 52
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 53
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 54
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomBarHeight()I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 p1, 0x11

    .line 55
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_4

    .line 56
    :cond_a
    invoke-static {}, Lcom/android/camera/display/Display;->getTopHeight()I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 p1, 0x51

    .line 57
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_4
    return-void
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    .line 2
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xfe

    if-eq p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->hide()V

    :cond_0
    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->notifyDataChanged(II)V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->notifyDataChanged()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->onClick(Landroid/view/View;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a02d2

    const-string v2, "MoreModeNormal"

    if-eq v0, v1, :cond_2

    const v1, 0x7f0a02d7

    if-eq v0, v1, :cond_1

    const p1, 0x7f0a0301

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "onClick: open_scan_app"

    .line 3
    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->startScannerApp()V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "onClick: more_tab_switch"

    .line 5
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->switchStyle(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    const-string/jumbo p1, "onClick: more_mode_edit"

    .line 7
    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->go2Custom()V

    :goto_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onDestroyView()V

    .line 2
    invoke-static {}, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->getInstance()Lcom/android/camera/fragment/mode/MoreModeListAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->releaseSwitchAnimation()V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->animateHide(Landroid/view/View;)Lmiuix/animation/IVisibleStyle;

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->applyEnterAnim()V

    return-void
.end method

.method public provideOrientationChanged(ILjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->provideOrientationChanged(ILjava/util/List;I)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->initView(Landroid/view/View;)V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->updateMoreMode()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->initView(Landroid/view/View;)V

    .line 6
    invoke-direct {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->updateMoreMode()V

    :cond_2
    :goto_0
    return-void
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->provideRotateItem(Ljava/util/List;I)V

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mSupportOrientation:Z

    if-nez v0, :cond_2

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mScanIcon:Landroid/view/View;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->supportMoreModeNewStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mSwitchIcon:Landroid/widget/ImageView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mEditIcon:Landroid/view/View;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->getModeAdapter()Lcom/android/camera/fragment/mode/ModeAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->getModeAdapter()Lcom/android/camera/fragment/mode/ModeAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/mode/ModeAdapter;->setRotate(I)V

    .line 10
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "provideRotateItem type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->getType()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MoreModeNormal"

    invoke-static {v0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object p2, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeBase;->mRootView:Landroid/view/View;

    if-nez p2, :cond_4

    return-void

    .line 12
    :cond_4
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->getModeList(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    if-nez p2, :cond_5

    return-void

    .line 13
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->getType()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 14
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 15
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 16
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->getType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_8

    .line 17
    :goto_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 18
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    .line 19
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 20
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_7

    .line 21
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    return-void
.end method

.method public supportMoreModeNewStyle()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public switchType()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->getType()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mMoreModeV2:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;

    iput-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mMoreModeV1:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV1;

    iput-object v0, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->mMoreMode:Lcom/android/camera/fragment/mode/IMoreMode;

    .line 4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "switchType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera/fragment/mode/FragmentMoreModeNormal;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MoreModeNormal"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
