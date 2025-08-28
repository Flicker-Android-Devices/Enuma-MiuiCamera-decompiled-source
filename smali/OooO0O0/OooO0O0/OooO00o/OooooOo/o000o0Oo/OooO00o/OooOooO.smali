.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0Oo/OooO00o/OooOooO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/impl/component/FilmDreamImpl;

.field private final synthetic OooO0O0:Landroid/graphics/SurfaceTexture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/impl/component/FilmDreamImpl;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0Oo/OooO00o/OooOooO;->OooO00o:Lcom/android/camera/module/impl/component/FilmDreamImpl;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0Oo/OooO00o/OooOooO;->OooO0O0:Landroid/graphics/SurfaceTexture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0Oo/OooO00o/OooOooO;->OooO00o:Lcom/android/camera/module/impl/component/FilmDreamImpl;

    iget-object v1, p0, LOooO0O0/OooO0O0/OooO00o/OooooOo/o000o0Oo/OooO00o/OooOooO;->OooO0O0:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->OooO00o(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method
