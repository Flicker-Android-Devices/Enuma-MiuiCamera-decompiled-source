.class public final Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;
.super Ljava/lang/Object;
.source "MultiCaptureManager.java"

# interfaces
.implements Lcom/android/camera2/Camera2Proxy$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/image/MultiCaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "JpegQuickPictureCallback"
.end annotation


# instance fields
.field public mBurstShotTitle:Ljava/lang/String;

.field public mDropped:Z

.field public mLocation:Landroid/location/Location;

.field public mPressDownTitle:Ljava/lang/String;

.field public mSavedJpegCallbackNum:I

.field public final synthetic this$0:Lcom/android/camera/module/image/MultiCaptureManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/image/MultiCaptureManager;Landroid/location/Location;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->mLocation:Landroid/location/Location;

    return-void
.end method

.method private getBurstShotTitle()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->mBurstShotTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->mBurstShotTitle:Ljava/lang/String;

    .line 4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x13

    if-eq v2, v3, :cond_0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    .line 5
    invoke-static {v0, v1}, Lcom/android/camera/Util;->createJpegName(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->mBurstShotTitle:Ljava/lang/String;

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->mBurstShotTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_BURST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->mSavedJpegCallbackNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/camera2/CaptureResult;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    invoke-static {v0}, Lcom/android/camera/module/image/MultiCaptureManager;->access$000(Lcom/android/camera/module/image/MultiCaptureManager;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPaused()Z

    move-result v1

    if-nez v1, :cond_b

    if-eqz p1, :cond_b

    iget-object v1, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    iget v2, v1, Lcom/android/camera/module/image/MultiCaptureManager;->mReceivedJpegCallbackNum:I

    iget v3, v1, Lcom/android/camera/module/image/MultiCaptureManager;->mTotalJpegCallbackNum:I

    if-ge v2, v3, :cond_b

    iget-boolean v2, v1, Lcom/android/camera/module/image/MultiCaptureManager;->mIsWorking:Z

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    iget v2, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->mSavedJpegCallbackNum:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-boolean v1, v1, Lcom/android/camera/module/image/MultiCaptureManager;->mMultiSnapStopRequest:Z

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->getBurstShotTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->mPressDownTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/android/camera/storage/ImageSaver;->updateImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v1

    const-string v2, "MultiCaptureManager"

    if-eqz v1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    iget-boolean p2, p1, Lcom/android/camera/module/image/MultiCaptureManager;->mIsWorking:Z

    if-eqz p2, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/android/camera/module/image/MultiCaptureManager;->stopMultiSnap()V

    :cond_2
    const-string/jumbo p1, "onPictureTaken: stop multiple shot due to low storage"

    .line 8
    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 9
    :cond_3
    iget-object v1, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    iget v4, v1, Lcom/android/camera/module/image/MultiCaptureManager;->mReceivedJpegCallbackNum:I

    add-int/2addr v4, v3

    iput v4, v1, Lcom/android/camera/module/image/MultiCaptureManager;->mReceivedJpegCallbackNum:I

    .line 10
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/storage/ImageSaver;->isSaveQueueFull()Z

    move-result v1

    if-nez v1, :cond_8

    .line 11
    iget v1, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->mSavedJpegCallbackNum:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->mSavedJpegCallbackNum:I

    const/4 v1, 0x4

    .line 12
    invoke-virtual {v0, v1}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 13
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO()V

    .line 14
    iget-object v1, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    iget-object v1, v1, Lcom/android/camera/module/image/MultiCaptureManager;->mBurstEmitter:Lio/reactivex/ObservableEmitter;

    iget v2, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->mSavedJpegCallbackNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 15
    invoke-static {p1}, Lcom/android/gallery3d/exif/ExifHelper;->getOrientation([B)I

    move-result v1

    .line 16
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    .line 17
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getJpegRotation()I

    move-result v4

    add-int/2addr v4, v1

    rem-int/lit16 v4, v4, 0xb4

    if-nez v4, :cond_4

    .line 18
    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v4

    .line 19
    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v2

    goto :goto_0

    .line 20
    :cond_4
    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v4

    .line 21
    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v2

    .line 22
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->getBurstShotTitle()Ljava/lang/String;

    move-result-object v5

    .line 23
    iget-object v6, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    iget v7, v6, Lcom/android/camera/module/image/MultiCaptureManager;->mReceivedJpegCallbackNum:I

    const/4 v8, 0x0

    if-ne v7, v3, :cond_6

    iget-boolean v6, v6, Lcom/android/camera/module/image/MultiCaptureManager;->mMultiSnapStopRequest:Z

    if-nez v6, :cond_6

    :cond_5
    move v6, v8

    goto :goto_1

    .line 24
    :cond_6
    iget-object v6, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    iget v7, v6, Lcom/android/camera/module/image/MultiCaptureManager;->mReceivedJpegCallbackNum:I

    iget v9, v6, Lcom/android/camera/module/image/MultiCaptureManager;->mTotalJpegCallbackNum:I

    if-eq v7, v9, :cond_7

    iget-boolean v6, v6, Lcom/android/camera/module/image/MultiCaptureManager;->mMultiSnapStopRequest:Z

    if-nez v6, :cond_7

    iget-boolean v6, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->mDropped:Z

    if-eqz v6, :cond_5

    :cond_7
    move v6, v3

    .line 25
    :goto_1
    new-instance v7, Lcom/android/camera/storage/ImageSaveRequest$Builder;

    invoke-direct {v7}, Lcom/android/camera/storage/ImageSaveRequest$Builder;-><init>()V

    .line 26
    invoke-virtual {v7, p1}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setData([B)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 27
    invoke-virtual {v7, v6}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setNeedThumbnail(Z)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 28
    invoke-virtual {v7, v5}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->setTitle(Ljava/lang/String;)Lcom/android/camera/storage/ImageSaveRequest$Builder;

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v7, v5, v6}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setDate(J)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 30
    iget-object p1, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->mLocation:Landroid/location/Location;

    invoke-virtual {v7, p1}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setLocation(Landroid/location/Location;)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 31
    invoke-virtual {v7, v4}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setWidth(I)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 32
    invoke-virtual {v7, v2}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setHeight(I)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 33
    invoke-virtual {v7, v1}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setOrientation(I)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 34
    invoke-virtual {v7, v3}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->setFinalImage(Z)Lcom/android/camera/storage/ImageSaveRequest$Builder;

    .line 35
    invoke-virtual {v0, v8}, Lcom/android/camera/module/Camera2Module;->getPictureInfo(Z)Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setInfo(Lcom/xiaomi/camera/core/PictureInfo;)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    const/4 p1, -0x1

    .line 36
    invoke-virtual {v7, p1}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->setPreviewThumbnailHash(I)Lcom/android/camera/storage/ImageSaveRequest$Builder;

    .line 37
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object p1

    invoke-virtual {p1, v7, p2}, Lcom/android/camera/storage/ImageSaver;->addImage(Lcom/android/camera/storage/ImageSaveRequest$Builder;Landroid/hardware/camera2/CaptureResult;)V

    .line 38
    iput-boolean v8, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->mDropped:Z

    goto :goto_2

    .line 39
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "CaptureBurst queue full and drop "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    iget p2, p2, Lcom/android/camera/module/image/MultiCaptureManager;->mReceivedJpegCallbackNum:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iput-boolean v3, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->mDropped:Z

    .line 41
    iget-object p1, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    iget p2, p1, Lcom/android/camera/module/image/MultiCaptureManager;->mReceivedJpegCallbackNum:I

    iget p1, p1, Lcom/android/camera/module/image/MultiCaptureManager;->mTotalJpegCallbackNum:I

    if-lt p2, p1, :cond_9

    .line 42
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnailUncached(Z)V

    .line 43
    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    iget p2, p1, Lcom/android/camera/module/image/MultiCaptureManager;->mReceivedJpegCallbackNum:I

    iget v0, p1, Lcom/android/camera/module/image/MultiCaptureManager;->mTotalJpegCallbackNum:I

    if-ge p2, v0, :cond_a

    iget-boolean p1, p1, Lcom/android/camera/module/image/MultiCaptureManager;->mMultiSnapStopRequest:Z

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->mDropped:Z

    if-eqz p1, :cond_b

    .line 44
    :cond_a
    iget-object p1, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    invoke-virtual {p1}, Lcom/android/camera/module/image/MultiCaptureManager;->stopMultiSnap()V

    :cond_b
    :goto_3
    return-void
.end method

.method public onPictureTakenFinished(ZJI)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    invoke-virtual {p1}, Lcom/android/camera/module/image/MultiCaptureManager;->stopMultiSnap()V

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/image/MultiCaptureManager$JpegQuickPictureCallback;->this$0:Lcom/android/camera/module/image/MultiCaptureManager;

    iget-object p1, p1, Lcom/android/camera/module/image/MultiCaptureManager;->mBurstEmitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method
