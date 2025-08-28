.class public Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_StateListener;
.super Ljava/lang/Object;
.source "RenderEngineAdapter.java"

# interfaces
.implements Lcom/xiaomi/renderengine/RenderEngine$StateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/RenderEngineAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RenderEngineV2_StateListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/RenderEngineAdapter;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/RenderEngineAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_StateListener;->this$0:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/ui/RenderEngineAdapter;Lcom/android/camera/ui/RenderEngineAdapter$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_StateListener;-><init>(Lcom/android/camera/ui/RenderEngineAdapter;)V

    return-void
.end method


# virtual methods
.method public onFrameAvailable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_StateListener;->this$0:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-static {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->access$000(Lcom/android/camera/ui/RenderEngineAdapter;)Lcom/android/camera/Camera;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ActivityBase;->onFrameAvailable(I)V

    const-string v0, "RenderEngineAdapter"

    const-string/jumbo v1, "onFrameAvailable"

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFrameDrawn()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_StateListener;->this$0:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-static {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->access$000(Lcom/android/camera/ui/RenderEngineAdapter;)Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->onFrameDrawn()V

    const-string v0, "RenderEngineAdapter"

    const-string/jumbo v1, "onFrameDrawn"

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfaceChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_StateListener;->this$0:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-static {p1}, Lcom/android/camera/ui/RenderEngineAdapter;->access$000(Lcom/android/camera/ui/RenderEngineAdapter;)Lcom/android/camera/Camera;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/camera/Camera;->updateSurfaceState(I)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_StateListener;->this$0:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-static {p1}, Lcom/android/camera/ui/RenderEngineAdapter;->access$300(Lcom/android/camera/ui/RenderEngineAdapter;)Lcom/android/gallery3d/ui/SimpleGLCanvas;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/android/gallery3d/ui/SimpleGLCanvas;->setSize(II)V

    const-string p1, "RenderEngineAdapter"

    const-string/jumbo p2, "onSurfaceChanged"

    .line 3
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfaceCreated()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_StateListener;->this$0:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-static {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->access$000(Lcom/android/camera/ui/RenderEngineAdapter;)Lcom/android/camera/Camera;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->updateSurfaceState(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_StateListener;->this$0:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-static {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->access$300(Lcom/android/camera/ui/RenderEngineAdapter;)Lcom/android/gallery3d/ui/SimpleGLCanvas;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_StateListener;->this$0:Lcom/android/camera/ui/RenderEngineAdapter;

    new-instance v1, Lcom/android/gallery3d/ui/SimpleGLCanvas;

    invoke-direct {v1}, Lcom/android/gallery3d/ui/SimpleGLCanvas;-><init>()V

    invoke-static {v0, v1}, Lcom/android/camera/ui/RenderEngineAdapter;->access$302(Lcom/android/camera/ui/RenderEngineAdapter;Lcom/android/gallery3d/ui/SimpleGLCanvas;)Lcom/android/gallery3d/ui/SimpleGLCanvas;

    :cond_0
    const-string v0, "RenderEngineAdapter"

    const-string/jumbo v1, "onSurfaceCreated"

    .line 4
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
