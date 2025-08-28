.class public Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_ExtRenderer;
.super Ljava/lang/Object;
.source "RenderEngineAdapter.java"

# interfaces
.implements Lcom/xiaomi/renderengine/RenderEngine$ExternalRenderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/RenderEngineAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RenderEngineV2_ExtRenderer"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/RenderEngineAdapter;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/RenderEngineAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_ExtRenderer;->this$0:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/ui/RenderEngineAdapter;Lcom/android/camera/ui/RenderEngineAdapter$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_ExtRenderer;-><init>(Lcom/android/camera/ui/RenderEngineAdapter;)V

    return-void
.end method


# virtual methods
.method public isProcessorReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_ExtRenderer;->this$0:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-static {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->access$100(Lcom/android/camera/ui/RenderEngineAdapter;)Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getExternalFrameProcessor()Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->isProcessorReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDrawFrame()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_ExtRenderer;->this$0:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-static {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->access$100(Lcom/android/camera/ui/RenderEngineAdapter;)Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getExternalFrameProcessor()Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000Oo00()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4
    invoke-interface {v1}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->getProcessorType()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_ExtRenderer;->this$0:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-static {v2}, Lcom/android/camera/ui/RenderEngineAdapter;->access$300(Lcom/android/camera/ui/RenderEngineAdapter;)Lcom/android/gallery3d/ui/SimpleGLCanvas;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->onDrawFrame(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/CameraScreenNail;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getExternalFrameRect()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2, v2, v2}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->onDrawFrame(Landroid/graphics/Rect;IIZ)Z

    :cond_2
    :goto_0
    return-void
.end method
