.class public Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;
.super Ljava/lang/Object;
.source "RenderEngine.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/renderengine/RenderEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnCameraFrameAvailableListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/renderengine/RenderEngine;


# direct methods
.method public constructor <init>(Lcom/xiaomi/renderengine/RenderEngine;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;->this$0:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/renderengine/RenderEngine;Lcom/xiaomi/renderengine/RenderEngine$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;-><init>(Lcom/xiaomi/renderengine/RenderEngine;)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 2
    iget-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;->this$0:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-static {p1}, Lcom/xiaomi/renderengine/RenderEngine;->access$800(Lcom/xiaomi/renderengine/RenderEngine;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;->this$0:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-static {v0}, Lcom/xiaomi/renderengine/RenderEngine;->access$900(Lcom/xiaomi/renderengine/RenderEngine;)V

    .line 4
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;->this$0:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-static {v0}, Lcom/xiaomi/renderengine/RenderEngine;->access$100(Lcom/xiaomi/renderengine/RenderEngine;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;->this$0:Lcom/xiaomi/renderengine/RenderEngine;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/xiaomi/renderengine/RenderEngine;->access$202(Lcom/xiaomi/renderengine/RenderEngine;I)I

    .line 3
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;->this$0:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-static {v0}, Lcom/xiaomi/renderengine/RenderEngine;->access$300(Lcom/xiaomi/renderengine/RenderEngine;)Lcom/xiaomi/renderengine/RenderEngine$StateCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/renderengine/RenderEngine$StateCallback;->onFrameAvailable()V

    .line 4
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;->this$0:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-static {v0, v1}, Lcom/xiaomi/renderengine/RenderEngine;->access$102(Lcom/xiaomi/renderengine/RenderEngine;Z)Z

    const-string v0, "RenderEngine"

    const-string v2, "onFrameAvailable first frame arrived."

    .line 5
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;->this$0:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-static {v0}, Lcom/xiaomi/renderengine/RenderEngine;->access$400(Lcom/xiaomi/renderengine/RenderEngine;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, LOooO0O0/OooO0o/OooO0O0/OooO0oO;

    invoke-direct {v2, p0, p1}, LOooO0O0/OooO0o/OooO0O0/OooO0oO;-><init>(Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7
    iget-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;->this$0:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-static {p1}, Lcom/xiaomi/renderengine/RenderEngine;->access$500(Lcom/xiaomi/renderengine/RenderEngine;)Lcom/xiaomi/renderengine/RenderEngine$RequestRenderListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;->this$0:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-static {p1}, Lcom/xiaomi/renderengine/RenderEngine;->access$500(Lcom/xiaomi/renderengine/RenderEngine;)Lcom/xiaomi/renderengine/RenderEngine$RequestRenderListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/xiaomi/renderengine/RenderEngine$RequestRenderListener;->requestRender()V

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;->this$0:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-static {p1}, Lcom/xiaomi/renderengine/RenderEngine;->access$600(Lcom/xiaomi/renderengine/RenderEngine;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;->this$0:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-static {p1}, Lcom/xiaomi/renderengine/RenderEngine;->access$700(Lcom/xiaomi/renderengine/RenderEngine;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;->this$0:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-static {p1}, Lcom/xiaomi/renderengine/RenderEngine;->access$300(Lcom/xiaomi/renderengine/RenderEngine;)Lcom/xiaomi/renderengine/RenderEngine$StateCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/xiaomi/renderengine/RenderEngine$StateCallback;->onFrameDrawn()V

    .line 11
    iget-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;->this$0:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-static {p1, v1}, Lcom/xiaomi/renderengine/RenderEngine;->access$602(Lcom/xiaomi/renderengine/RenderEngine;Z)Z

    :cond_2
    return-void
.end method
