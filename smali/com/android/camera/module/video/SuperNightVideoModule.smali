.class public Lcom/android/camera/module/video/SuperNightVideoModule;
.super Lcom/android/camera/module/VideoModule;
.source "SuperNightVideoModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;-><init>()V

    return-void
.end method

.method private getTagsListener(Lcom/android/camera/module/VideoBase$OnTagsListener;)Lcom/android/camera/module/VideoBase$OnTagsListener;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/module/video/SuperNightVideoModule$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/module/video/SuperNightVideoModule$1;-><init>(Lcom/android/camera/module/video/SuperNightVideoModule;Lcom/android/camera/module/VideoBase$OnTagsListener;)V

    return-object v0
.end method


# virtual methods
.method public applyTags(Lcom/android/camera/module/VideoBase$OnTagsListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/video/SuperNightVideoModule;->getTagsListener(Lcom/android/camera/module/VideoBase$OnTagsListener;)Lcom/android/camera/module/VideoBase$OnTagsListener;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/android/camera/module/VideoModule;->applyTags(Lcom/android/camera/module/VideoBase$OnTagsListener;)V

    return-void
.end method

.method public isEnableScreenShot()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public startCameraSession(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/VideoModule;->startRecordSession()V

    return-void
.end method

.method public updateFpsRange()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isDeviceAndModuleAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x18

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setFpsRange(Landroid/util/Range;)V

    .line 4
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setVideoFpsRange(Landroid/util/Range;)V

    return-void
.end method
