.class public Lcom/android/camera/fragment/idcard/FragmentIDCard;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentIDCard.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$IDCardModeProtocol;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public mCurrentPictureName:Ljava/lang/String;

.field public mEditPopupTip:Landroid/view/View;

.field public mGotoInputDialog:Landroid/view/View;

.field public mInCard:Ljava/lang/Boolean;

.field public mIsPopupTipReady:Z

.field public mOnStarted:Z

.field public mPrivacyWatermarkView:Lcom/android/camera/privacywatermark/PrivacyWatermarkView;

.field public mRoot:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const-string v0, "ID_CARD_PICTURE_1"

    .line 2
    iput-object v0, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mCurrentPictureName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mInCard:Ljava/lang/Boolean;

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mIsPopupTipReady:Z

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mOnStarted:Z

    return-void
.end method

.method private changeIDCardView(Z)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/idcard/IDCardView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/camera/fragment/idcard/IDCardView;-><init>(Landroid/content/Context;Z)V

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const v1, 0x7f120443

    goto :goto_0

    :cond_0
    const v1, 0x7f120442

    .line 6
    :goto_0
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertDocumentTip(I)V

    :cond_1
    if-eqz p1, :cond_2

    const-string p1, "ID_CARD_PICTURE_1"

    .line 7
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->setCurrentPictureName(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p1, "ID_CARD_PICTURE_2"

    .line 8
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->setCurrentPictureName(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private hideGotoInputDialog()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->isShowingGotoInputDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mGotoInputDialog:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetGone(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private hideOrShowEditPopupTip(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mIsPopupTipReady:Z

    if-eqz v0, :cond_2

    sget-boolean v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooO0OO:Z

    if-nez v0, :cond_2

    sget-boolean v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->Oooo0OO:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/Util;->isFromSecureKeyguard(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    new-instance p1, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    iget-object v0, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mEditPopupTip:Landroid/view/View;

    invoke-direct {p1, v0}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mEditPopupTip:Landroid/view/View;

    invoke-static {p1}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private isShowingGotoInputDialog()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mGotoInputDialog:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setCurrentPictureName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mCurrentPictureName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPrivacyWatermarkEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->hideOrShowPrivacyWatermarkView(Z)V

    :cond_0
    return-void
.end method

.method public synthetic OooO00o(Landroid/view/View;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->hideGotoInputDialog()V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ActivityBase;

    const/4 v0, 0x2

    .line 5
    invoke-virtual {p1, v0}, Lcom/android/camera/ActivityBase;->setJumpFlag(I)V

    .line 6
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    const-class v0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;

    goto :goto_0

    :cond_0
    const-class v0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditPadActivity;

    .line 8
    :goto_0
    invoke-static {p1, v0}, Lcom/android/camera/ActivityLauncher;->launch(Landroid/app/Activity;Ljava/lang/Class;)V

    return-void
.end method

.method public synthetic OooO0O0(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->hideGotoInputDialog()V

    return-void
.end method

.method public synthetic OooO0OO(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->hideGotoInputDialog()V

    return-void
.end method

.method public callBackEvent()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->getCurrentPictureName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ID_CARD_PICTURE_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->changeIDCardView(Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const/16 v1, 0xba

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getEntranceMode(I)I

    move-result v0

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xb3

    .line 5
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;

    const v2, 0x7f120807

    .line 6
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;->changeModeByNewMode(ILjava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public getCurrentPictureName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mCurrentPictureName:Ljava/lang/String;

    return-object v0
.end method

.method public getFragmentInto()I
    .locals 1

    const v0, 0xffff0

    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d008d

    return v0
.end method

.method public hideOrShowPrivacyWatermarkView(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mPrivacyWatermarkView:Lcom/android/camera/privacywatermark/PrivacyWatermarkView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mPrivacyWatermarkView:Lcom/android/camera/privacywatermark/PrivacyWatermarkView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->hideOrShowEditPopupTip(Z)V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f0a01e7

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mRoot:Landroid/view/ViewGroup;

    const v0, 0x7f0a04b9

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mGotoInputDialog:Landroid/view/View;

    const v1, 0x7f0a04c0

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mGotoInputDialog:Landroid/view/View;

    const v2, 0x7f0a04bd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 5
    iget-object v2, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mGotoInputDialog:Landroid/view/View;

    const v3, 0x7f0a04bf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 6
    iget-object v3, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mGotoInputDialog:Landroid/view/View;

    const v4, 0x7f0a04be

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f120347

    .line 7
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    const v4, 0x7f120346

    .line 8
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f120345

    .line 9
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f120344

    .line 10
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 11
    new-instance v1, LOooO0O0/OooO0O0/OooO00o/Ooooo00/OoooooO/OooO00o;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/Ooooo00/OoooooO/OooO00o;-><init>(Lcom/android/camera/fragment/idcard/FragmentIDCard;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    new-instance v1, LOooO0O0/OooO0O0/OooO00o/Ooooo00/OoooooO/OooO0O0;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/Ooooo00/OoooooO/OooO0O0;-><init>(Lcom/android/camera/fragment/idcard/FragmentIDCard;)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mGotoInputDialog:Landroid/view/View;

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setRotation(F)V

    .line 15
    new-instance v0, LOooO0O0/OooO0O0/OooO00o/Ooooo00/OoooooO/OooO0Oo;

    invoke-direct {v0, p0}, LOooO0O0/OooO0O0/OooO00o/Ooooo00/OoooooO/OooO0Oo;-><init>(Lcom/android/camera/fragment/idcard/FragmentIDCard;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0354

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/privacywatermark/PrivacyWatermarkView;

    iput-object v0, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mPrivacyWatermarkView:Lcom/android/camera/privacywatermark/PrivacyWatermarkView;

    const/16 v2, 0x5a

    .line 17
    invoke-virtual {v0, v2}, Lcom/android/camera/privacywatermark/PrivacyWatermarkView;->setRotation(I)V

    .line 18
    invoke-static {}, Lcom/android/camera/Util;->getCameraPreviewRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 19
    iget-object v2, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mPrivacyWatermarkView:Lcom/android/camera/privacywatermark/PrivacyWatermarkView;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/privacywatermark/PrivacyWatermarkView;->setViewSize(II)V

    .line 20
    iget-object v2, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mPrivacyWatermarkView:Lcom/android/camera/privacywatermark/PrivacyWatermarkView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 21
    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 22
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mPrivacyWatermarkView:Lcom/android/camera/privacywatermark/PrivacyWatermarkView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0a033b

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mEditPopupTip:Landroid/view/View;

    const v0, 0x7f0a033f

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f12060e

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 25
    iget-object p1, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mEditPopupTip:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object p1, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mEditPopupTip:Landroid/view/View;

    const v0, 0x7f0a033c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    invoke-direct {p0, v1}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->hideOrShowEditPopupTip(Z)V

    .line 28
    iput-boolean v1, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mIsPopupTipReady:Z

    .line 29
    iput-boolean v1, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mOnStarted:Z

    return-void
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mInCard:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 3
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xb6

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    .line 4
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->changeIDCardView(Z)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v2, p1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 6
    iget-object v1, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    .line 7
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mIsPopupTipReady:Z

    if-nez p1, :cond_4

    .line 8
    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object p1

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    const/high16 v2, 0x40800000    # 4.0f

    const v3, 0x7f070346

    const/high16 v4, 0x40000000    # 2.0f

    if-nez v1, :cond_3

    .line 10
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v5, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mEditPopupTip:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    sub-float/2addr v1, v5

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {}, Lcom/android/camera/fragment/idcard/IDCardView;->getIDCardViewScale()F

    move-result v6

    goto :goto_2

    .line 12
    :cond_3
    iget-object v1, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mEditPopupTip:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v5, p1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v1, v5

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {}, Lcom/android/camera/fragment/idcard/IDCardView;->getIDCardViewScale()F

    move-result v6

    :goto_2
    mul-float/2addr v3, v6

    sub-float/2addr v5, v3

    div-float/2addr v5, v2

    add-float/2addr v1, v5

    .line 14
    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object v3, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mEditPopupTip:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr p1, v3

    int-to-float p1, p1

    div-float/2addr p1, v4

    add-float/2addr v2, p1

    .line 15
    iget-object p1, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mEditPopupTip:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 16
    iget-object p1, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mEditPopupTip:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 17
    iget-object p1, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mEditPopupTip:Landroid/view/View;

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {p1, v1}, Landroid/view/View;->setRotation(F)V

    .line 18
    iput-boolean v0, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mIsPopupTipReady:Z

    .line 19
    iget-boolean p1, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mOnStarted:Z

    if-eqz p1, :cond_4

    .line 20
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPrivacyWatermarkEnabled()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->hideOrShowEditPopupTip(Z)V

    :cond_4
    return-void
.end method

.method public onBackEvent(I)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->isShowingGotoInputDialog()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->hideGotoInputDialog()V

    return v1

    :cond_0
    if-ne p1, v1, :cond_1

    .line 3
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xb6

    if-ne p1, v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->callBackEvent()V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mEditPopupTip:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a033b

    if-ne p1, v0, :cond_2

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ActivityBase;

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p1, v0}, Lcom/android/camera/ActivityBase;->setJumpFlag(I)V

    .line 5
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    const-class v0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;

    goto :goto_0

    :cond_1
    const-class v0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditPadActivity;

    .line 7
    :goto_0
    invoke-static {p1, v0}, Lcom/android/camera/ActivityLauncher;->launch(Landroid/app/Activity;Ljava/lang/Class;)V

    goto :goto_1

    :cond_2
    const v0, 0x7f0a033c

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->hideOrShowEditPopupTip(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xab

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->removeBackStack(Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mPrivacyWatermarkView:Lcom/android/camera/privacywatermark/PrivacyWatermarkView;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getPrivacyWatermark()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/privacywatermark/PrivacyWatermarkView;->setPrivacyWatermark(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mPrivacyWatermarkView:Lcom/android/camera/privacywatermark/PrivacyWatermarkView;

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/Ooooo00/OoooooO/OooO0OO;

    invoke-direct {v1, p0}, LOooO0O0/OooO0O0/OooO00o/Ooooo00/OoooooO/OooO0OO;-><init>(Lcom/android/camera/fragment/idcard/FragmentIDCard;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mOnStarted:Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xab

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1, p0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->addInBackStack(Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    :cond_0
    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    const/16 p3, 0xb6

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mInCard:Ljava/lang/Boolean;

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->changeIDCardView(Z)V

    .line 4
    iget-object p3, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 5
    iget-object p3, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xe9

    invoke-virtual {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public showGotoInputDialog()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->isShowingGotoInputDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/idcard/FragmentIDCard;->mGotoInputDialog:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public switchNextPage()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->getCurrentPictureName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/storage/Storage;->isIdCardPictureOne(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->changeIDCardView(Z)V

    :cond_0
    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xe9

    invoke-virtual {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/idcard/FragmentIDCard;->hideGotoInputDialog()V

    return-void
.end method
