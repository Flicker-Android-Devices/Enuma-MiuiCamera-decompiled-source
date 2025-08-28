.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooOo/OooOOo0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/Camera2Module;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/Camera2Module;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/OooOOo0;->OooO00o:Lcom/android/camera/module/Camera2Module;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/OooOOo0;->OooO00o:Lcom/android/camera/module/Camera2Module;

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/Camera2Module;->OooO0o0(Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;)[Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method
