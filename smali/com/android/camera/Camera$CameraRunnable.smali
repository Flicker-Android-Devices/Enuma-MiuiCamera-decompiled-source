.class public Lcom/android/camera/Camera$CameraRunnable;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraRunnable"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CameraRunnable"


# instance fields
.field public final mCamera:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/Camera;",
            ">;"
        }
    .end annotation
.end field

.field public final mReleaseDevice:Z


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/Camera;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/Camera$CameraRunnable;->mCamera:Ljava/lang/ref/WeakReference;

    .line 3
    iput-boolean p2, p0, Lcom/android/camera/Camera$CameraRunnable;->mReleaseDevice:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/Camera$CameraRunnable;->mCamera:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Camera;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/Camera;->isCurrentModuleAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, v0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    const/4 v2, 0x1

    .line 4
    invoke-interface {v1, v2}, Lcom/android/camera/module/Module;->release(Z)V

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->resetTimeOut()V

    .line 6
    iget-boolean v1, p0, Lcom/android/camera/Camera$CameraRunnable;->mReleaseDevice:Z

    if-eqz v1, :cond_4

    .line 7
    iget-object v1, v0, Lcom/android/camera/ActivityBase;->mApplication:Lcom/android/camera/CameraAppImpl;

    invoke-virtual {v1}, Lcom/android/camera/CameraAppImpl;->containsResumedCameraInStack()Z

    move-result v1

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start releaseCameraDevice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CameraRunnable"

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_3

    .line 9
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2OpenManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2OpenManager;->release()V

    .line 10
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityStopped()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000o00O()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/camera/ActivityBase;->mApplication:Lcom/android/camera/CameraAppImpl;

    .line 11
    invoke-virtual {v1}, Lcom/android/camera/CameraAppImpl;->containsResumedCameraInStack()Z

    move-result v1

    if-nez v1, :cond_4

    .line 12
    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->releaseCameraScreenNail()V

    goto :goto_0

    :cond_3
    const-string v0, "Camera2OpenManager release ignored."

    .line 14
    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method
