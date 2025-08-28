.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0o0/OooO0Oo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/interceptor/ASDInterceptorChain;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0o0/OooO0Oo;->OooO00o:Lcom/android/camera/module/interceptor/ASDInterceptorChain;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0o0/OooO0Oo;->OooO00o:Lcom/android/camera/module/interceptor/ASDInterceptorChain;

    check-cast p1, Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->apply(Landroid/hardware/camera2/CaptureResult;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
