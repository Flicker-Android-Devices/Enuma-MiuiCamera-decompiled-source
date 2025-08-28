.class public Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer$1;
.super Ljava/lang/Object;
.source "FaceAnimationViewContainer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    iput-object p1, p0, Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer$1;->this$0:Lcom/android/camera/module/image/facebeautyanim/FaceAnimationViewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic OooO00o(Landroid/animation/ValueAnimator;Lcom/android/camera/protocol/ModeProtocol$FaceAnimatorListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/camera/protocol/ModeProtocol$FaceAnimatorListener;->onFaceBeautyAnimatorUpdate(F)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeProtocol$FaceAnimatorListener;->impl()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0OO/OooO0oo/OooO0O0;

    invoke-direct {v1, p1}, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0OO/OooO0oo/OooO0O0;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
