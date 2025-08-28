.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooOo/OoooOO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:F


# direct methods
.method public synthetic constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/OoooOO0;->OooO00o:F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/OoooOO0;->OooO00o:F

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-static {v0, p1}, Lcom/android/camera/module/Camera2Module;->OooO00o(FLcom/android/camera/protocol/ModeProtocol$MainContentProtocol;)V

    return-void
.end method
