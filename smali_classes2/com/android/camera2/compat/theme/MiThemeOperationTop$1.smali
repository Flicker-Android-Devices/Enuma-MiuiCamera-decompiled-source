.class public Lcom/android/camera2/compat/theme/MiThemeOperationTop$1;
.super Ljava/lang/Object;
.source "MiThemeOperationTop.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera2/compat/theme/MiThemeOperationTop;->setTopColorAnimator(Landroid/view/View;JII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera2/compat/theme/MiThemeOperationTop;

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/camera2/compat/theme/MiThemeOperationTop;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/compat/theme/MiThemeOperationTop$1;->this$0:Lcom/android/camera2/compat/theme/MiThemeOperationTop;

    iput-object p2, p0, Lcom/android/camera2/compat/theme/MiThemeOperationTop$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/compat/theme/MiThemeOperationTop$1;->val$view:Landroid/view/View;

    check-cast v0, Lcom/android/camera/fragment/top/LabelItemView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/top/LabelItemView;->setColorAndRefresh(I)V

    return-void
.end method
