.class public Lcom/android/camera/fragment/FragmentFNumberAdjust$3;
.super Ljava/lang/Object;
.source "FragmentFNumberAdjust.java"

# interfaces
.implements Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/FragmentFNumberAdjust;->initAdjustSeekBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/FragmentFNumberAdjust;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/FragmentFNumberAdjust;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust$3;->this$0:Lcom/android/camera/fragment/FragmentFNumberAdjust;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mapProgressToValue(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust$3;->this$0:Lcom/android/camera/fragment/FragmentFNumberAdjust;

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->progressToValue(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xac

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust$3;->this$0:Lcom/android/camera/fragment/FragmentFNumberAdjust;

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->progressToValue(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    .line 3
    iget-object p3, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust$3;->this$0:Lcom/android/camera/fragment/FragmentFNumberAdjust;

    invoke-static {p3}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->access$100(Lcom/android/camera/fragment/FragmentFNumberAdjust;)Lcom/android/camera/ui/SeekBarCompat;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/SeekBar;->isAccessibilityFocused()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust$3;->this$0:Lcom/android/camera/fragment/FragmentFNumberAdjust;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->access$100(Lcom/android/camera/fragment/FragmentFNumberAdjust;)Lcom/android/camera/ui/SeekBarCompat;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/SeekBarCompat;->setProgress(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    const/4 p3, 0x0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, p3, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentFNumberAdjust$3;->this$0:Lcom/android/camera/fragment/FragmentFNumberAdjust;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentFNumberAdjust;->access$000(Lcom/android/camera/fragment/FragmentFNumberAdjust;)Lio/reactivex/FlowableEmitter;

    move-result-object p1

    invoke-interface {p1, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
