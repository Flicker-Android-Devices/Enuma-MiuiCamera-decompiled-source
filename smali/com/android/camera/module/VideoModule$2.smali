.class public Lcom/android/camera/module/VideoModule$2;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Lcom/android/camera2/Camera2Proxy$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/VideoModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/VideoModule$2;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureShutter(Lcom/android/camera2/QuickViewParam;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/camera/module/VideoModule$2;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00ooO()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontMirror()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    move v0, p1

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/VideoModule$2;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$2;->this$0:Lcom/android/camera/module/VideoModule;

    iget v1, v1, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v1

    invoke-virtual {p1, v1, v0}, Lcom/android/camera/CameraScreenNail;->requestFullReadPixelsWithParams(ZZ)V

    return-void
.end method

.method public onPictureTakenFinished(ZJI)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/module/VideoModule$2;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/VideoModule$2;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object p2, p2, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {p2}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientation()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/camera/CameraScreenNail;->animateCaptureWithDraw(I)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/VideoModule$2;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/camera/CameraScreenNail;->setPreviewSaveListener(Lcom/android/camera/SurfaceTextureScreenNail$PreviewSaveListener;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/module/VideoModule$2;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setCameraState(I)V

    .line 4
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object p1

    const-string/jumbo p2, "recording_capture"

    invoke-virtual {p1, p2}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    return-void
.end method
