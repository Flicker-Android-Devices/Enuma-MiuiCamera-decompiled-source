.class public Lcom/android/camera/fragment/FragmentVideoReview;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentVideoReview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/ModeProtocol$VideoReviewProtocol;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mIsIntentAction:Z

.field public mVideoReviewImage:Landroid/widget/ImageView;

.field public mVideoReviewPlay:Landroid/widget/ImageView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/FragmentVideoReview;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/FragmentVideoReview;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getFragmentInto()I
    .locals 1

    const/16 v0, 0xffc

    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d00c4

    return v0
.end method

.method public hideReviewViews()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentVideoReview;->mVideoReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentVideoReview;->mVideoReviewImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentVideoReview;->mVideoReviewPlay:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a0482

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentVideoReview;->mVideoReviewImage:Landroid/widget/ImageView;

    const/high16 v1, -0x1000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    const v0, 0x7f0a0481

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentVideoReview;->mVideoReviewPlay:Landroid/widget/ImageView;

    .line 4
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentVideoReview;->mIsIntentAction:Z

    return-void
.end method

.method public isShowReviewViews()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentVideoReview;->mVideoReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyDataChanged(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result p1

    .line 3
    iget-boolean p2, p0, Lcom/android/camera/fragment/FragmentVideoReview;->mIsIntentAction:Z

    if-eq p1, p2, :cond_0

    .line 4
    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentVideoReview;->mIsIntentAction:Z

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentVideoReview;->hideReviewViews()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0481

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa7

    .line 3
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$PlayVideoProtocol;

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$PlayVideoProtocol;->playVideo()V

    :cond_1
    :goto_0
    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xbb

    .line 2
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public showReviewViews(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentVideoReview;->mVideoReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVideoReview;->mVideoReviewImage:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentVideoReview;->mVideoReviewPlay:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0xbb

    .line 2
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method
