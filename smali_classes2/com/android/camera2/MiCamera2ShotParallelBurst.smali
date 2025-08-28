.class public Lcom/android/camera2/MiCamera2ShotParallelBurst;
.super Lcom/android/camera2/MiCamera2ShotParallel;
.source "MiCamera2ShotParallelBurst.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera2/MiCamera2ShotParallel<",
        "Lcom/xiaomi/camera/core/ParallelTaskData;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ShotParallelBurst"


# instance fields
.field public mAlgoType:I

.field public mBaseEvValue:I

.field public mCompletedNum:I

.field public mHdrCaptureRequestSettings:[I

.field public mHdrCheckerAdrc:I

.field public mHdrCheckerEvValue:[I

.field public mHdrCheckerSceneType:I

.field public mHdrType:I

.field public mIsFakeSatEnabled:Z

.field public mIsHdrBokeh:Z

.field public mIsHdrSR:Z

.field public mMainPhysicalCameraId:I

.field public mMultiFrameNum:I

.field public mNbrOfNonBaseEVs:I

.field public mRawCallbackType:I

.field public mReConfigParallel:Z

.field public mSatFusionType:I

.field public mSequenceNum:I

.field public mShouldDoMFNR:Z

.field public mShouldDoSR:Z

.field public mSingleCaptureForHDRplusMFNR:Z

.field public mStartedNum:I

.field public mSubPhysicalCameraId:I

.field public mSuperNightAepLineValue:[I

.field public mSuperNightValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

.field public final mUseParallelVtCam:Z

.field public mZslHdrEnabled:Z


# direct methods
.method public constructor <init>(Lcom/android/camera2/MiCamera2;Landroid/hardware/camera2/CaptureResult;ZIILcom/android/camera/module/loader/camera2/ButtonStatus;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p6}, Lcom/android/camera2/MiCamera2ShotParallel;-><init>(Lcom/android/camera2/MiCamera2;Lcom/android/camera/module/loader/camera2/ButtonStatus;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    const/4 p6, -0x1

    .line 3
    iput p6, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMainPhysicalCameraId:I

    .line 4
    iput p6, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSubPhysicalCameraId:I

    .line 5
    iput p6, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mBaseEvValue:I

    .line 6
    iput p6, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mNbrOfNonBaseEVs:I

    .line 7
    iput-boolean p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mZslHdrEnabled:Z

    .line 8
    iput-boolean p3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mUseParallelVtCam:Z

    .line 9
    iput-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    .line 10
    iput p4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mRawCallbackType:I

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "fusionType -> "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ShotParallelBurst"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iput p5, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSatFusionType:I

    .line 13
    iput-boolean p7, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mReConfigParallel:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera2/MiCamera2ShotParallelBurst;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mUseParallelVtCam:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mStartedNum:I

    return p0
.end method

.method public static synthetic access$108(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mStartedNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mStartedNum:I

    return v0
.end method

.method public static synthetic access$200(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    return p0
.end method

.method public static synthetic access$300(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSatFusionType:I

    return p0
.end method

.method public static synthetic access$400(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    return p0
.end method

.method public static synthetic access$500(Lcom/android/camera2/MiCamera2ShotParallelBurst;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrSR:Z

    return p0
.end method

.method public static synthetic access$600(Lcom/android/camera2/MiCamera2ShotParallelBurst;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mCompletedNum:I

    return p0
.end method

.method public static synthetic access$708(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mCompletedNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mCompletedNum:I

    return v0
.end method

.method public static synthetic access$800(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMainPhysicalCameraId:I

    return p0
.end method

.method public static synthetic access$900(Lcom/android/camera2/MiCamera2ShotParallelBurst;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSubPhysicalCameraId:I

    return p0
.end method

.method private applyAlgoParameter(Landroid/hardware/camera2/CaptureRequest$Builder;II)V
    .locals 1

    const/4 v0, 0x1

    if-eq p3, v0, :cond_7

    const/4 v0, 0x2

    if-eq p3, v0, :cond_6

    const/4 v0, 0x3

    if-eq p3, v0, :cond_5

    const/4 v0, 0x7

    if-eq p3, v0, :cond_4

    const/16 v0, 0xc

    if-eq p3, v0, :cond_3

    const/16 v0, 0xf

    if-eq p3, v0, :cond_3

    const/16 v0, 0x14

    if-eq p3, v0, :cond_7

    const/16 v0, 0x9

    if-eq p3, v0, :cond_2

    const/16 v0, 0xa

    if-eq p3, v0, :cond_3

    const/16 v0, 0x11

    if-eq p3, v0, :cond_1

    const/16 v0, 0x12

    if-eq p3, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->applyPureViewParameter(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    goto :goto_0

    .line 2
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->applyFrontCupParameter(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    goto :goto_0

    .line 3
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->applyLowLightBokehParameter(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    .line 4
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->applySuperNightParameter(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    goto :goto_0

    .line 5
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->applyHHTParameter(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    .line 6
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->applySuperResolutionParameter(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    goto :goto_0

    .line 7
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->applyClearShotParameter(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    .line 8
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->applyHdrParameter(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 9
    :goto_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 10
    iget-object p2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {p2, p1}, Lcom/android/camera2/compat/MiCameraCompat;->copyAiSceneFromCaptureResultToRequest(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_1

    .line 11
    :cond_8
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->isIn3OrMoreSatMode()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 12
    iget-object p2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/android/camera2/CaptureRequestBuilder;->applySmoothTransition(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    .line 13
    iget-object p2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p2

    invoke-static {p1, p2, p3}, Lcom/android/camera2/CaptureRequestBuilder;->applySatFallback(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    :cond_9
    :goto_1
    return-void
.end method

.method private applyClearShotParameter(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mShouldDoMFNR:Z

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applySwMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method private applyFrontCupParameter(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    if-gt p2, v0, :cond_0

    .line 2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OoooOo0()[I

    move-result-object v0

    .line 3
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    aget v3, v0, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "applyFrontCupParameter: request[%d].ev = %d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ShotParallelBurst"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {p1, v5}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 5
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    aget p2, v0, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 6
    iget p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 7
    invoke-static {p1, v4}, Lcom/android/camera2/compat/MiCameraCompat;->applySwMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 8
    invoke-static {p1, v4}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 9
    invoke-static {p1, v5}, Lcom/android/camera2/compat/MiCameraCompat;->applyHdrBracketMode(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wrong request index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private applyHHTParameter(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    const-string v0, "ShotParallelBurst"

    const-string v1, "HHT algo in applyAlgoParameter"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mShouldDoMFNR:Z

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applySwMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 4
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    const/4 v0, 0x1

    .line 5
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyHHT(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method private applyHdrParameter(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    if-gt p2, v0, :cond_23

    add-int/lit8 v0, p2, 0x1

    .line 2
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameIndex(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 3
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameCount(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    aget v0, v0, p2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 5
    :goto_0
    iget-boolean v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrBokeh:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-gez v0, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    int-to-byte v2, v2

    .line 6
    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyHdrBracketMode(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    goto :goto_2

    .line 7
    :cond_2
    invoke-static {p1, v3}, Lcom/android/camera2/compat/MiCameraCompat;->applyHdrBracketMode(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    .line 8
    :goto_2
    iget v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    const/16 v4, 0x14

    if-ne v2, v4, :cond_3

    .line 9
    invoke-static {p1, v3}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    goto :goto_3

    .line 10
    :cond_3
    iget v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 11
    :goto_3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O00000()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 12
    :cond_4
    invoke-static {p1, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 13
    :cond_5
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v2, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 14
    iget v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerSceneType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v5, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerAdrc:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p1, v2, v5}, Lcom/android/camera2/compat/MiCameraCompat;->applyHdrParameter(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 15
    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyMiHDRSR(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 16
    iget-boolean v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mZslHdrEnabled:Z

    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyZslHdrEnabled(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 17
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportSnapshotReqInfo(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 18
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    iget-object v5, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v2, v5}, Lcom/android/camera2/CaptureResultParser;->getSnapshotReqInfo(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureResult;)[B

    move-result-object v2

    .line 19
    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applySnapshotReqInfo(Landroid/hardware/camera2/CaptureRequest$Builder;[B)V

    .line 20
    :cond_6
    sget-boolean v2, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo:Z

    if-eqz v2, :cond_8

    .line 21
    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCaptureRequestSettings:[I

    if-nez v2, :cond_7

    if-ltz v0, :cond_c

    :goto_4
    move v2, v3

    goto :goto_5

    .line 22
    :cond_7
    aget v2, v2, p2

    if-ne v2, v3, :cond_c

    goto :goto_4

    .line 23
    :cond_8
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OoO00O()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 24
    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCaptureRequestSettings:[I

    if-nez v2, :cond_9

    if-nez v0, :cond_c

    goto :goto_4

    .line 25
    :cond_9
    aget v2, v2, p2

    if-ne v2, v3, :cond_c

    goto :goto_4

    .line 26
    :cond_a
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o00O0()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 27
    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCaptureRequestSettings:[I

    if-nez v2, :cond_b

    if-nez v0, :cond_c

    goto :goto_4

    .line 28
    :cond_b
    aget v2, v2, p2

    if-ne v2, v3, :cond_c

    goto :goto_4

    :cond_c
    move v2, v1

    .line 29
    :goto_5
    iget v5, p0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    const/4 v6, 0x4

    if-ne v5, v3, :cond_d

    :goto_6
    move v5, v3

    goto :goto_7

    :cond_d
    const/4 v7, 0x2

    if-ne v5, v7, :cond_e

    goto :goto_6

    :cond_e
    const/4 v7, 0x3

    if-ne v5, v7, :cond_f

    .line 30
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v5

    invoke-virtual {v5}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00ooOOo()Z

    move-result v5

    goto :goto_7

    :cond_f
    if-ne v5, v6, :cond_10

    .line 31
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v5

    invoke-virtual {v5}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00ooOoO()Z

    move-result v5

    goto :goto_7

    :cond_10
    const/4 v7, -0x1

    if-ne v5, v7, :cond_12

    .line 32
    iget-object v5, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 33
    invoke-virtual {v5}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v5

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v7

    if-eq v5, v7, :cond_11

    iget-object v5, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 34
    invoke-virtual {v5}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v5

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v7

    if-ne v5, v7, :cond_12

    .line 35
    :cond_11
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v5

    invoke-virtual {v5}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o00O0()Z

    move-result v5

    goto :goto_7

    :cond_12
    move v5, v1

    .line 36
    :goto_7
    iget-object v7, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v7}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v7

    invoke-static {v7}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v7

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getFrontCameraId()I

    move-result v8

    if-ne v7, v8, :cond_13

    .line 37
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v7

    invoke-virtual {v7}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000Ooo0()Z

    move-result v7

    goto :goto_8

    :cond_13
    move v7, v1

    :goto_8
    const-string v8, "ShotParallelBurst"

    if-eqz v2, :cond_14

    .line 38
    iget-object v9, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v9}, Lcom/android/camera2/Camera2Proxy;->isFixShotTime()Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v9

    invoke-virtual {v9}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0o0O()Z

    move-result v9

    if-eqz v9, :cond_14

    iget-object v9, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 39
    invoke-virtual {v9}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera2/CameraConfigs;->isMfHdrQuickShotEnabled()Z

    move-result v9

    if-eqz v9, :cond_14

    const-string v2, "Mfhdr quickshot enabled\uff0cdisable mfnr"

    .line 40
    invoke-static {v8, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 41
    :cond_14
    iget-object v9, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v9}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v9, v10}, Lcom/android/camera2/CaptureResultParser;->isDisableMfnrForMfnrHDR(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureResult;)Z

    move-result v9

    if-nez v9, :cond_19

    if-eqz v2, :cond_15

    if-eqz v5, :cond_15

    .line 42
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->isIn3OrMoreSatMode()Z

    move-result v9

    if-eqz v9, :cond_15

    iget v9, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    if-ge v9, v6, :cond_15

    goto :goto_9

    :cond_15
    if-eqz v2, :cond_16

    if-eqz v7, :cond_16

    .line 43
    iget v7, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    if-ge v7, v6, :cond_16

    goto :goto_9

    .line 44
    :cond_16
    iget-boolean v6, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSingleCaptureForHDRplusMFNR:Z

    if-eqz v6, :cond_17

    :goto_9
    move v2, v3

    goto :goto_a

    :cond_17
    if-eqz v2, :cond_18

    if-eqz v5, :cond_18

    .line 45
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v5

    invoke-virtual {v5}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o00O0()Z

    move-result v5

    if-eqz v5, :cond_18

    goto :goto_9

    :cond_18
    if-eqz v2, :cond_19

    .line 46
    iget-boolean v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrBokeh:Z

    if-eqz v2, :cond_19

    goto :goto_9

    :cond_19
    move v2, v1

    :goto_a
    if-eqz v2, :cond_1a

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyHdrParameter enable mfnr EV = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-static {p1, v3}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_b

    .line 49
    :cond_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyHdrParameter disable mfnr EV = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 51
    :goto_b
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 52
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportHdrBokeh(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 53
    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrBokeh:Z

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyHdrBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 54
    :cond_1b
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0o0oo()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 55
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    const/16 v2, 0x138f

    const/16 v5, 0x138d

    if-ne v4, v0, :cond_1d

    const-string v0, "enable isp tuning capture hint for HDR reprocess"

    .line 56
    invoke-static {v8, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspFrameCount(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 58
    invoke-static {p1, v3}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspPackedRawSupport(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 59
    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspFrameIndex(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 60
    invoke-static {p1, v3}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspMetaType(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    .line 61
    invoke-static {p1, v3}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspPackedRawEnable(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 62
    iget p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrType:I

    if-ne p2, v3, :cond_1c

    .line 63
    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspTuningHint(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    goto :goto_c

    .line 64
    :cond_1c
    invoke-static {p1, v5}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspTuningHint(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    goto :goto_c

    .line 65
    :cond_1d
    iget p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrType:I

    if-nez p2, :cond_1e

    const-string p2, "enable isp tuning capture hint for HDR"

    .line 66
    invoke-static {v8, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {p1, v5}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspTuningHint(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    goto :goto_c

    :cond_1e
    if-ne p2, v3, :cond_1f

    const-string p2, "enable isp tuning capture hint for LLHDR"

    .line 68
    invoke-static {v8, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspTuningHint(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 70
    :cond_1f
    :goto_c
    iget-object p2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getExposureCompensationIndex()I

    move-result p2

    if-eqz p2, :cond_20

    goto :goto_d

    :cond_20
    move v3, v1

    .line 71
    :goto_d
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p2

    invoke-virtual {p2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OooO()Z

    move-result p2

    if-eqz p2, :cond_21

    .line 72
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p2

    invoke-virtual {p2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OooO0oo()Z

    move-result p2

    if-eqz p2, :cond_21

    if-eqz v3, :cond_21

    const-string p2, "prepareHDR: if ev changed needed set HDR false "

    .line 73
    invoke-static {v8, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "applyHdrParameter:applyHDR is false since ev changed!"

    .line 74
    invoke-static {v8, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyHDR(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 76
    :cond_21
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p2

    invoke-virtual {p2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0Oooo()Z

    move-result p2

    if-eqz p2, :cond_22

    iget-object p2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p2}, Lcom/android/camera2/Camera2Proxy;->isHdrDegradeMFNREnabled()Z

    move-result p2

    if-eqz p2, :cond_22

    const-string p2, "prepareHDR: if isHdrDegradeMFNREnabled needed set HDR false "

    .line 77
    invoke-static {v8, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyHDR(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 79
    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspTuningHint(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    :cond_22
    return-void

    .line 80
    :cond_23
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wrong request index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private applyLowLightBokehParameter(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applySwMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 3
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method private applyPureViewParameter(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getMotionCaptureType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 2
    sget-object v1, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->ANCHOR_FRAME_TIMESTAMP:Lcom/android/camera2/vendortag/VendorTag;

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->setValueSafely(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyPureViewParameter mSequenceNum:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " capture type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ShotParallelBurst"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    add-int/2addr p2, v1

    .line 4
    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameIndex(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 5
    iget p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameCount(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 6
    iget p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 7
    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyPureViewEnabled(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    const/4 p2, 0x0

    .line 8
    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applySwMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 9
    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 10
    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applySuperResolution(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 11
    sget-object p2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->XIAOMI_MOTION_CAPTURE_TYPE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->setValueQuietly(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    return-void
.end method

.method private applySuperNightParameter(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    if-gt p2, v0, :cond_7

    .line 2
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSuperNightValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    invoke-virtual {v3}, Lcom/android/camera2/vendortag/struct/SuperNightEvValue;->getValue()[I

    move-result-object v3

    aget v3, v3, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "applySuperNightParameter: request[%d].ev = %d"

    .line 4
    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ShotParallelBurst"

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->Oooo00o:Z

    if-nez v0, :cond_1

    sget-boolean v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->Oooo0:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOoo0:Z

    if-nez v0, :cond_2

    .line 7
    invoke-static {p1, v5}, Lcom/android/camera2/compat/MiCameraCompat;->applyHdrBracketMode(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    goto :goto_1

    .line 8
    :cond_1
    :goto_0
    invoke-static {p1, v5}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 9
    :cond_2
    :goto_1
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-static {v0}, Lcom/xiaomi/camera/base/Constants;->isMTKRawSuperNight(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "apply raw super night params"

    .line 10
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSuperNightValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    invoke-virtual {v3}, Lcom/android/camera2/vendortag/struct/SuperNightEvValue;->getValue()[I

    move-result-object v3

    aget p2, v3, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 12
    invoke-static {p1, v5}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspMetaType(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    .line 13
    invoke-static {p1, v5}, Lcom/android/camera2/compat/MiCameraCompat;->applySuperNightRawEnabled(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 14
    invoke-static {p1, v5}, Lcom/android/camera2/compat/MiCameraCompat;->applyMtkProcessRaw(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    const/16 p2, 0x1390

    .line 15
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSuperNightAepLineValue:[I

    if-eqz v0, :cond_3

    array-length v3, v0

    if-lt v3, v1, :cond_3

    aget v1, v0, v4

    if-ne v1, v5, :cond_3

    .line 16
    aget p2, v0, v5

    .line 17
    :cond_3
    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspTuningHint(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 18
    iget p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    const/16 v0, 0xf

    if-ne p2, v0, :cond_6

    const-string p2, "disable zsl for supernight se"

    .line 19
    invoke-static {v2, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_2

    .line 21
    :cond_4
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSuperNightValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    invoke-virtual {v3}, Lcom/android/camera2/vendortag/struct/SuperNightEvValue;->getValue()[I

    move-result-object v3

    aget p2, v3, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/16 p2, 0x10

    .line 22
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mRawCallbackType:I

    if-ne p2, v0, :cond_6

    .line 23
    sget-object p2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MIVI_SUPER_NIGHT_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, p2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_6

    .line 24
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0xa

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v0, v3, :cond_6

    .line 25
    :cond_5
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v4

    .line 26
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v5

    const-string p2, "force set mivi super night mode from %d to %d"

    .line 27
    invoke-static {v0, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-static {p1, v5}, Lcom/android/camera2/compat/MiCameraCompat;->applyMiviSuperNightMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 29
    :cond_6
    :goto_2
    iget p2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 30
    invoke-static {p1, v4}, Lcom/android/camera2/compat/MiCameraCompat;->applySwMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 31
    invoke-static {p1, v4}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void

    .line 32
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wrong request index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private applySuperResolutionParameter(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 6

    add-int/lit8 v0, p2, 0x1

    .line 1
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameIndex(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 2
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameCount(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 3
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMfnrEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 5
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyHDR(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    const/4 v1, 0x1

    .line 6
    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applySuperResolution(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 7
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 8
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oooOo()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    :cond_0
    invoke-static {p1, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 10
    invoke-static {p1, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAWBLock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 11
    :cond_1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v2

    const-string v3, "ShotParallelBurst"

    if-eqz v2, :cond_2

    .line 12
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0o0oo()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "enable isp tuning capture hint for MFSR"

    .line 13
    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x138e

    .line 14
    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspTuningHint(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 15
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyNoiseReduction(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 16
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyHighQualityReprocess(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 17
    iget v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspFrameCount(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 18
    invoke-static {p1, p2}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspFrameIndex(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 19
    :cond_2
    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrSR:Z

    if-eqz v2, :cond_6

    .line 20
    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyMiHDRSR(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 21
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyHDR(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 22
    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    aget v2, v2, p2

    iget v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mBaseEvValue:I

    if-ne v2, v4, :cond_4

    .line 23
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00O0OOO()Z

    move-result v2

    if-nez v2, :cond_3

    .line 24
    iget v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iget v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mNbrOfNonBaseEVs:I

    sub-int/2addr v2, v4

    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 25
    :cond_3
    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applySuperResolution(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_0

    .line 26
    :cond_4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00O0OOO()Z

    move-result v2

    if-nez v2, :cond_5

    .line 27
    iget v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mNbrOfNonBaseEVs:I

    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyMultiFrameInputNum(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 28
    :cond_5
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applySuperResolution(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 29
    :goto_0
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 30
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    aget v0, v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    const-string v0, "HdrSrEv[%d]=%d"

    invoke-static {v2, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    aget p2, v2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 32
    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyHdrBracketMode(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    goto :goto_1

    .line 33
    :cond_6
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyMiHDRSR(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :goto_1
    return-void
.end method

.method private checkAnchorFrameLegacy()Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    const/4 v1, 0x0

    const-string v2, "ShotParallelBurst"

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    const-string v0, "legacy SR disable anchor frame"

    .line 2
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    const-string v0, "legacy HDR enable anchor frame"

    .line 3
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    const/16 v4, 0xa

    if-eq v0, v4, :cond_3

    const/16 v4, 0xc

    if-ne v0, v4, :cond_2

    goto :goto_0

    :cond_2
    return v3

    :cond_3
    :goto_0
    const-string v0, "legacy super night disable anchor frame"

    .line 4
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private doAnchorFrameAsThumbnail()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->isModuleAnchorFrame()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ShotParallelBurst"

    if-nez v0, :cond_0

    const-string v0, "anchor frame do not enable"

    .line 2
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->isNeedFlashOn()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO0oO0()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "flash disable anchor"

    .line 5
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 6
    :cond_2
    iget v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    const/16 v4, 0xf

    if-ne v3, v4, :cond_3

    return v1

    .line 7
    :cond_3
    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getAnchorFrameMask()I

    move-result v1

    if-nez v1, :cond_4

    .line 8
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->checkAnchorFrameLegacy()Z

    move-result v0

    return v0

    .line 9
    :cond_4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    .line 10
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v4

    xor-int/2addr v4, v3

    .line 11
    iget v5, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    const/4 v3, 0x2

    .line 12
    invoke-static {v0, v1, v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAnchorFrameType(Lcom/android/camera2/CameraCapabilities;II)Z

    move-result v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SR anchor frame "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_5
    if-eq v5, v3, :cond_b

    const/16 v3, 0x14

    if-ne v5, v3, :cond_6

    goto :goto_1

    :cond_6
    const/16 v3, 0xa

    if-eq v5, v3, :cond_a

    const/16 v6, 0xc

    if-ne v5, v6, :cond_7

    goto :goto_0

    :cond_7
    const/16 v6, 0x11

    if-ne v5, v6, :cond_8

    const/16 v3, 0x64

    .line 14
    invoke-static {v0, v1, v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAnchorFrameType(Lcom/android/camera2/CameraCapabilities;II)Z

    move-result v0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cup capture anchor frame "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 16
    :cond_8
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v5

    if-eqz v5, :cond_9

    iget v5, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSatFusionType:I

    if-eqz v5, :cond_9

    .line 17
    invoke-static {v0, v1, v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAnchorFrameType(Lcom/android/camera2/CameraCapabilities;II)Z

    move-result v0

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "back fusion anchor frame "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_9
    const-string v0, "default anchor frame true"

    .line 19
    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_a
    :goto_0
    const/4 v3, 0x6

    .line 20
    invoke-static {v0, v1, v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAnchorFrameType(Lcom/android/camera2/CameraCapabilities;II)Z

    move-result v0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "super night anchor frame "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_b
    :goto_1
    if-nez v1, :cond_c

    const/4 v3, 0x5

    .line 22
    invoke-static {v0, v1, v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAnchorFrameType(Lcom/android/camera2/CameraCapabilities;II)Z

    move-result v0

    goto :goto_2

    :cond_c
    const/16 v3, 0x66

    .line 23
    invoke-static {v0, v1, v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAnchorFrameType(Lcom/android/camera2/CameraCapabilities;II)Z

    move-result v0

    .line 24
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HDR anchor frame "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private getHDSRStates()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getZoomRatio()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->isInSRZoomRatioTheInterval(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera2/CameraCapabilities;F)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    .line 2
    invoke-static {v0}, Lcom/android/camera2/CaptureResultParser;->getHdrDetectedScene(Landroid/hardware/camera2/CaptureResult;)I

    move-result v0

    if-eq v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    .line 3
    invoke-static {v0}, Lcom/android/camera2/CaptureResultParser;->getHdrSrDetectedScene(Landroid/hardware/camera2/CaptureResult;)I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private initFeatureSetting()V
    .locals 9

    const-string v0, "ShotParallelBurst"

    const-string v1, "initFeatureSetting: E"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getSensorRawImageSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getOutputSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initFeatureSetting: rawInputSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", yuvInputSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->getOutputSize()Lcom/android/camera/CameraSize;

    move-result-object v3

    if-nez v3, :cond_0

    .line 6
    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v4

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v4

    :goto_0
    if-nez v3, :cond_1

    .line 7
    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v5

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v5

    .line 8
    :goto_1
    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v6

    if-ne v4, v6, :cond_2

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 9
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initFeatureSetting: outputSize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_3
    new-instance v3, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    iget-object v6, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 11
    invoke-virtual {v6}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera2/CameraConfigs;->getPhotoFormat()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;-><init>(III)V

    .line 12
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v4

    .line 13
    iget-object v5, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    .line 14
    new-instance v6, Lcom/xiaomi/camera/isp/IspInterfaceIO;

    new-instance v7, Landroid/util/Size;

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v2

    invoke-direct {v7, v8, v2}, Landroid/util/Size;-><init>(II)V

    new-instance v2, Landroid/util/Size;

    .line 15
    invoke-virtual {v1}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v8

    invoke-virtual {v1}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v1

    invoke-direct {v2, v8, v1}, Landroid/util/Size;-><init>(II)V

    invoke-direct {v6, v7, v2, v3}, Lcom/xiaomi/camera/isp/IspInterfaceIO;-><init>(Landroid/util/Size;Landroid/util/Size;Lcom/xiaomi/camera/imagecodec/OutputConfiguration;)V

    .line 16
    invoke-static {v5}, Lcom/xiaomi/camera/base/CameraDeviceUtil;->getNativeMetadata(Landroid/hardware/camera2/CaptureResult;)Landroid/os/Parcelable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 17
    invoke-virtual {v4, v6, v1, v2, v3}, Lcom/android/camera/LocalParallelService$LocalBinder;->queryFeatureSetting(Lcom/xiaomi/camera/isp/IspInterfaceIO;Landroid/os/Parcelable;Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;Z)Lcom/xiaomi/camera/imagecodec/FeatureSetting;

    :cond_4
    const-string v1, "initFeatureSetting: X"

    .line 18
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private isMTKRawSuperNightCallback(I)Z
    .locals 0

    and-int/lit8 p1, p1, 0x28

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isUpdateHDRCheckerValues()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private prepareClearShot(I)V
    .locals 0

    const/4 p1, 0x5

    .line 1
    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    return-void
.end method

.method private prepareHHT(I)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v0

    const-string v1, "ShotParallelBurst"

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 3
    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isAiASDEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->oo0OOoo()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/LocalParallelService$LocalBinder;->getParallelTaskNum()I

    move-result p1

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0oo()I

    move-result v2

    if-lt p1, v2, :cond_0

    const/4 p1, 0x1

    .line 6
    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    const-string p1, "switch to quick shot hht(1 -> 1)"

    .line 7
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 8
    iget-object p1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 9
    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->isAiASDEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 10
    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getBeautyValues()Lcom/android/camera/fragment/beauty/BeautyValues;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 11
    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getBeautyValues()Lcom/android/camera/fragment/beauty/BeautyValues;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/beauty/BeautyValues;->isSmoothLevelOn()Z

    move-result p1

    if-nez p1, :cond_1

    .line 12
    invoke-virtual {v0}, Lcom/android/camera/LocalParallelService$LocalBinder;->isIdle()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x3

    .line 13
    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    const-string p1, "switch to quick shot hht(3 -> 1)"

    .line 14
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureResultParser;->getHHTFrameNumber(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureResult;)I

    move-result p1

    if-lez p1, :cond_2

    .line 16
    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHHTFrameNumber hht("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " -> 1)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 p1, 0x5

    .line 18
    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    const-string p1, "default hht(5 -> 1)"

    .line 19
    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private prepareHdr()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getHDRStatus()Lcom/android/camera2/Camera2Proxy$HDRStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy$HDRStatus;->isFlashHDR()Z

    move-result v0

    const-string v1, "ShotParallelBurst"

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareHDR: night hdr ev_value:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2, v0}, Lcom/android/camera2/MiCamera2;->useSingleCaptureForHdrPlusMfnr(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSingleCaptureForHDRplusMFNR:Z

    .line 5
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getExposureCompensationIndex()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    .line 6
    :goto_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v4

    invoke-virtual {v4}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OooO0oo()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v0, :cond_3

    .line 7
    :cond_2
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v4

    invoke-virtual {v4}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0Oooo()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v4}, Lcom/android/camera2/Camera2Proxy;->isHdrDegradeMFNREnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const-string v4, "prepareHDR: user mfnr capture since ev changed or support HdrDegradeMFNR! "

    .line 8
    invoke-static {v1, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iput-boolean v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSingleCaptureForHDRplusMFNR:Z

    .line 10
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepareHDR: singleFrameHDR = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSingleCaptureForHDRplusMFNR:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object v4, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v4}, Lcom/android/camera2/CaptureResultParser;->isZslHdrEnabled(Landroid/hardware/camera2/CaptureResult;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mZslHdrEnabled:Z

    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepareHDR: isZslHdrEnable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mZslHdrEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object v4, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v4}, Lcom/android/camera2/CaptureResultParser;->getHdrCaptureRequestSettings(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v4

    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepareHDR: requestSettings = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-boolean v5, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSingleCaptureForHDRplusMFNR:Z

    const-string v6, "prepareHDR: illegal hdr settings"

    const/4 v7, 0x0

    if-eqz v5, :cond_6

    .line 16
    iput-object v7, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCaptureRequestSettings:[I

    .line 17
    iput v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    .line 18
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v5

    invoke-virtual {v5}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OooO0oo()Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v0, :cond_5

    new-array v0, v3, [I

    .line 19
    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->getExposureCompensationIndex()I

    move-result v3

    aput v3, v0, v2

    iput-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    goto :goto_2

    :cond_5
    new-array v0, v3, [I

    aput v2, v0, v2

    .line 20
    iput-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    goto :goto_2

    .line 21
    :cond_6
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v0}, Lcom/android/camera2/CaptureResultParser;->getHdrCheckerValues(Landroid/hardware/camera2/CaptureResult;)[B

    move-result-object v0

    .line 22
    new-instance v2, Lcom/android/camera2/vendortag/struct/HdrEvValue;

    invoke-direct {v2, v0}, Lcom/android/camera2/vendortag/struct/HdrEvValue;-><init>([B)V

    .line 23
    invoke-virtual {v2}, Lcom/android/camera2/vendortag/struct/HdrEvValue;->getHdrType()I

    move-result v0

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrType:I

    .line 24
    invoke-virtual {v2}, Lcom/android/camera2/vendortag/struct/HdrEvValue;->getSequenceNum()I

    move-result v0

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    .line 25
    invoke-virtual {v2}, Lcom/android/camera2/vendortag/struct/HdrEvValue;->getHdrCheckerEvValue()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    if-eqz v4, :cond_8

    .line 26
    array-length v2, v4

    array-length v0, v0

    if-ge v2, v0, :cond_7

    goto :goto_1

    .line 27
    :cond_7
    iput-object v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCaptureRequestSettings:[I

    goto :goto_2

    .line 28
    :cond_8
    :goto_1
    invoke-static {v1, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iput-object v7, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCaptureRequestSettings:[I

    .line 30
    :goto_2
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->isUpdateHDRCheckerValues()Z

    move-result v0

    const-string v2, ",EvValue = "

    const-string v3, ",adrc = "

    const-string v5, "prepareHdr: scene = "

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getHdrCheckerEvValue()[I

    move-result-object v0

    if-eqz v0, :cond_c

    const-string v0, "prepareHDR: hdr checker values not updated"

    .line 31
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getHdrCheckerEvValue()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    if-eqz v4, :cond_a

    .line 33
    array-length v8, v4

    array-length v0, v0

    if-ge v8, v0, :cond_9

    goto :goto_3

    .line 34
    :cond_9
    iput-object v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCaptureRequestSettings:[I

    goto :goto_4

    .line 35
    :cond_a
    :goto_3
    invoke-static {v1, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iput-object v7, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCaptureRequestSettings:[I

    .line 37
    :goto_4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getHdrCheckerSceneType()I

    move-result v0

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerSceneType:I

    .line 38
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getHdrCheckerAdrc()I

    move-result v0

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerAdrc:I

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerSceneType:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerAdrc:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    if-eqz v2, :cond_b

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    :cond_b
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 42
    :cond_c
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v0}, Lcom/android/camera2/CaptureResultParser;->getHdrCheckerSceneType(Landroid/hardware/camera2/CaptureResult;)I

    move-result v0

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerSceneType:I

    .line 43
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v0}, Lcom/android/camera2/CaptureResultParser;->getHdrCheckerAdrc(Landroid/hardware/camera2/CaptureResult;)I

    move-result v0

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerAdrc:I

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerSceneType:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerAdrc:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    if-eqz v2, :cond_d

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    :cond_d
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigs;->setHdrCheckerEvValue([I)V

    .line 48
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    iget v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerSceneType:I

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigs;->setHdrCheckerSceneType(I)V

    .line 49
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    iget v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerAdrc:I

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigs;->setHdrCheckerAdrc(I)V

    return-void
.end method

.method private prepareLowLightBokeh()V
    .locals 1

    const/4 v0, 0x6

    .line 1
    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    return-void
.end method

.method private preparePurePreview()V
    .locals 1

    const/4 v0, 0x5

    .line 1
    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    return-void
.end method

.method private prepareSR(Z)V
    .locals 6

    const-string v0, "ShotParallelBurst"

    if-eqz p1, :cond_3

    .line 1
    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v1}, Lcom/android/camera2/CaptureResultParser;->getHdrCaptureRequestSettings(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v1

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareSR: hdr settings = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v2}, Lcom/android/camera2/CaptureResultParser;->getHdrCheckerValues(Landroid/hardware/camera2/CaptureResult;)[B

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v3}, Lcom/android/camera2/CaptureResultParser;->getHdrSrRequestExpandRules(Landroid/hardware/camera2/CaptureResult;)[B

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepareSR: evExpandRules ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v4, "prepareSR: no evExpandRules"

    .line 6
    invoke-static {v0, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :goto_0
    new-instance v4, Lcom/android/camera2/vendortag/struct/HdrEvValue;

    invoke-direct {v4, v2, p1, v3}, Lcom/android/camera2/vendortag/struct/HdrEvValue;-><init>([BZ[B)V

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareSR: hdr ev values = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {v4}, Lcom/android/camera2/vendortag/struct/HdrEvValue;->getSequenceNum()I

    move-result p1

    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    .line 10
    invoke-virtual {v4}, Lcom/android/camera2/vendortag/struct/HdrEvValue;->getHdrCheckerEvValue()[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    if-eqz v1, :cond_2

    .line 11
    array-length v2, v1

    array-length p1, p1

    if-ge v2, p1, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    iput-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCaptureRequestSettings:[I

    goto :goto_2

    :cond_2
    :goto_1
    const-string p1, "prepareSR: illegal hdr settings"

    .line 13
    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCaptureRequestSettings:[I

    .line 15
    :goto_2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mHdrCheckerEvValue:[I

    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mBaseEvValue:I

    .line 16
    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p1

    new-instance v0, LOooO0O0/OooO0O0/OooO0O0/OooOOO0;

    invoke-direct {v0, p0}, LOooO0O0/OooO0O0/OooO0O0/OooOOO0;-><init>(Lcom/android/camera2/MiCamera2ShotParallelBurst;)V

    invoke-interface {p1, v0}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->count()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mNbrOfNonBaseEVs:I

    add-int/lit8 p1, p1, 0x1

    .line 17
    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    goto :goto_3

    .line 18
    :cond_3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0000oo()I

    move-result p1

    const-string v1, "camera.sr.framecount"

    .line 19
    invoke-static {v1, p1}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput p1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareSR: captureNum="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method private prepareSuperNight()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getMiviSuperNightData()Lcom/android/camera2/vendortag/struct/MiviSuperNightData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->getSuperNightEvValue()Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSuperNightValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v0}, Lcom/android/camera2/CaptureResultParser;->getSuperNightCheckerEv(Landroid/hardware/camera2/CaptureResult;)[B

    move-result-object v0

    const-string v1, "camera.debug.superlowlight"

    .line 4
    invoke-static {v1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/camera2/vendortag/struct/SuperNightEvValue;->parseSuperNightEvValue([BLjava/lang/String;Z)Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSuperNightValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    .line 6
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareSuperNight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSuperNightValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    invoke-virtual {v1}, Lcom/android/camera2/vendortag/struct/SuperNightEvValue;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShotParallelBurst"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSuperNightValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/struct/SuperNightEvValue;->getSequenceNum()I

    move-result v0

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    .line 8
    iget-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v0}, Lcom/android/camera2/CaptureResultParser;->getSuperNightCheckerAepLine(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSuperNightAepLineValue:[I

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareSuperNight, mSuperNightAepLineValue: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSuperNightAepLineValue:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-static {v0}, Lcom/xiaomi/camera/base/Constants;->isMTKRawSuperNight(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->initFeatureSetting()V

    :cond_1
    return-void
.end method

.method private removeRtStreamTargetForSrIfNeed(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    if-eqz p1, :cond_4

    .line 1
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oooOo()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 5
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->disableRtStreamForSrRequired(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v0

    const-string v1, "ShotParallelBurst"

    if-eqz v0, :cond_3

    const-string v2, "removeRtStreamTargetForSrIfNeed \uff1aremove preview surface for SR capture !"

    .line 7
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2;->getPreviewImageReader()Landroid/media/ImageReader;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v2, "removeRtStreamTargetForSrIfNeed \uff1aremove qr code surface for SR capture !"

    .line 10
    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic OooO00o(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mBaseEvValue:I

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;

    invoke-direct {v0, p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst$1;-><init>(Lcom/android/camera2/MiCamera2ShotParallelBurst;)V

    return-object v0
.end method

.method public generateRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mUseParallelVtCam:Z

    const/4 v2, 0x2

    if-nez v1, :cond_0

    .line 2
    iget-object v1, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 4
    :goto_0
    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->isQcfaEnable()Z

    move-result v3

    const/16 v6, 0x10

    const/16 v7, 0x11

    const/16 v8, 0x23

    const/16 v9, 0xf

    const/4 v10, 0x3

    const/16 v11, 0x14

    const/4 v12, 0x0

    const-string v13, "ShotParallelBurst"

    const/4 v14, 0x1

    if-eqz v3, :cond_4

    .line 5
    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getQcfaRemoteSurface()Landroid/view/Surface;

    move-result-object v3

    .line 6
    iget v15, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v7, v15, :cond_1

    .line 7
    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getSharedRawSurface()Landroid/view/Surface;

    move-result-object v3

    .line 8
    iget-object v15, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v15}, Lcom/android/camera2/MiCamera2;->getBinningPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v15

    iput-object v15, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    .line 9
    :cond_1
    invoke-static {v3}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v15

    .line 10
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v12

    aput-object v15, v2, v14

    const-string v4, "[QCFA]add surface %s to capture request, size is: %s"

    invoke-static {v5, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 12
    iget-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mLockedAlgoSize:Landroid/util/Size;

    if-eqz v2, :cond_2

    .line 13
    invoke-virtual {v0, v2, v8}, Lcom/android/camera2/MiCamera2ShotParallel;->configParallelSession(Landroid/util/Size;I)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    goto :goto_1

    .line 14
    :cond_2
    iget v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-eq v7, v2, :cond_3

    .line 15
    invoke-virtual {v0, v15, v8}, Lcom/android/camera2/MiCamera2ShotParallel;->configParallelSession(Landroid/util/Size;I)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    :cond_3
    :goto_1
    move v3, v12

    goto/16 :goto_12

    .line 16
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2ShotParallel;->isIn3OrMoreSatMode()Z

    move-result v3

    const/16 v4, 0xa

    if-nez v3, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2ShotParallel;->isInMultiSurfaceSatMode()Z

    move-result v3

    if-eqz v3, :cond_5

    goto/16 :goto_6

    .line 17
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "algoType = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getParallelSpecList()Landroid/util/SparseArray;

    move-result-object v3

    .line 19
    invoke-static {v3}, Lcom/android/camera2/imagereaders/ImageReaderSurface;->getSurfaceFromSparseArray(Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v3

    .line 20
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/Surface;

    const/16 v15, 0xc

    .line 21
    iget v8, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v15, v8, :cond_6

    .line 22
    iget-object v8, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v8}, Lcom/android/camera2/MiCamera2;->getSharedRawSurface()Landroid/view/Surface;

    move-result-object v8

    if-eq v5, v8, :cond_c

    iget-object v8, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 23
    invoke-virtual {v8}, Lcom/android/camera2/MiCamera2;->getRawSurfaceForTuningBuffer()Landroid/view/Surface;

    move-result-object v8

    if-eq v5, v8, :cond_c

    :goto_3
    goto/16 :goto_4

    :cond_6
    if-eq v9, v8, :cond_e

    if-ne v11, v8, :cond_7

    goto/16 :goto_5

    :cond_7
    if-ne v4, v8, :cond_8

    .line 24
    iget v8, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mRawCallbackType:I

    if-ne v6, v8, :cond_8

    .line 25
    iget-object v8, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v8}, Lcom/android/camera2/MiCamera2;->getSharedRawSurface()Landroid/view/Surface;

    move-result-object v8

    if-eq v5, v8, :cond_c

    goto :goto_3

    .line 26
    :cond_8
    iget v8, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v7, v8, :cond_9

    iget v8, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mRawCallbackType:I

    if-ne v6, v8, :cond_9

    .line 27
    iget-object v8, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v8}, Lcom/android/camera2/MiCamera2;->getSharedRawSurface()Landroid/view/Surface;

    move-result-object v8

    if-eq v5, v8, :cond_c

    goto :goto_3

    .line 28
    :cond_9
    iget-object v8, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v8}, Lcom/android/camera2/MiCamera2;->getSharedRawSurface()Landroid/view/Surface;

    move-result-object v8

    if-eq v8, v5, :cond_d

    iget-object v8, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 29
    invoke-virtual {v8}, Lcom/android/camera2/MiCamera2;->getRawSurfaceForTuningBuffer()Landroid/view/Surface;

    move-result-object v8

    if-eq v8, v5, :cond_d

    iget-object v8, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 30
    invoke-virtual {v8}, Lcom/android/camera2/MiCamera2;->getTuningRemoteSurface()Landroid/view/Surface;

    move-result-object v8

    if-ne v8, v5, :cond_a

    goto :goto_3

    .line 31
    :cond_a
    iget v8, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-eq v14, v8, :cond_b

    if-ne v11, v8, :cond_c

    :cond_b
    iget-boolean v8, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrBokeh:Z

    if-eqz v8, :cond_c

    iget-object v8, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 32
    invoke-virtual {v8}, Lcom/android/camera2/MiCamera2;->getBokehMainRawSurface()Landroid/view/Surface;

    move-result-object v8

    if-eq v5, v8, :cond_d

    iget-object v8, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 33
    invoke-virtual {v8}, Lcom/android/camera2/MiCamera2;->getBokehSubRawSurface()Landroid/view/Surface;

    move-result-object v8

    if-ne v5, v8, :cond_c

    goto :goto_3

    .line 34
    :cond_c
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v15, v2, [Ljava/lang/Object;

    aput-object v5, v15, v12

    .line 35
    invoke-static {v5}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v16

    aput-object v16, v15, v14

    const-string v7, "add surface %s to capture request, size is: %s"

    .line 36
    invoke-static {v8, v7, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {v1, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    const/16 v7, 0x11

    :cond_d
    :goto_4
    const/16 v8, 0x23

    goto/16 :goto_2

    .line 38
    :cond_e
    :goto_5
    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v3

    iput-object v3, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    move v3, v12

    goto/16 :goto_11

    .line 39
    :cond_f
    :goto_6
    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getSatMasterCameraId()I

    move-result v3

    iput v3, v0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    .line 40
    iget v5, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v9, v5, :cond_10

    const/16 v5, 0x20

    goto :goto_7

    :cond_10
    const/16 v5, 0x23

    :goto_7
    const/4 v7, 0x0

    .line 41
    iget v8, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v4, v8, :cond_14

    iget v4, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mRawCallbackType:I

    if-ne v6, v4, :cond_14

    .line 42
    iget-object v4, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    iget v7, v0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    invoke-virtual {v4, v7}, Lcom/android/camera2/MiCamera2;->getSatRawSurface(I)Landroid/view/Surface;

    move-result-object v4

    .line 43
    invoke-virtual {v1, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 44
    invoke-static {v4}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v7

    .line 45
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v15, v2, [Ljava/lang/Object;

    aput-object v4, v15, v12

    aput-object v7, v15, v14

    const-string v4, "[SAT]add raw surface %s to capture request, size is: %s"

    invoke-static {v8, v4, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v4, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    iget v8, v0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    invoke-virtual {v4, v8}, Lcom/android/camera2/MiCamera2;->getMainCaptureSurface(I)Landroid/view/Surface;

    move-result-object v4

    .line 47
    invoke-static {v4}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v4

    if-eqz v4, :cond_12

    .line 48
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v15

    if-ne v8, v15, :cond_11

    .line 49
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v15

    if-eq v8, v15, :cond_12

    .line 50
    :cond_11
    new-instance v7, Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v15

    invoke-direct {v7, v8, v15}, Landroid/util/Size;-><init>(II)V

    .line 51
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[SAT]override output size to "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_12
    iget-object v4, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v4}, Lcom/android/camera2/MiCamera2;->getSatPhysicalCameraId()I

    move-result v4

    iput v4, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMainPhysicalCameraId:I

    .line 53
    iget v4, v0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    if-ne v14, v4, :cond_13

    move v3, v10

    goto/16 :goto_f

    :cond_13
    const/16 v3, 0x201

    goto/16 :goto_f

    .line 54
    :cond_14
    iget-boolean v4, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mUseParallelVtCam:Z

    if-nez v4, :cond_1d

    .line 55
    iget-boolean v4, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsFakeSatEnabled:Z

    if-eqz v4, :cond_15

    .line 56
    iget-object v4, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    iget v7, v0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    invoke-virtual {v4, v7}, Lcom/android/camera2/MiCamera2;->getFakeSatMainCaptureSurface(I)Landroid/view/Surface;

    move-result-object v4

    .line 57
    iget-object v7, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v7}, Lcom/android/camera2/MiCamera2;->getFakeSatOutputSize()Landroid/util/Size;

    move-result-object v7

    .line 58
    iget v8, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-static {v1, v8}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspFrameCount(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    goto/16 :goto_9

    .line 59
    :cond_15
    iget v4, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-eq v4, v14, :cond_16

    if-ne v4, v11, :cond_17

    :cond_16
    iget-boolean v4, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrSR:Z

    if-nez v4, :cond_17

    .line 60
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHighQualityPreferred()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 61
    iget-object v4, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v4}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v4

    if-eqz v4, :cond_17

    .line 62
    invoke-static {v4}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedHdrType(Lcom/android/camera2/CameraCapabilities;)I

    move-result v4

    if-ne v10, v4, :cond_17

    .line 63
    iget-object v4, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    iget v7, v0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    invoke-virtual {v4, v7}, Lcom/android/camera2/MiCamera2;->getTiledMainCaptureSurface(I)Landroid/view/Surface;

    move-result-object v7

    move v4, v14

    goto :goto_8

    :cond_17
    move v4, v12

    .line 64
    :goto_8
    iget-object v8, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v8}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera2/CameraConfigs;->getBinningSrData()Lcom/android/camera2/vendortag/struct/BinningSrData;

    move-result-object v8

    if-eqz v8, :cond_18

    .line 65
    invoke-virtual {v8}, Lcom/android/camera2/vendortag/struct/BinningSrData;->isBinningSrEnabled()Z

    move-result v8

    if-eqz v8, :cond_18

    iget v8, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v8, v10, :cond_18

    iget v8, v0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    if-ne v2, v8, :cond_18

    iget-object v8, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 66
    invoke-virtual {v8}, Lcom/android/camera2/MiCamera2;->getZoomRatio()F

    move-result v8

    const/high16 v15, 0x40000000    # 2.0f

    cmpl-float v8, v8, v15

    if-ltz v8, :cond_18

    const-string v7, "[SAT] add binning sr surface "

    .line 67
    invoke-static {v13, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v7, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v7}, Lcom/android/camera2/MiCamera2;->getSatBinningSRSurface()Landroid/view/Surface;

    move-result-object v7

    :cond_18
    if-nez v7, :cond_19

    .line 69
    iget-object v7, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    iget v8, v0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    invoke-virtual {v7, v8}, Lcom/android/camera2/MiCamera2;->getMainCaptureSurface(I)Landroid/view/Surface;

    move-result-object v7

    .line 70
    :cond_19
    invoke-static {v7}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v8

    if-eqz v4, :cond_1a

    .line 71
    new-instance v4, Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x4

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-direct {v4, v15, v8}, Landroid/util/Size;-><init>(II)V

    .line 72
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v15, v14, [Ljava/lang/Object;

    aput-object v4, v15, v12

    const-string v3, "[SAT]hdr fusion mode, size is: %s"

    invoke-static {v8, v3, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v17, v7

    move-object v7, v4

    move-object/from16 v4, v17

    goto :goto_9

    :cond_1a
    move-object v4, v7

    move-object v7, v8

    .line 73
    :goto_9
    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getSatMasterCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isFakeSatV2Supported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 74
    iget-boolean v3, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsFakeSatEnabled:Z

    invoke-static {v1, v3}, Lcom/android/camera2/compat/MiCameraCompat;->applyRemosaicEnabled(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 75
    :cond_1b
    iget v3, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v3, v9, :cond_1c

    .line 76
    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getSharedRawSurface()Landroid/view/Surface;

    move-result-object v4

    .line 77
    invoke-static {v4}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v3

    goto :goto_a

    :cond_1c
    if-ne v11, v3, :cond_1e

    .line 78
    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getSharedRawSurface()Landroid/view/Surface;

    move-result-object v4

    goto :goto_b

    .line 79
    :cond_1d
    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v3

    iget v4, v0, Lcom/android/camera2/MiCamera2Shot;->mSatCameraId:I

    invoke-virtual {v3, v4}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getCaptureSurface(I)Landroid/view/Surface;

    move-result-object v4

    .line 80
    invoke-static {v4}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v3

    :goto_a
    move-object v7, v3

    .line 81
    :cond_1e
    :goto_b
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v4, v8, v12

    aput-object v7, v8, v14

    const-string v15, "[SAT]add main surface %s to capture request, size is: %s"

    invoke-static {v3, v15, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getSatPhysicalCameraId()I

    move-result v3

    iput v3, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMainPhysicalCameraId:I

    .line 83
    invoke-virtual {v1, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 84
    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getUltraWideRemoteSurface()Landroid/view/Surface;

    move-result-object v3

    if-eq v4, v3, :cond_21

    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 85
    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getTiledUltraWideRemoteSurface()Landroid/view/Surface;

    move-result-object v3

    if-eqz v3, :cond_1f

    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getTiledUltraWideRemoteSurface()Landroid/view/Surface;

    move-result-object v3

    if-eq v4, v3, :cond_21

    :cond_1f
    iget-boolean v3, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mUseParallelVtCam:Z

    if-eqz v3, :cond_20

    .line 86
    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getCaptureSurface(I)Landroid/view/Surface;

    move-result-object v3

    if-ne v4, v3, :cond_20

    goto :goto_c

    :cond_20
    const/16 v3, 0x201

    goto :goto_d

    :cond_21
    :goto_c
    move v3, v10

    .line 87
    :goto_d
    iget v4, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSatFusionType:I

    if-eq v4, v14, :cond_23

    if-ne v4, v2, :cond_22

    goto :goto_e

    .line 88
    :cond_22
    sget-object v4, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->CONTROL_SAT_FUSION_SHOT:Lcom/android/camera2/vendortag/VendorTag;

    .line 89
    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    .line 90
    invoke-static {v1, v4, v8}, Lcom/android/camera2/vendortag/VendorTagHelper;->setValueQuietly(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    goto :goto_f

    .line 91
    :cond_23
    :goto_e
    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getUltraTeleRemoteSurface()Landroid/view/Surface;

    move-result-object v3

    .line 92
    invoke-static {v3}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v4

    .line 93
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v15, v2, [Ljava/lang/Object;

    aput-object v3, v15, v12

    aput-object v4, v15, v14

    const-string v4, "[SAT]add ultra tele surface %s to capture request, size is: %s"

    invoke-static {v8, v4, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result v4

    iput v4, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSubPhysicalCameraId:I

    .line 95
    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 96
    sget-object v3, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->CONTROL_SAT_FUSION_SHOT:Lcom/android/camera2/vendortag/VendorTag;

    .line 97
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    .line 98
    invoke-static {v1, v3, v4}, Lcom/android/camera2/vendortag/VendorTagHelper;->setValueQuietly(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    const/16 v3, 0x204

    .line 99
    :goto_f
    iget v4, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v9, v4, :cond_24

    const v8, 0x8014

    .line 100
    invoke-virtual {v0, v8, v7, v5, v3}, Lcom/android/camera2/MiCamera2ShotParallel;->configParallelSession(ILandroid/util/Size;II)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v3

    iput-object v3, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    .line 101
    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v3

    iput-object v3, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    goto :goto_10

    :cond_24
    if-ne v11, v4, :cond_25

    .line 102
    invoke-virtual {v0, v12, v7, v5, v3}, Lcom/android/camera2/MiCamera2ShotParallel;->configParallelSession(ILandroid/util/Size;II)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v3

    iput-object v3, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    goto :goto_10

    .line 103
    :cond_25
    iget-object v4, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v4}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v4

    if-eqz v4, :cond_27

    .line 104
    invoke-static {v4}, Lcom/android/camera2/CameraCapabilitiesUtil;->isHighPerformanceSessionKeySupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v8

    if-eqz v8, :cond_27

    .line 105
    invoke-static {v4}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportHighQualityPreferred(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v4

    if-eqz v4, :cond_27

    iget-object v4, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 106
    invoke-virtual {v4}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v4

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getSATCameraId()I

    move-result v8

    if-ne v4, v8, :cond_27

    .line 107
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHighQualityPreferred()Z

    move-result v4

    if-nez v4, :cond_27

    iget v4, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-eq v14, v4, :cond_26

    if-eq v11, v4, :cond_26

    iget-boolean v4, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrSR:Z

    if-eqz v4, :cond_27

    :cond_26
    const v4, 0xef06

    .line 108
    invoke-virtual {v0, v4, v7, v5, v3}, Lcom/android/camera2/MiCamera2ShotParallel;->configParallelSession(ILandroid/util/Size;II)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v3

    iput-object v3, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    goto :goto_10

    .line 109
    :cond_27
    invoke-virtual {v0, v7, v5, v3}, Lcom/android/camera2/MiCamera2ShotParallel;->configParallelSession(Landroid/util/Size;II)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v3

    iput-object v3, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    :goto_10
    move v3, v14

    .line 110
    :goto_11
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v4

    if-nez v4, :cond_28

    iget v4, v0, Lcom/android/camera2/MiCamera2Shot;->mOperationMode:I

    const v5, 0x9001

    if-eq v4, v5, :cond_28

    const v5, 0x9003

    if-eq v4, v5, :cond_28

    .line 111
    iget-object v4, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v4}, Lcom/android/camera2/MiCamera2;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v4

    .line 112
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v12

    .line 113
    invoke-static {v4}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v7

    aput-object v7, v2, v14

    const-string v7, "add preview surface %s to capture request, size is: %s"

    .line 114
    invoke-static {v5, v7, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-boolean v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mUseParallelVtCam:Z

    if-nez v2, :cond_28

    .line 116
    invoke-virtual {v1, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 117
    :cond_28
    :goto_12
    iget-boolean v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mUseParallelVtCam:Z

    if-nez v2, :cond_2a

    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isHighQualityQuickShotEnabled()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 118
    invoke-static {v1, v14}, Lcom/android/camera2/compat/MiCameraCompat;->applyHighQualityQuickShot(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    .line 119
    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isLimitMfnrNumFramesEnabled()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 120
    invoke-static {v1, v14}, Lcom/android/camera2/compat/MiCameraCompat;->applyLimitMfnrNumFrames(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    goto :goto_13

    .line 121
    :cond_29
    invoke-static {v1, v12}, Lcom/android/camera2/compat/MiCameraCompat;->applyLimitMfnrNumFrames(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    .line 122
    :cond_2a
    :goto_13
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0o0oo()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 123
    iget v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v9, v2, :cond_2c

    if-nez v3, :cond_2c

    .line 124
    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getSharedRawSurface()Landroid/view/Surface;

    move-result-object v2

    if-nez v2, :cond_2b

    const-string v3, "could not find raw surface for supernight se"

    .line 125
    invoke-static {v13, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_2b
    invoke-static {v2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v3

    const v4, 0x8014

    const/16 v5, 0x20

    .line 127
    invoke-virtual {v0, v4, v3, v5, v14}, Lcom/android/camera2/MiCamera2ShotParallel;->configParallelSession(ILandroid/util/Size;II)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v4

    iput-object v4, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    .line 128
    iget-object v4, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v4}, Lcom/android/camera2/MiCamera2;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v4

    iput-object v4, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    .line 129
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add raw surface for supernight se, size is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 131
    :cond_2c
    iget v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v11, v2, :cond_2f

    if-nez v3, :cond_2f

    .line 132
    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getSharedRawSurface()Landroid/view/Surface;

    move-result-object v2

    if-nez v2, :cond_2d

    const-string v3, "could not find raw surface for hdr reprocess"

    .line 133
    invoke-static {v13, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_2d
    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v3

    iput-object v3, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    const v3, 0x8001

    .line 135
    iget-object v4, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v4}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v4

    invoke-static {v4}, Lcom/xiaomi/camera/base/CameraIdUtil;->getCombinationModeByActualId(I)I

    move-result v4

    .line 136
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_2e

    const v3, 0x8005

    .line 137
    :cond_2e
    new-instance v5, Landroid/util/Size;

    iget-object v7, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    iget v8, v7, Lcom/android/camera/CameraSize;->width:I

    iget v7, v7, Lcom/android/camera/CameraSize;->height:I

    invoke-direct {v5, v8, v7}, Landroid/util/Size;-><init>(II)V

    const/16 v7, 0x23

    invoke-virtual {v0, v3, v5, v7, v4}, Lcom/android/camera2/MiCamera2ShotParallel;->configParallelSession(ILandroid/util/Size;II)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v3

    iput-object v3, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    .line 138
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add raw surface for hdr reprocess, size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :cond_2f
    if-nez v3, :cond_30

    .line 140
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000oo0o()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isCameraModule()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 141
    new-instance v2, Landroid/util/Size;

    iget-object v3, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    iget v4, v3, Lcom/android/camera/CameraSize;->width:I

    iget v3, v3, Lcom/android/camera/CameraSize;->height:I

    invoke-direct {v2, v4, v3}, Landroid/util/Size;-><init>(II)V

    const/16 v3, 0x23

    invoke-virtual {v0, v2, v3}, Lcom/android/camera2/MiCamera2ShotParallel;->configParallelSession(Landroid/util/Size;I)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    goto :goto_14

    .line 142
    :cond_30
    iget-boolean v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mReConfigParallel:Z

    if-eqz v2, :cond_31

    iget v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mRawCallbackType:I

    .line 143
    invoke-direct {v0, v2}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->isMTKRawSuperNightCallback(I)Z

    move-result v2

    if-nez v2, :cond_31

    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 144
    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isNightCaptureDisabled(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 145
    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getSuperNight()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSuperNightScene()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 146
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->isOnSuperNightAlgoUpMode()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 147
    new-instance v2, Landroid/util/Size;

    iget-object v3, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    iget v4, v3, Lcom/android/camera/CameraSize;->width:I

    iget v3, v3, Lcom/android/camera/CameraSize;->height:I

    invoke-direct {v2, v4, v3}, Landroid/util/Size;-><init>(II)V

    const/16 v3, 0x23

    invoke-virtual {v0, v2, v3}, Lcom/android/camera2/MiCamera2ShotParallel;->configParallelSession(Landroid/util/Size;I)Lcom/xiaomi/engine/BufferFormat;

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    .line 148
    :cond_31
    :goto_14
    iget v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-eq v9, v2, :cond_33

    if-ne v11, v2, :cond_32

    goto :goto_15

    .line 149
    :cond_32
    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getTuningRemoteSurface()Landroid/view/Surface;

    move-result-object v2

    goto :goto_16

    :cond_33
    :goto_15
    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getRawSurfaceForTuningBuffer()Landroid/view/Surface;

    move-result-object v2

    :goto_16
    if-eqz v2, :cond_34

    new-array v3, v14, [Ljava/lang/Object;

    .line 150
    invoke-static {v2}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v4

    aput-object v4, v3, v12

    const-string v4, "add tuning surface to capture request, size is: %s"

    .line 151
    invoke-static {v13, v4, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 152
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 153
    :cond_34
    iget-boolean v2, v0, Lcom/android/camera2/MiCamera2ShotParallel;->mAnchorFrame:Z

    const/16 v3, 0x12

    if-eqz v2, :cond_38

    .line 154
    iget v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v2, v10, :cond_35

    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMtkIsp7(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 155
    :cond_35
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v2

    if-eqz v2, :cond_36

    iget v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-eq v2, v14, :cond_37

    if-eq v11, v2, :cond_37

    :cond_36
    iget v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    const/16 v4, 0x11

    if-eq v2, v4, :cond_37

    if-ne v2, v3, :cond_38

    .line 156
    :cond_37
    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getPreviewImageReader()Landroid/media/ImageReader;

    move-result-object v2

    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add preview callback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v5}, Lcom/android/camera2/MiCamera2;->getPreviewCallbackEnabled()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v4, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v4}, Lcom/android/camera2/MiCamera2;->getPreviewCallbackEnabled()I

    move-result v4

    and-int/2addr v4, v6

    if-eqz v4, :cond_38

    if-eqz v2, :cond_38

    const-string v4, "add preview target"

    .line 159
    invoke-static {v13, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 161
    :cond_38
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 162
    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyAiASDEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 163
    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2, v1, v10}, Lcom/android/camera2/MiCamera2;->applySettingsForCapture(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 164
    iget v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-eq v2, v14, :cond_41

    if-ne v2, v11, :cond_39

    goto/16 :goto_1a

    .line 165
    :cond_39
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSuperMoonMode()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 166
    iget v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v2, v10, :cond_3b

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oooOo()Z

    move-result v2

    if-eqz v2, :cond_3a

    goto :goto_17

    :cond_3a
    move v2, v12

    goto :goto_18

    :cond_3b
    :goto_17
    move v2, v14

    .line 167
    :goto_18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_3c

    const-string v4, "enable"

    goto :goto_19

    :cond_3c
    const-string v4, "disable"

    :goto_19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ZSL for SuperMoonMode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_1b

    .line 169
    :cond_3d
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v2

    if-nez v2, :cond_43

    .line 170
    iget v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    const/4 v4, 0x7

    const-string v5, "enable ZSL for algo "

    if-ne v2, v4, :cond_3e

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oOoOo()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_1b

    .line 173
    :cond_3e
    iget v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-ne v3, v2, :cond_3f

    const-string v2, "enable ZSL for pureview algo "

    .line 174
    invoke-static {v13, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_1b

    :cond_3f
    if-ne v2, v10, :cond_40

    .line 176
    iget-boolean v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsFakeSatEnabled:Z

    if-nez v2, :cond_40

    iget v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSatFusionType:I

    if-nez v2, :cond_40

    iget-boolean v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrSR:Z

    if-nez v2, :cond_40

    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 177
    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isNeedFlash()Z

    move-result v2

    if-nez v2, :cond_40

    .line 178
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isProPhotoModule()Z

    move-result v2

    if-nez v2, :cond_40

    .line 179
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00oooOo()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1b

    .line 182
    :cond_40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disable ZSL for algo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1b

    .line 184
    :cond_41
    :goto_1a
    iget-boolean v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrBokeh:Z

    if-eqz v2, :cond_42

    const-string v2, "enable ZSL for HDR"

    .line 185
    invoke-static {v13, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1b

    :cond_42
    const-string v2, "disable ZSL for HDR"

    .line 187
    invoke-static {v13, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 189
    :cond_43
    :goto_1b
    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isFlawDetectEnable()Z

    move-result v2

    .line 190
    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v3

    invoke-static {v3, v1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyFlawDetectEnable(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 191
    iget-boolean v2, v0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mUseParallelVtCam:Z

    if-eqz v2, :cond_46

    .line 192
    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportParallelCameraIds(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_44

    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 193
    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportMultiCameraIds(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 194
    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getParallelMasterCameraId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 195
    invoke-static {v1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyParallelMasterCameraId(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 196
    :cond_44
    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isLLSEnabled()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 197
    invoke-static {v1, v14}, Lcom/android/camera2/compat/MiCameraCompat;->applyLLS(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    goto :goto_1c

    .line 198
    :cond_45
    invoke-static {v1, v12}, Lcom/android/camera2/compat/MiCameraCompat;->applyLLS(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 199
    :cond_46
    :goto_1c
    iget-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getShotPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera2/MiCamera2Shot;->mSavePath:Ljava/lang/String;

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2Shot;->getFileName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_47

    .line 201
    iget-object v3, v0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyParallelImageName(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Ljava/lang/String;)V

    .line 202
    :cond_47
    invoke-direct {v0, v1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->removeRtStreamTargetForSrIfNeed(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-object v1
.end method

.method public getShutterTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mFirstFrameTimestamp:J

    return-wide v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ShotParallelBurst"

    return-object v0
.end method

.method public isShutterReturned()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mStartedNum:I

    iget v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCaptureShutter()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v7, Lcom/android/camera2/QuickViewParam;

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mAnchorFrame:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mButtonStatus:Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/camera2/QuickViewParam;-><init>(ZZZZLcom/android/camera/module/loader/camera2/ButtonStatus;)V

    .line 3
    invoke-interface {v0, v7}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureShutter(Lcom/android/camera2/QuickViewParam;)V

    :cond_0
    return-void
.end method

.method public prepare()V
    .locals 13

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mWaitingFirstFrame:Z

    .line 2
    iget-object v1, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare: configs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShotParallelBurst"

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepare: rawCallbackType = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mRawCallbackType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isSuperResolutionEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mShouldDoSR:Z

    .line 6
    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getAlgorithmPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewSize:Lcom/android/camera/CameraSize;

    .line 7
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->isFakeSatEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsFakeSatEnabled:Z

    .line 8
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->getHDSRStates()I

    move-result v2

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepare: hdrSrStatus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v4

    const/4 v5, 0x7

    const/16 v6, 0x10

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x0

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mRawCallbackType:I

    if-ne v6, v4, :cond_0

    const/16 v1, 0x11

    .line 11
    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    .line 12
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OoooOo0()[I

    move-result-object v1

    .line 13
    array-length v1, v1

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    goto/16 :goto_9

    :cond_0
    const v4, 0x800a

    .line 14
    iget v10, p0, Lcom/android/camera2/MiCamera2Shot;->mOperationMode:I

    const/16 v11, 0x20

    const/16 v12, 0x8

    if-eq v4, v10, :cond_14

    iget v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mRawCallbackType:I

    if-eq v12, v4, :cond_14

    if-eq v11, v4, :cond_14

    if-ne v6, v4, :cond_1

    goto/16 :goto_7

    .line 15
    :cond_1
    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 16
    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isBokehEnabled()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrBokeh:Z

    .line 17
    iget-object v4, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v4}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera2/CameraConfigs;->getExposureCompensationIndex()I

    move-result v4

    if-eqz v4, :cond_2

    move v4, v0

    goto :goto_0

    :cond_2
    move v4, v9

    .line 18
    :goto_0
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v6

    invoke-virtual {v6}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->OooO0oo()Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v4, :cond_3

    move v4, v0

    goto :goto_1

    :cond_3
    move v4, v9

    .line 19
    :goto_1
    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getHDRStatus()Lcom/android/camera2/Camera2Proxy$HDRStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy$HDRStatus;->isSuperResolutionHDR()Z

    move-result v1

    if-eqz v1, :cond_4

    if-ne v2, v0, :cond_4

    const-string v1, "prepare: HdrSR"

    .line 20
    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iput v8, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    xor-int/lit8 v1, v4, 0x1

    .line 22
    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsHdrSR:Z

    .line 23
    invoke-direct {p0, v1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->prepareSR(Z)V

    goto/16 :goto_9

    .line 24
    :cond_4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0Oo0O()Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x14

    goto :goto_2

    :cond_5
    move v1, v0

    :goto_2
    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    .line 25
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->prepareHdr()V

    goto/16 :goto_9

    .line 26
    :cond_6
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0o00()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 27
    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isDualBokehEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v1, 0x9

    .line 28
    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    .line 29
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->prepareLowLightBokeh()V

    goto/16 :goto_9

    .line 30
    :cond_7
    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isDedicatedMotionAlgoEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x12

    .line 31
    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    .line 32
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->preparePurePreview()V

    goto/16 :goto_9

    .line 33
    :cond_8
    iget-boolean v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mShouldDoSR:Z

    if-eqz v1, :cond_9

    .line 34
    iput v8, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    .line 35
    invoke-direct {p0, v9}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->prepareSR(Z)V

    goto/16 :goto_9

    .line 36
    :cond_9
    iget-object v1, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    if-nez v1, :cond_a

    const/4 v1, 0x0

    goto :goto_3

    .line 37
    :cond_a
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 38
    :goto_3
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isMfnrEnabled()Z

    move-result v2

    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepare: iso = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " isHwMFNREnabled = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v4

    invoke-virtual {v4}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000o00()Z

    move-result v4

    if-nez v4, :cond_d

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v4

    invoke-virtual {v4}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000O00O()Z

    move-result v4

    if-nez v4, :cond_d

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v4

    invoke-virtual {v4}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0Oo0o()Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_5

    :cond_b
    if-eqz v1, :cond_c

    .line 41
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v6, 0x320

    if-lt v4, v6, :cond_c

    move v4, v0

    goto :goto_4

    :cond_c
    move v4, v9

    :goto_4
    iput-boolean v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mShouldDoMFNR:Z

    goto :goto_6

    .line 42
    :cond_d
    :goto_5
    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mShouldDoMFNR:Z

    .line 43
    :goto_6
    iget-boolean v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mShouldDoMFNR:Z

    if-eqz v4, :cond_13

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSuperMoonMode()Z

    move-result v4

    if-eqz v4, :cond_e

    if-nez v2, :cond_13

    .line 44
    :cond_e
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000o00()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 45
    iput v7, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    .line 46
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->prepareClearShot(I)V

    goto :goto_9

    .line 47
    :cond_f
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000O00O()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v2

    if-nez v2, :cond_11

    .line 48
    :cond_10
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0Oo0o()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 49
    :cond_11
    iput v5, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    .line 50
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->prepareHHT(I)V

    goto :goto_9

    .line 51
    :cond_12
    iput v7, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    .line 52
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->prepareClearShot(I)V

    goto :goto_9

    .line 53
    :cond_13
    iput v9, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    .line 54
    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    .line 55
    iput v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mMultiFrameNum:I

    goto :goto_9

    .line 56
    :cond_14
    :goto_7
    iget v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mRawCallbackType:I

    if-ne v12, v1, :cond_15

    const/16 v1, 0xc

    .line 57
    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    goto :goto_8

    :cond_15
    if-ne v11, v1, :cond_16

    const/16 v1, 0xf

    .line 58
    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    goto :goto_8

    :cond_16
    const/16 v1, 0xa

    .line 59
    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    .line 60
    :goto_8
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->prepareSuperNight()V

    .line 61
    :goto_9
    iget v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    if-eq v1, v8, :cond_17

    .line 62
    iput v9, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSatFusionType:I

    .line 63
    :cond_17
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->doAnchorFrameAsThumbnail()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mAnchorFrame:Z

    .line 64
    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mNeedDoAnchorFrame:Z

    .line 65
    iget v1, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-virtual {p0, v1}, Lcom/android/camera2/MiCamera2ShotParallel;->getSoundTimeWhenAnchor(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mSoundTime:I

    .line 66
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    .line 67
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v9

    iget v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mShouldDoMFNR:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v7

    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mShouldDoSR:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v8

    const/4 v0, 0x4

    iget-boolean v4, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mAnchorFrame:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v0

    const/4 v0, 0x5

    iget-boolean v4, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mUseParallelVtCam:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v0

    const/4 v0, 0x6

    iget v4, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mSoundTime:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    const-string v0, "prepare: algo=%d captureNum=%d doMFNR=%b doSR=%b anchor=%b mUseParallelVtCam=%b soundTime=%d"

    .line 68
    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startSessionCapture()V
    .locals 10

    const-string v0, "ShotParallelBurst"

    const/16 v1, 0x100

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->generateCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v2

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->generateRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    .line 3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startSessionCapture mSequenceNum:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    .line 5
    :goto_0
    iget v6, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    if-ge v5, v6, :cond_b

    .line 6
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 7
    iget-boolean v6, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mIsFakeSatEnabled:Z

    if-eqz v6, :cond_0

    .line 8
    invoke-static {v3, v5}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspFrameIndex(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 9
    :cond_0
    iget-object v6, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v6}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v6

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 10
    iget-object v6, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-static {v6, v3}, Lcom/android/camera2/compat/MiCameraCompat;->copyFpcDataFromCaptureResultToRequest(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->isIn3OrMoreSatMode()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2ShotParallel;->isInMultiSurfaceSatMode()Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_2

    .line 12
    :cond_2
    iget-object v6, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v6}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v6

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v7

    if-eq v6, v7, :cond_3

    iget v6, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_a

    .line 13
    :cond_3
    iget-object v6, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v6}, Lcom/android/camera2/MiCamera2;->getZoomRatio()F

    move-result v6

    iget-object v7, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-static {v6, v7}, Lcom/android/camera/HybridZoomingSystem;->toCropRegion(FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    .line 14
    iget-object v7, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v7}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v7

    invoke-static {v7}, Lcom/android/camera2/CameraCapabilitiesUtil;->isZoomRatioSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/high16 v7, 0x3f800000    # 1.0f

    .line 15
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v8

    invoke-virtual {v8}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0o0oO()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 16
    invoke-virtual {v8}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v8

    invoke-static {v8}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v8

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v9

    if-ne v8, v9, :cond_4

    .line 17
    iget-object v7, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v7}, Lcom/android/camera2/MiCamera2;->getZoomRatio()F

    move-result v7

    .line 18
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isZoomRatioSupported, uw/sr set zoomRatio = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-static {v3, v7}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->applyZoomRatio(Landroid/hardware/camera2/CaptureRequest$Builder;F)V

    goto :goto_1

    .line 20
    :cond_5
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v7

    invoke-virtual {v7}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0O0o0oO()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    .line 21
    invoke-virtual {v7}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v7

    invoke-static {v7}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v7

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v8

    if-ne v7, v8, :cond_6

    .line 22
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "supportMtkCropRegion: uw/sr set crop = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v7, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    .line 24
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "uw/sr set crop = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v8, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mActiveArraySize:Landroid/graphics/Rect;

    invoke-virtual {v3, v7, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 26
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "uw/sr set mtkCrop = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-static {v3, v6}, Lcom/android/camera2/compat/MiCameraCompat;->applyPostProcessCropRegion(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/graphics/Rect;)V

    goto :goto_4

    .line 28
    :cond_7
    :goto_2
    iget-object v6, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    sget-object v7, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->MI_STATISTICS_FACE_RECTANGLES:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v6, v7}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/graphics/Rect;

    if-eqz v6, :cond_8

    const-string v7, "set mtk face"

    .line 29
    invoke-static {v0, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-static {v3, v6}, Lcom/android/camera2/compat/MiCameraCompat;->applyFaceRectangles(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/graphics/Rect;)V

    goto :goto_3

    :cond_8
    const-string v6, "get mtk face = null"

    .line 31
    invoke-static {v0, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const/4 v6, 0x1

    .line 32
    invoke-static {v3, v6}, Lcom/android/camera2/compat/MiCameraCompat;->applyNotificationTrigger(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 33
    iget-object v6, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    sget-object v7, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->POST_PROCESS_CROP_REGION:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v6, v7}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    if-eqz v6, :cond_9

    .line 34
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sat set mtkCrop = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {v3, v6}, Lcom/android/camera2/compat/MiCameraCompat;->applyPostProcessCropRegion(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/graphics/Rect;)V

    goto :goto_4

    :cond_9
    const-string v6, "sat get mtkCrop = null"

    .line 36
    invoke-static {v0, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_a
    :goto_4
    iget v6, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mAlgoType:I

    invoke-direct {p0, v3, v5, v6}, Lcom/android/camera2/MiCamera2ShotParallelBurst;->applyAlgoParameter(Landroid/hardware/camera2/CaptureRequest$Builder;II)V

    .line 38
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 39
    :cond_b
    iget-object v5, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v5}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v5

    .line 40
    iget-object v6, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    if-nez v6, :cond_c

    .line 41
    new-instance v6, Lcom/xiaomi/engine/BufferFormat;

    iget-object v7, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    iget v7, v7, Lcom/android/camera/CameraSize;->width:I

    iget-object v8, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mAlgoSize:Lcom/android/camera/CameraSize;

    iget v8, v8, Lcom/android/camera/CameraSize;->height:I

    const/16 v9, 0x23

    invoke-direct {v6, v7, v8, v9}, Lcom/xiaomi/engine/BufferFormat;-><init>(III)V

    .line 42
    :cond_c
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    invoke-virtual {p0, v3, v6, v5}, Lcom/android/camera2/MiCamera2ShotParallel;->generatePreProcessData(Landroid/hardware/camera2/CaptureRequest;Lcom/xiaomi/engine/BufferFormat;I)Lcom/xiaomi/engine/PreProcessData;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 43
    invoke-virtual {p0, v3}, Lcom/android/camera2/MiCamera2ShotParallel;->preCapture(Lcom/xiaomi/engine/PreProcessData;)V

    :cond_d
    const/4 v3, 0x4

    .line 44
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startSessionCapture request number:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v0, v5}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v3

    const-string v5, "algo_prepare_capture"

    invoke-virtual {v3, v5}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    .line 46
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v3

    const-string v5, "algo_device_capture"

    invoke-virtual {v3, v5}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v3

    const-string v5, "shot_prepare_capture"

    invoke-virtual {v3, v5}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    .line 48
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v3

    const-string v5, "shot_device_capture"

    invoke-virtual {v3, v5}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    .line 49
    iget-boolean v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mUseParallelVtCam:Z
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "_"

    if-eqz v3, :cond_e

    .line 50
    :try_start_1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v3

    iget-object v6, p0, Lcom/android/camera2/MiCamera2Shot;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v2, v6}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v2

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mCaptureId:Ljava/lang/String;

    goto :goto_5

    .line 52
    :cond_e
    iget-object v3, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v3

    iget-object v6, p0, Lcom/android/camera2/MiCamera2Shot;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v2, v6}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v2

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera2/MiCamera2ShotParallel;->mCaptureId:Ljava/lang/String;

    .line 54
    :goto_5
    iget-object v2, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget v3, p0, Lcom/android/camera2/MiCamera2ShotParallelBurst;->mSequenceNum:I

    invoke-static {v2, v3}, Lcom/android/camera/MemoryHelper;->addCapturedNumber(II)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception v2

    const-string v3, "Failed to captureBurst, IllegalArgument"

    .line 55
    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_6

    :catch_1
    move-exception v2

    const-string v3, "Failed to captureBurst, IllegalState"

    .line 57
    invoke-static {v0, v3, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_6

    :catch_2
    move-exception v1

    const-string v2, "Failed to captureBurst, CameraAccessException"

    .line 59
    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    iget-object v0, p0, Lcom/android/camera2/MiCamera2Shot;->mMiCamera:Lcom/android/camera2/MiCamera2;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :goto_6
    return-void
.end method
