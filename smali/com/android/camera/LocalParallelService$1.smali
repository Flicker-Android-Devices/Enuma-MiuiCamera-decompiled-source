.class public Lcom/android/camera/LocalParallelService$1;
.super Ljava/lang/Object;
.source "LocalParallelService.java"

# interfaces
.implements Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/LocalParallelService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/LocalParallelService;


# direct methods
.method public constructor <init>(Lcom/android/camera/LocalParallelService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/LocalParallelService$1;->this$0:Lcom/android/camera/LocalParallelService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImagePostProcessEnd(Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getServiceStatusListener()Lcom/android/camera/LocalParallelService$ServiceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getServiceStatusListener()Lcom/android/camera/LocalParallelService$ServiceStatusListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/LocalParallelService$ServiceStatusListener;->onImagePostProcessEnd(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/LocalParallelService$1;->this$0:Lcom/android/camera/LocalParallelService;

    invoke-static {v0}, Lcom/android/camera/LocalParallelService;->access$000(Lcom/android/camera/LocalParallelService;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/LocalParallelService$1;->this$0:Lcom/android/camera/LocalParallelService;

    invoke-static {v0}, Lcom/android/camera/LocalParallelService;->access$000(Lcom/android/camera/LocalParallelService;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera/LocalParallelService$1;->this$0:Lcom/android/camera/LocalParallelService;

    invoke-static {v0}, Lcom/android/camera/LocalParallelService;->access$000(Lcom/android/camera/LocalParallelService;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/LocalParallelService$ServiceStatusListener;

    invoke-interface {v0, p1}, Lcom/android/camera/LocalParallelService$ServiceStatusListener;->onImagePostProcessEnd(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onImagePostProcessStart(Lcom/xiaomi/camera/core/ParallelTaskData;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getServiceStatusListener()Lcom/android/camera/LocalParallelService$ServiceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getServiceStatusListener()Lcom/android/camera/LocalParallelService$ServiceStatusListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/camera/LocalParallelService$ServiceStatusListener;->onImagePostProcessStart(Lcom/xiaomi/camera/core/ParallelTaskData;I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/LocalParallelService$1;->this$0:Lcom/android/camera/LocalParallelService;

    invoke-static {v0}, Lcom/android/camera/LocalParallelService;->access$000(Lcom/android/camera/LocalParallelService;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/LocalParallelService$1;->this$0:Lcom/android/camera/LocalParallelService;

    invoke-static {v0}, Lcom/android/camera/LocalParallelService;->access$000(Lcom/android/camera/LocalParallelService;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera/LocalParallelService$1;->this$0:Lcom/android/camera/LocalParallelService;

    invoke-static {v0}, Lcom/android/camera/LocalParallelService;->access$000(Lcom/android/camera/LocalParallelService;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/LocalParallelService$ServiceStatusListener;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/LocalParallelService$ServiceStatusListener;->onImagePostProcessStart(Lcom/xiaomi/camera/core/ParallelTaskData;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPostProcessorClosed(Lcom/xiaomi/camera/core/PostProcessor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/LocalParallelService$1;->this$0:Lcom/android/camera/LocalParallelService;

    invoke-static {v0}, Lcom/android/camera/LocalParallelService;->access$100(Lcom/android/camera/LocalParallelService;)Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/LocalParallelService$1;->this$0:Lcom/android/camera/LocalParallelService;

    invoke-static {v0}, Lcom/android/camera/LocalParallelService;->access$100(Lcom/android/camera/LocalParallelService;)Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/camera/LocalParallelService$LocalBinder;->access$200(Lcom/android/camera/LocalParallelService$LocalBinder;Lcom/xiaomi/camera/core/PostProcessor;)V

    :cond_0
    return-void
.end method

.method public onTaskRemoved()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/LocalParallelService$1;->this$0:Lcom/android/camera/LocalParallelService;

    invoke-static {v0}, Lcom/android/camera/LocalParallelService;->access$100(Lcom/android/camera/LocalParallelService;)Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/LocalParallelService$1;->this$0:Lcom/android/camera/LocalParallelService;

    invoke-static {v0}, Lcom/android/camera/LocalParallelService;->access$100(Lcom/android/camera/LocalParallelService;)Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/LocalParallelService$LocalBinder;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/Util;->adjBoost(II)V

    :cond_0
    return-void
.end method

.method public onTaskSessionDied()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/LocalParallelService$1;->this$0:Lcom/android/camera/LocalParallelService;

    invoke-static {v0}, Lcom/android/camera/LocalParallelService;->access$100(Lcom/android/camera/LocalParallelService;)Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/LocalParallelService$1;->this$0:Lcom/android/camera/LocalParallelService;

    invoke-static {v0}, Lcom/android/camera/LocalParallelService;->access$100(Lcom/android/camera/LocalParallelService;)Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/LocalParallelService$LocalBinder;->access$300(Lcom/android/camera/LocalParallelService$LocalBinder;)V

    :cond_0
    return-void
.end method
