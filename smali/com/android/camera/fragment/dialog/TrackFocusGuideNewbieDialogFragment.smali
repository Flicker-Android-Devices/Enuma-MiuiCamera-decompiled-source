.class public Lcom/android/camera/fragment/dialog/TrackFocusGuideNewbieDialogFragment;
.super Lcom/android/camera/fragment/dialog/BaseDialogFragment;
.source "TrackFocusGuideNewbieDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/dialog/TrackFocusGuideNewbieDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/dialog/TrackFocusGuideNewbieDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/dialog/BaseDialogFragment;-><init>()V

    return-void
.end method

.method public static synthetic OooO00o(Landroid/app/Dialog;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, LOooO0O0/OooO0O0/OooO00o/Ooooo00/OooooO0/OooOOO;->OooO00o:LOooO0O0/OooO0O0/OooO00o/Ooooo00/OooooO0/OooOOO;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic OooO00o(Landroid/view/Window;)V
    .locals 1

    const v0, 0x106000d

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;)V
    .locals 1

    const/16 v0, 0xe1

    .line 6
    invoke-interface {p0, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2
    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->touchDialogButtonTint([Landroid/view/View;)V

    return-void
.end method

.method public synthetic OooO0O0(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/dialog/TrackFocusGuideNewbieDialogFragment;->dismiss()V

    return-void
.end method

.method public dismiss()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->setKeyFirstUseTrackFocusHintShown()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 2
    sget-object p1, Lcom/android/camera/fragment/dialog/TrackFocusGuideNewbieDialogFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick: "

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa4

    .line 4
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    .line 5
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    sget-object v0, LOooO0O0/OooO0O0/OooO00o/Ooooo00/OooooO0/OooOOO0;->OooO00o:LOooO0O0/OooO0O0/OooO00o/Ooooo00/OooooO0/OooOOO0;

    .line 6
    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d007a

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a00a9

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    new-instance p3, LOooO0O0/OooO0O0/OooO00o/Ooooo00/OooooO0/OooOOOO;

    invoke-direct {p3, p0}, LOooO0O0/OooO0O0/OooO00o/Ooooo00/OooooO0/OooOOOO;-><init>(Lcom/android/camera/fragment/dialog/TrackFocusGuideNewbieDialogFragment;)V

    invoke-virtual {p2, p3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const p2, 0x7f0a00a7

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, LOooO0O0/OooO0O0/OooO00o/Ooooo00/OooooO0/OooOO0O;

    invoke-direct {p3, p0}, LOooO0O0/OooO0O0/OooO00o/Ooooo00/OooooO0/OooOO0O;-><init>(Lcom/android/camera/fragment/dialog/TrackFocusGuideNewbieDialogFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    sget-object p3, LOooO0O0/OooO0O0/OooO00o/Ooooo00/OooooO0/OooOO0o;->OooO00o:LOooO0O0/OooO0O0/OooO00o/Ooooo00/OooooO0/OooOO0o;

    invoke-virtual {p2, p3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-object p1
.end method

.method public onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStop()V

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->setKeyFirstUseTrackFocusHintShown()V

    return-void
.end method
