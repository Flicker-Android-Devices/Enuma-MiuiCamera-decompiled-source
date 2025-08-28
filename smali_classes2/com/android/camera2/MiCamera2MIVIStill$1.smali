.class public Lcom/android/camera2/MiCamera2MIVIStill$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "MiCamera2MIVIStill.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera2/MiCamera2MIVIStill;->generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera2/MiCamera2MIVIStill;


# direct methods
.method public constructor <init>(Lcom/android/camera2/MiCamera2MIVIStill;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera2/MiCamera2MIVIStill;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCaptureCompleted: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getFrameNumber()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x4

    invoke-static {v0, p1, p2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getSuperNight()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/camera2/MiCamera2;->setAWBLock(Z)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iput-object p3, p1, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    .line 5
    invoke-static {p1}, Lcom/android/camera2/MiCamera2MIVIStill;->access$200(Lcom/android/camera2/MiCamera2MIVIStill;)V

    .line 6
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p1

    const/16 p2, 0xbb

    if-ne p1, p2, :cond_1

    .line 7
    iget-object p1, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 8
    iget-object p3, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object p3, p3, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-interface {p1, p2, p3}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onPictureTaken([BLandroid/hardware/camera2/CaptureResult;)V

    :cond_1
    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    .line 2
    invoke-static {}, Lcom/android/camera2/MiCamera2MIVIStill;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCaptureFailed: reason="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " frameNumber="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getFrameNumber()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x6

    .line 4
    invoke-static {p3, p1, p2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p1, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getSuperNight()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object p1, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1, p2}, Lcom/android/camera2/MiCamera2;->setAWBLock(Z)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object p3, p1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p3, p2, p1}, Lcom/android/camera2/MiCamera2;->onCapturePictureFinished(ZLcom/android/camera2/MiCamera2Shot;)V

    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p1

    const/16 p2, 0xbb

    if-ne p1, p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    new-instance p2, Lcom/android/camera2/QuickViewParam;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZLcom/android/camera/module/loader/camera2/ButtonStatus;)V

    .line 5
    invoke-interface {p1, p2, p3}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureProgress(Lcom/android/camera2/QuickViewParam;Landroid/hardware/camera2/CaptureResult;)V

    .line 6
    :cond_0
    invoke-static {}, Lcom/android/camera2/MiCamera2MIVIStill;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onCaptureProgressed: "

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v3, p5

    .line 1
    invoke-super/range {p0 .. p6}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    .line 2
    invoke-static {}, Lcom/android/camera2/MiCamera2MIVIStill;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCaptureStarted: mCurrentParallelTaskData: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, p3

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", frameNumber = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ",mNeedHandleCaptureFinished = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object v5, v5, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCaptureFinishCallbackState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    invoke-static {v5, v1, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, v0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object v1, v1, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCaptureFinishCallbackState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    const/4 v14, 0x2

    if-ne v1, v14, :cond_0

    .line 4
    iget-object v1, v0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2MIVIStill;->handleCaptureFinished()V

    .line 5
    :cond_0
    iget-object v1, v0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v15

    if-eqz v15, :cond_3

    .line 6
    iget-object v1, v0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    new-instance v2, Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-object v5, v0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object v5, v5, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v5}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v7

    iget-object v5, v0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object v5, v5, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 7
    invoke-virtual {v5}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v10

    iget-object v5, v0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object v11, v5, Lcom/android/camera2/MiCamera2Shot;->mSavePath:Ljava/lang/String;

    iget-object v5, v5, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 8
    invoke-virtual {v5}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera2/CameraConfigs;->getCaptureTime()J

    move-result-wide v12

    move-object v6, v2

    move-wide/from16 v8, p3

    invoke-direct/range {v6 .. v13}, Lcom/xiaomi/camera/core/ParallelTaskData;-><init>(IJILjava/lang/String;J)V

    iput-object v2, v1, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 9
    iget-object v1, v0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object v1, v1, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    sget-object v2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->IMAGE_NAME:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v2}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isTagDefined(Lcom/android/camera2/CameraCapabilities;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    iget-object v1, v0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object v1, v1, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-object v2, v0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2Shot;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setImageName(Ljava/lang/String;)V

    .line 11
    :cond_1
    new-instance v1, Lcom/android/camera2/CaptureStartParam$Builder;

    iget-object v2, v0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object v2, v2, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera2/CaptureStartParam$Builder;-><init>(Lcom/android/camera/CameraSize;)V

    .line 12
    new-instance v2, Lcom/android/camera2/QuickViewParam;

    iget-object v5, v0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    .line 13
    invoke-virtual {v5}, Lcom/android/camera2/MiCamera2Shot;->isQuickShotAnimation()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v5, v0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object v10, v5, Lcom/android/camera2/MiCamera2ShotParallel;->mButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZLcom/android/camera/module/loader/camera2/ButtonStatus;)V

    invoke-virtual {v1, v2}, Lcom/android/camera2/CaptureStartParam$Builder;->setQuickViewParam(Lcom/android/camera2/QuickViewParam;)Lcom/android/camera2/CaptureStartParam$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget v2, v2, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    .line 14
    invoke-virtual {v1, v2}, Lcom/android/camera2/CaptureStartParam$Builder;->setSatCameraId(I)Lcom/android/camera2/CaptureStartParam$Builder;

    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/android/camera2/CaptureStartParam$Builder;->build()Lcom/android/camera2/CaptureStartParam;

    move-result-object v1

    .line 16
    iget-object v2, v0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object v2, v2, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-interface {v15, v2, v1}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureStart(Lcom/xiaomi/camera/core/ParallelTaskData;Lcom/android/camera2/CaptureStartParam;)Lcom/xiaomi/camera/core/ParallelTaskData;

    .line 17
    iget-object v1, v0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object v1, v1, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v1, v3, v4}, Lcom/xiaomi/camera/core/ParallelTaskData;->setFrameNumber(J)V

    .line 18
    iget-object v1, v0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object v1, v1, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-object v2, v0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object v2, v2, Lcom/android/camera2/MiCamera2ShotParallel;->mCaptureId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setCaptureId(Ljava/lang/String;)V

    .line 19
    iget-object v1, v0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object v1, v1, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    iget-object v2, v0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object v2, v2, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    invoke-virtual {v1, v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->setChangedBufferFormat(Lcom/xiaomi/engine/BufferFormat;)V

    .line 20
    iget-object v1, v0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object v1, v1, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v1, v7}, Lcom/xiaomi/camera/core/ParallelTaskData;->setParallelVTCameraSnapshot(Z)V

    .line 21
    invoke-static {}, Lcom/xiaomi/camera/MIVICaptureManager;->getInstance()Lcom/xiaomi/camera/MIVICaptureManager;

    move-result-object v1

    iget-object v2, v0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    invoke-static {v2}, Lcom/android/camera2/MiCamera2MIVIStill;->access$100(Lcom/android/camera2/MiCamera2MIVIStill;)I

    move-result v2

    iget-object v5, v0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    invoke-virtual {v5}, Lcom/android/camera2/MiCamera2Shot;->getFileName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object v6, v6, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    move-wide/from16 v3, p5

    invoke-virtual/range {v1 .. v6}, Lcom/xiaomi/camera/MIVICaptureManager;->addAll(IJLjava/lang/String;Lcom/xiaomi/camera/core/ParallelTaskData;)V

    .line 22
    iget-object v1, v0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2MIVIBaseShot;->handleEarlyImageIfNeed()V

    .line 23
    iget-object v1, v0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object v1, v1, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCaptureFinishCallbackState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v1, v14, :cond_3

    iget-object v1, v0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object v1, v1, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskData;->getDataParameter()Lcom/xiaomi/camera/core/ParallelTaskDataParameter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/ParallelTaskDataParameter;->isImageCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_3

    .line 24
    invoke-static {}, Lcom/android/camera2/MiCamera2MIVIStill;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "handleCaptureFinished: notify pictureTakenFinished"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 25
    iget-object v2, v0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object v2, v2, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    if-nez v2, :cond_2

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lcom/android/camera2/MiCamera2MIVIStill$1;->this$0:Lcom/android/camera2/MiCamera2MIVIStill;

    iget-object v2, v2, Lcom/android/camera2/MiCamera2MIVIBaseShot;->mCurrentParallelTaskData:Lcom/xiaomi/camera/core/ParallelTaskData;

    invoke-virtual {v2}, Lcom/xiaomi/camera/core/ParallelTaskData;->getTimestamp()J

    move-result-wide v2

    :goto_0
    invoke-interface {v15, v1, v2, v3, v7}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onPictureTakenFinished(ZJI)V

    :cond_3
    return-void
.end method
