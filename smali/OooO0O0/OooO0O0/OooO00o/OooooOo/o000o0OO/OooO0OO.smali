.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0OO/OooO0OO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/Camera2Module;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/Camera2Module;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0OO/OooO0OO;->OooO00o:Lcom/android/camera/module/Camera2Module;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0OO/OooO0OO;->OooO00o:Lcom/android/camera/module/Camera2Module;

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-static {v0, p1}, Lcom/android/camera/module/image/Camera2ModuleHandler;->OooO00o(Lcom/android/camera/module/Camera2Module;Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;)V

    return-void
.end method
