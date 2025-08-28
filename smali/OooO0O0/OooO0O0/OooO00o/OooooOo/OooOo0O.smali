.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooOo/OooOo0O;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Z

.field private final synthetic OooO0O0:Z


# direct methods
.method public synthetic constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/OooOo0O;->OooO00o:Z

    iput-boolean p2, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/OooOo0O;->OooO0O0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/OooOo0O;->OooO00o:Z

    iget-boolean v1, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/OooOo0O;->OooO0O0:Z

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-static {v0, v1, p1}, Lcom/android/camera/module/Camera2Module;->OooO00o(ZZLcom/android/camera/protocol/ModeProtocol$MainContentProtocol;)V

    return-void
.end method
