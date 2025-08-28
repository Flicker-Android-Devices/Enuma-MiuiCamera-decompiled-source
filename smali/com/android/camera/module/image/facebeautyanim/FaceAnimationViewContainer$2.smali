.class public Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer$2;
.super Ljava/lang/Object;
.source "FaceAnimationViewContainer.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer$2;->this$0:Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer$2;->this$0:Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;

    invoke-static {p1}, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;->access$000(Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->setFaceBeautyAnimatorPlayed(Z)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeProtocol$FaceAnimatorListener;->impl()Ljava/util/Optional;

    move-result-object p1

    sget-object v0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0OO/OooO0oo/OooO0OO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0OO/OooO0oo/OooO0OO;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeProtocol$FaceAnimatorListener;->impl()Ljava/util/Optional;

    move-result-object p1

    sget-object v0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0OO/OooO0oo/OooO00o;->OooO00o:LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0OO/OooO0oo/OooO00o;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
