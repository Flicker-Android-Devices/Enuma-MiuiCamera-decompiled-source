.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0Oo/OooO00o/OooO0o0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/impl/component/ConfigChangeImpl;

.field private final synthetic OooO0O0:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/impl/component/ConfigChangeImpl;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0Oo/OooO00o/OooO0o0;->OooO00o:Lcom/android/camera/module/impl/component/ConfigChangeImpl;

    iput-boolean p2, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0Oo/OooO00o/OooO0o0;->OooO0O0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0Oo/OooO00o/OooO0o0;->OooO00o:Lcom/android/camera/module/impl/component/ConfigChangeImpl;

    iget-boolean v1, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0Oo/OooO00o/OooO0o0;->OooO0O0:Z

    check-cast p1, Lcom/android/camera/module/Module;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->OooO00o(ZLcom/android/camera/module/Module;)V

    return-void
.end method
