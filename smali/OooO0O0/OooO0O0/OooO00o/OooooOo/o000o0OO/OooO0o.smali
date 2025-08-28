.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0OO/OooO0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/Camera2Module;

.field private final synthetic OooO0O0:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/Camera2Module;Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0OO/OooO0o;->OooO00o:Lcom/android/camera/module/Camera2Module;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0OO/OooO0o;->OooO0O0:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0OO/OooO0o;->OooO00o:Lcom/android/camera/module/Camera2Module;

    iget-object v1, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0OO/OooO0o;->OooO0O0:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-static {v0, v1}, Lcom/android/camera/module/image/MultiCaptureManager;->OooO00o(Lcom/android/camera/module/Camera2Module;Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;)V

    return-void
.end method
