.class public final synthetic LOooO0O0/OooO0O0/OooO00o/o0ooOO0/OooOo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/gallery3d/ui/GLCanvas;


# direct methods
.method public synthetic constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/o0ooOO0/OooOo;->OooO00o:Lcom/android/gallery3d/ui/GLCanvas;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/o0ooOO0/OooOo;->OooO00o:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-static {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->OooO00o(Lcom/android/gallery3d/ui/GLCanvas;)V

    return-void
.end method
