.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0Oo/OooO00o/OooOoo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/impl/component/DisplayGuideImp;

.field private final synthetic OooO0O0:Lcom/android/camera/protocol/ModeProtocol$DisplayGuide;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/impl/component/DisplayGuideImp;Lcom/android/camera/protocol/ModeProtocol$DisplayGuide;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0Oo/OooO00o/OooOoo;->OooO00o:Lcom/android/camera/module/impl/component/DisplayGuideImp;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0Oo/OooO00o/OooOoo;->OooO0O0:Lcom/android/camera/protocol/ModeProtocol$DisplayGuide;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0Oo/OooO00o/OooOoo;->OooO00o:Lcom/android/camera/module/impl/component/DisplayGuideImp;

    iget-object v1, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0Oo/OooO00o/OooOoo;->OooO0O0:Lcom/android/camera/protocol/ModeProtocol$DisplayGuide;

    invoke-virtual {v0, v1}, Lcom/android/camera/module/impl/component/DisplayGuideImp;->OooO00o(Lcom/android/camera/protocol/ModeProtocol$DisplayGuide;)V

    return-void
.end method
