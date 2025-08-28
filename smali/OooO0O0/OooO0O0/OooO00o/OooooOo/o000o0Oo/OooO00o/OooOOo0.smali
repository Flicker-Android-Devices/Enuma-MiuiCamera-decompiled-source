.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0Oo/OooO00o/OooOOo0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Z

.field private final synthetic OooO0O0:Lcom/android/camera/data/data/config/ComponentConfigHdr;


# direct methods
.method public synthetic constructor <init>(ZLcom/android/camera/data/data/config/ComponentConfigHdr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0Oo/OooO00o/OooOOo0;->OooO00o:Z

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0Oo/OooO00o/OooOOo0;->OooO0O0:Lcom/android/camera/data/data/config/ComponentConfigHdr;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0Oo/OooO00o/OooOOo0;->OooO00o:Z

    iget-object v1, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0Oo/OooO00o/OooOOo0;->OooO0O0:Lcom/android/camera/data/data/config/ComponentConfigHdr;

    check-cast p1, Lcom/android/camera/module/Module;

    invoke-static {v0, v1, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->OooO00o(ZLcom/android/camera/data/data/config/ComponentConfigHdr;Lcom/android/camera/module/Module;)V

    return-void
.end method
