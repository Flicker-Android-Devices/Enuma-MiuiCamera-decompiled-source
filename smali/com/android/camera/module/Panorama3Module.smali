.class public Lcom/android/camera/module/Panorama3Module;
.super Lcom/android/camera/module/BaseModule;
.source "Panorama3Module.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$CameraAction;
.implements Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/Panorama3Module$SensorListener;,
        Lcom/android/camera/module/Panorama3Module$MySensorEventListener;,
        Lcom/android/camera/module/Panorama3Module$PanoramaPreview;,
        Lcom/android/camera/module/Panorama3Module$DecideDirection;,
        Lcom/android/camera/module/Panorama3Module$PanoramaFirst;,
        Lcom/android/camera/module/Panorama3Module$PanoramaInit;,
        Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;,
        Lcom/android/camera/module/Panorama3Module$MainHandler;
    }
.end annotation


# static fields
.field public static final DUMP_YUV:Z

.field public static final MIN_SHOOTING_TIME:I = 0x258

.field public static final SENSOR_LIST:I = 0xba

.field public static final TAG:Ljava/lang/String; = "Panorama3Module"

.field public static final mEngineLock:Ljava/lang/Object;

.field public static final mPreviewImageLock:Ljava/lang/Object;

.field public static final sAttachExit:Lcom/android/camera/panorama/CaptureImage;


# instance fields
.field public final mAttachImageQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/android/camera/panorama/CaptureImage;",
            ">;"
        }
    .end annotation
.end field

.field public mAttachPosOffsetX:I

.field public mAttachPosOffsetY:I

.field public mCameraOrientation:I

.field public volatile mCanSavePanorama:Z

.field public mCaptureDirectionDecided:Z

.field public mCurrentSensorInfoManager:Lcom/android/camera/panorama/SensorInfoManager;

.field public mDirection:I

.field public mDirectionFunction:Lcom/android/camera/panorama/DirectionFunction;

.field public mDispPreviewImage:Landroid/graphics/Bitmap;

.field public mDispPreviewImageCanvas:Landroid/graphics/Canvas;

.field public mDispPreviewImagePaint:Landroid/graphics/Paint;

.field public final mExecutor:Ljava/util/concurrent/ExecutorService;

.field public mGoalAngle:I

.field public mGoalAngleVertical:I

.field public mGravities:[F

.field public mImageFormat:Ljava/lang/String;

.field public mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

.field public volatile mIsBurstSequenceEnd:Z

.field public mIsRegisterSensorListener:Z

.field public mIsSensorAverage:Z

.field public volatile mIsShooting:Z

.field public mIsVertical:Z

.field public mLocation:Landroid/location/Location;

.field public mMaxHeight:I

.field public mMaxWidth:I

.field public mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

.field public mPanoramaSetting:Lcom/android/camera/panorama/PanoramaSetting;

.field public mPanoramaShootingStartTime:J

.field public mPanoramaState:Lcom/android/camera/panorama/PanoramaState;

.field public mPictureHeight:I

.field public mPictureWidth:I

.field public mPreviewImage:Landroid/graphics/Bitmap;

.field public mPreviewRefY:I

.field public volatile mRequestStop:Z

.field public mRoundDetector:Lcom/android/camera/panorama/RoundDetector;

.field public mSaveOutputImageTask:Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;

.field public mSensorCnt:I

.field public mSensorEventListener:Landroid/hardware/SensorEventListener;

.field public mSensorFusion:Lcom/android/camera/panorama/SensorFusion;

.field public mSensorFusionMode:I

.field public mSensorInfoManagerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/panorama/SensorInfoManager;",
            ">;"
        }
    .end annotation
.end field

.field public mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

.field public mShutterEndTime:Ljava/lang/String;

.field public mShutterStartTime:Ljava/lang/String;

.field public mSmallPreviewHeight:I

.field public mSmallPreviewHeightVertical:I

.field public mSnapshotFocusMode:I

.field public mTargetFocusMode:I

.field public mThumbnailViewSize:Landroid/util/Size;

.field public mTimeTaken:J

.field public mViewAngleH:F

.field public mViewAngleV:F


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "camera.debug.panorama"

    .line 1
    invoke-static {v1, v0}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/camera/module/Panorama3Module;->DUMP_YUV:Z

    .line 2
    new-instance v1, Lcom/android/camera/panorama/Camera1Image;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, v0}, Lcom/android/camera/panorama/Camera1Image;-><init>([BII)V

    sput-object v1, Lcom/android/camera/module/Panorama3Module;->sAttachExit:Lcom/android/camera/panorama/CaptureImage;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/camera/module/Panorama3Module;->mEngineLock:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/camera/module/Panorama3Module;->mPreviewImageLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/BaseModule;-><init>()V

    const/16 v0, 0x118

    .line 2
    iput v0, p0, Lcom/android/camera/module/Panorama3Module;->mGoalAngle:I

    const/16 v0, 0x14a

    .line 3
    iput v0, p0, Lcom/android/camera/module/Panorama3Module;->mGoalAngleVertical:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/module/Panorama3Module;->mIsShooting:Z

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/android/camera/module/Panorama3Module;->mIsBurstSequenceEnd:Z

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/module/Panorama3Module;->mCaptureDirectionDecided:Z

    const/4 v2, 0x4

    .line 7
    iput v2, p0, Lcom/android/camera/module/Panorama3Module;->mTargetFocusMode:I

    .line 8
    iput v1, p0, Lcom/android/camera/module/Panorama3Module;->mSnapshotFocusMode:I

    .line 9
    new-instance v1, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    invoke-direct {v1}, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;-><init>()V

    iput-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    const-string v1, "YVU420_SEMIPLANAR"

    .line 10
    iput-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mImageFormat:Ljava/lang/String;

    const/4 v1, 0x0

    .line 11
    iput-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mSensorFusion:Lcom/android/camera/panorama/SensorFusion;

    .line 12
    iput-boolean v0, p0, Lcom/android/camera/module/Panorama3Module;->mIsRegisterSensorListener:Z

    .line 13
    new-instance v1, Lcom/android/camera/module/Panorama3Module$MySensorEventListener;

    new-instance v2, Lcom/android/camera/module/Panorama3Module$1;

    invoke-direct {v2, p0}, Lcom/android/camera/module/Panorama3Module$1;-><init>(Lcom/android/camera/module/Panorama3Module;)V

    invoke-direct {v1, v2}, Lcom/android/camera/module/Panorama3Module$MySensorEventListener;-><init>(Lcom/android/camera/module/Panorama3Module$SensorListener;)V

    iput-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 14
    new-instance v1, Lcom/android/camera/module/Panorama3Module$2;

    invoke-direct {v1, p0}, Lcom/android/camera/module/Panorama3Module$2;-><init>(Lcom/android/camera/module/Panorama3Module;)V

    iput-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    const v1, 0x428e7684

    .line 15
    iput v1, p0, Lcom/android/camera/module/Panorama3Module;->mViewAngleH:F

    const v1, 0x4261fa7e

    .line 16
    iput v1, p0, Lcom/android/camera/module/Panorama3Module;->mViewAngleV:F

    .line 17
    iput v0, p0, Lcom/android/camera/module/Panorama3Module;->mCameraOrientation:I

    .line 18
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mAttachImageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 19
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v9, Lcom/android/camera/module/Panorama3Module$3;

    invoke-direct {v9, p0}, Lcom/android/camera/module/Panorama3Module$3;-><init>(Lcom/android/camera/module/Panorama3Module;)V

    new-instance v10, Lcom/android/camera/module/Panorama3Module$4;

    invoke-direct {v10, p0}, Lcom/android/camera/module/Panorama3Module$4;-><init>(Lcom/android/camera/module/Panorama3Module;)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 20
    iput-boolean v0, p0, Lcom/android/camera/module/Panorama3Module;->mCanSavePanorama:Z

    .line 21
    iput-boolean v0, p0, Lcom/android/camera/module/Panorama3Module;->mRequestStop:Z

    .line 22
    iput-boolean v0, p0, Lcom/android/camera/module/Panorama3Module;->mIsVertical:Z

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/Camera;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/module/Panorama3Module;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/Panorama3Module;->mIsSensorAverage:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/android/camera/module/Panorama3Module;)[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module;->mGravities:[F

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/camera/module/Panorama3Module;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/module/Panorama3Module;->mTimeTaken:J

    return-wide v0
.end method

.method public static synthetic access$1100(Lcom/android/camera/module/Panorama3Module;J)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/Panorama3Module;->createNameString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/android/camera/module/Panorama3Module;[Landroid/net/Uri;Ljava/lang/String;II)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/module/Panorama3Module;->savePanoramaFile([Landroid/net/Uri;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1300(Lcom/android/camera/module/Panorama3Module;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/android/camera/module/Panorama3Module;->addImageAsApplication(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1400(Lcom/android/camera/module/Panorama3Module;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/Panorama3Module;->finishEngine()V

    return-void
.end method

.method public static synthetic access$1500(Lcom/android/camera/module/Panorama3Module;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/Panorama3Module;->mRequestStop:Z

    return p0
.end method

.method public static synthetic access$1502(Lcom/android/camera/module/Panorama3Module;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/Panorama3Module;->mRequestStop:Z

    return p1
.end method

.method public static synthetic access$1602(Lcom/android/camera/module/Panorama3Module;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/Panorama3Module;->mIsShooting:Z

    return p1
.end method

.method public static synthetic access$1700(Lcom/android/camera/module/Panorama3Module;)Landroid/util/Size;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module;->mThumbnailViewSize:Landroid/util/Size;

    return-object p0
.end method

.method public static synthetic access$1800(Lcom/android/camera/module/Panorama3Module;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/Panorama3Module;->mIsVertical:Z

    return p0
.end method

.method public static synthetic access$1900(Lcom/android/camera/module/Panorama3Module;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module;->mImageFormat:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1902(Lcom/android/camera/module/Panorama3Module;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module;->mImageFormat:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$2000(Lcom/android/camera/module/Panorama3Module;D)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/Panorama3Module;->createEngine(D)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$202(Lcom/android/camera/module/Panorama3Module;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/Panorama3Module;->mSensorCnt:I

    return p1
.end method

.method public static synthetic access$208(Lcom/android/camera/module/Panorama3Module;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/module/Panorama3Module;->mSensorCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/module/Panorama3Module;->mSensorCnt:I

    return v0
.end method

.method public static synthetic access$2200(Lcom/android/camera/module/Panorama3Module;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/Panorama3Module;->configMorphoPanoramaGP3()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$2300(Lcom/android/camera/module/Panorama3Module;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/Panorama3Module;->mPictureWidth:I

    return p0
.end method

.method public static synthetic access$2400(Lcom/android/camera/module/Panorama3Module;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/Panorama3Module;->mPictureHeight:I

    return p0
.end method

.method public static synthetic access$2600(Lcom/android/camera/module/Panorama3Module;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/Panorama3Module;->mSmallPreviewHeightVertical:I

    return p0
.end method

.method public static synthetic access$2700(Lcom/android/camera/module/Panorama3Module;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/Panorama3Module;->mSmallPreviewHeight:I

    return p0
.end method

.method public static synthetic access$2800(Lcom/android/camera/module/Panorama3Module;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/Panorama3Module;->mMaxHeight:I

    return p0
.end method

.method public static synthetic access$2802(Lcom/android/camera/module/Panorama3Module;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/Panorama3Module;->mMaxHeight:I

    return p1
.end method

.method public static synthetic access$2900(Lcom/android/camera/module/Panorama3Module;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module;->mAttachImageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/SensorFusion;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module;->mSensorFusion:Lcom/android/camera/panorama/SensorFusion;

    return-object p0
.end method

.method public static synthetic access$3000()Lcom/android/camera/panorama/CaptureImage;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/module/Panorama3Module;->sAttachExit:Lcom/android/camera/panorama/CaptureImage;

    return-object v0
.end method

.method public static synthetic access$3100(Lcom/android/camera/module/Panorama3Module;Lcom/android/camera/panorama/CaptureImage;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/Panorama3Module;->setSensorFusionValue(Lcom/android/camera/panorama/CaptureImage;)V

    return-void
.end method

.method public static synthetic access$3200(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/SensorInfoManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module;->mCurrentSensorInfoManager:Lcom/android/camera/panorama/SensorInfoManager;

    return-object p0
.end method

.method public static synthetic access$3300(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    return-object p0
.end method

.method public static synthetic access$3400(Lcom/android/camera/module/Panorama3Module;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/Panorama3Module;->mMaxWidth:I

    return p0
.end method

.method public static synthetic access$3402(Lcom/android/camera/module/Panorama3Module;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/Panorama3Module;->mMaxWidth:I

    return p1
.end method

.method public static synthetic access$3500(Lcom/android/camera/module/Panorama3Module;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/Panorama3Module;->mDirection:I

    return p0
.end method

.method public static synthetic access$3502(Lcom/android/camera/module/Panorama3Module;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/Panorama3Module;->mDirection:I

    return p1
.end method

.method public static synthetic access$3600(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/DirectionFunction;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module;->mDirectionFunction:Lcom/android/camera/panorama/DirectionFunction;

    return-object p0
.end method

.method public static synthetic access$3602(Lcom/android/camera/module/Panorama3Module;Lcom/android/camera/panorama/DirectionFunction;)Lcom/android/camera/panorama/DirectionFunction;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module;->mDirectionFunction:Lcom/android/camera/panorama/DirectionFunction;

    return-object p1
.end method

.method public static synthetic access$3700(Lcom/android/camera/module/Panorama3Module;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/Panorama3Module;->mCameraOrientation:I

    return p0
.end method

.method public static synthetic access$3800(Lcom/android/camera/module/Panorama3Module;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/Panorama3Module;->reInitGravitySensorData()V

    return-void
.end method

.method public static synthetic access$3900(Lcom/android/camera/module/Panorama3Module;Lcom/android/camera/panorama/CaptureImage;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/Panorama3Module;->addAttachQueue(Lcom/android/camera/panorama/CaptureImage;)V

    return-void
.end method

.method public static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$4100(Lcom/android/camera/module/Panorama3Module;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public static synthetic access$4300(Lcom/android/camera/module/Panorama3Module;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/Panorama3Module;->mViewAngleH:F

    return p0
.end method

.method public static synthetic access$4400(Lcom/android/camera/module/Panorama3Module;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/Panorama3Module;->mViewAngleV:F

    return p0
.end method

.method public static synthetic access$4500()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/module/Panorama3Module;->mPreviewImageLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic access$4600(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module;->mPreviewImage:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static synthetic access$4602(Lcom/android/camera/module/Panorama3Module;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module;->mPreviewImage:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static synthetic access$4700(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module;->mDispPreviewImage:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static synthetic access$4702(Lcom/android/camera/module/Panorama3Module;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module;->mDispPreviewImage:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static synthetic access$4800(Lcom/android/camera/module/Panorama3Module;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/Panorama3Module;->mAttachPosOffsetY:I

    return p0
.end method

.method public static synthetic access$4802(Lcom/android/camera/module/Panorama3Module;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/Panorama3Module;->mAttachPosOffsetY:I

    return p1
.end method

.method public static synthetic access$4900(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Canvas;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module;->mDispPreviewImageCanvas:Landroid/graphics/Canvas;

    return-object p0
.end method

.method public static synthetic access$4902(Lcom/android/camera/module/Panorama3Module;Landroid/graphics/Canvas;)Landroid/graphics/Canvas;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module;->mDispPreviewImageCanvas:Landroid/graphics/Canvas;

    return-object p1
.end method

.method public static synthetic access$500(Lcom/android/camera/module/Panorama3Module;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/Panorama3Module;->initPreviewLayout()V

    return-void
.end method

.method public static synthetic access$5000(Lcom/android/camera/module/Panorama3Module;)Landroid/graphics/Paint;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module;->mDispPreviewImagePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static synthetic access$5002(Lcom/android/camera/module/Panorama3Module;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module;->mDispPreviewImagePaint:Landroid/graphics/Paint;

    return-object p1
.end method

.method public static synthetic access$5300()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/camera/module/Panorama3Module;->DUMP_YUV:Z

    return v0
.end method

.method public static synthetic access$5402(Lcom/android/camera/module/Panorama3Module;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/Panorama3Module;->mCanSavePanorama:Z

    return p1
.end method

.method public static synthetic access$5500(Lcom/android/camera/module/Panorama3Module;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/Panorama3Module;->onPreviewMoving()V

    return-void
.end method

.method public static synthetic access$5600(Lcom/android/camera/module/Panorama3Module;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/module/Panorama3Module;->mCaptureDirectionDecided:Z

    return p0
.end method

.method public static synthetic access$5700(Lcom/android/camera/module/Panorama3Module;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/Panorama3Module;->onCaptureDirectionDecided()V

    return-void
.end method

.method public static synthetic access$600(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/PanoramaState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module;->mPanoramaState:Lcom/android/camera/panorama/PanoramaState;

    return-object p0
.end method

.method public static synthetic access$6000(Lcom/android/camera/module/Panorama3Module;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/Panorama3Module;->stopPanoramaShooting(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic access$602(Lcom/android/camera/module/Panorama3Module;Lcom/android/camera/panorama/PanoramaState;)Lcom/android/camera/panorama/PanoramaState;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module;->mPanoramaState:Lcom/android/camera/panorama/PanoramaState;

    return-object p1
.end method

.method public static synthetic access$6100(Lcom/android/camera/module/Panorama3Module;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/module/Panorama3Module;->mPreviewRefY:I

    return p0
.end method

.method public static synthetic access$6102(Lcom/android/camera/module/Panorama3Module;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/Panorama3Module;->mPreviewRefY:I

    return p1
.end method

.method public static synthetic access$702(Lcom/android/camera/module/Panorama3Module;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/module/Panorama3Module;->mIsBurstSequenceEnd:Z

    return p1
.end method

.method public static synthetic access$800(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/MorphoPanoramaGP3;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/camera/module/Panorama3Module;)Lcom/android/camera/panorama/RoundDetector;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module;->mRoundDetector:Lcom/android/camera/panorama/RoundDetector;

    return-object p0
.end method

.method private addAttachQueue(Lcom/android/camera/panorama/CaptureImage;)V
    .locals 3

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string v0, "addAttachQueue failed due to image is null"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/module/Panorama3Module;->mRequestStop:Z

    if-eqz v1, :cond_1

    .line 3
    sget-object v1, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string v2, "addAttachQueue failed due to request stop"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p1}, Lcom/android/camera/panorama/CaptureImage;->close()V

    return-void

    .line 5
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mAttachImageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    .line 6
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mAttachImageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 7
    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mAttachImageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/panorama/CaptureImage;

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1}, Lcom/android/camera/panorama/CaptureImage;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    .line 9
    invoke-virtual {p1}, Lcom/android/camera/panorama/CaptureImage;->close()V

    .line 10
    :cond_4
    sget-object p1, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string v0, "addAttachQueue"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v1

    if-nez v0, :cond_5

    .line 11
    invoke-virtual {p1}, Lcom/android/camera/panorama/CaptureImage;->close()V

    .line 12
    :cond_5
    throw v1
.end method

.method private addImageAsApplication(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 19

    move-object/from16 v8, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v3

    if-eqz v1, :cond_2

    .line 2
    :try_start_0
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "w"

    .line 3
    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    iget-wide v12, v8, Lcom/android/camera/module/Panorama3Module;->mTimeTaken:J

    iget v14, v8, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    move/from16 v10, p6

    move-object v11, v3

    invoke-static/range {v9 .. v14}, Lcom/android/gallery3d/exif/ExifHelper;->writeExifByFd(Ljava/io/FileDescriptor;ILandroid/location/Location;JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    .line 5
    :try_start_2
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v5, v0

    if-eqz v4, :cond_0

    .line 6
    :try_start_3
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v4, v0

    :try_start_4
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 7
    sget-object v4, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addImageAsApplication failed, filePath "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    move/from16 v6, p6

    goto :goto_2

    .line 8
    :cond_2
    iget-wide v4, v8, Lcom/android/camera/module/Panorama3Module;->mTimeTaken:J

    move/from16 v6, p6

    invoke-static {v2, v6, v3, v4, v5}, Lcom/android/gallery3d/exif/ExifHelper;->writeExifByFilePath(Ljava/lang/String;ILandroid/location/Location;J)V

    :goto_2
    const/4 v0, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_3

    move v5, v0

    goto :goto_3

    :cond_3
    move v5, v7

    :goto_3
    if-nez v1, :cond_4

    .line 9
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v9

    iget-wide v12, v8, Lcom/android/camera/module/Panorama3Module;->mTimeTaken:J

    iget-object v14, v8, Lcom/android/camera/module/Panorama3Module;->mLocation:Landroid/location/Location;

    move-object/from16 v10, p2

    move/from16 v11, p6

    move/from16 v15, p4

    move/from16 v16, p5

    invoke-static/range {v9 .. v16}, Lcom/android/camera/storage/Storage;->addImageForGroupOrPanorama(Landroid/content/Context;Ljava/lang/String;IJLandroid/location/Location;II)Landroid/net/Uri;

    move-result-object v1

    goto :goto_4

    .line 10
    :cond_4
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v10

    iget-wide v14, v8, Lcom/android/camera/module/Panorama3Module;->mTimeTaken:J

    iget-object v3, v8, Lcom/android/camera/module/Panorama3Module;->mLocation:Landroid/location/Location;

    move-object/from16 v9, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p6

    move-object/from16 v16, v3

    move/from16 v17, p4

    move/from16 v18, p5

    invoke-static/range {v9 .. v18}, Lcom/android/camera/storage/Storage;->updateForGroupOrPanorama(Landroid/net/Uri;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJLandroid/location/Location;II)Landroid/net/Uri;

    move-result-object v1

    :goto_4
    if-nez v1, :cond_5

    .line 11
    sget-object v1, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insert MediaProvider failed, attempt to find uri by path, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/camera/storage/MediaProviderUtil;->getContentUriFromPath(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_5
    move-object v9, v1

    .line 13
    sget-object v1, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addImageAsApplication uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 15
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "attr_3a_locked"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attr_stop_capture_mode"

    move-object/from16 v3, p7

    .line 16
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move v11, v5

    move-object v5, v6

    move v6, v11

    move v12, v7

    move v7, v10

    .line 17
    invoke-virtual/range {v1 .. v7}, Lcom/android/camera/module/BaseModule;->trackGeneralInfo(Ljava/util/Map;IZLcom/android/camera/fragment/beauty/BeautyValues;ZI)V

    .line 18
    new-instance v1, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;

    invoke-direct {v1}, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;-><init>()V

    .line 19
    iput v0, v1, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;->takenNum:I

    .line 20
    iput-boolean v12, v1, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;->burst:Z

    .line 21
    iput-boolean v11, v1, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;->location:Z

    const/4 v0, -0x2

    .line 22
    iput v0, v1, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;->aiSceneName:I

    .line 23
    iput-boolean v12, v1, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;->isEnteringMoon:Z

    .line 24
    iput-boolean v12, v1, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;->isSelectMoonMode:Z

    const/4 v0, 0x0

    .line 25
    iput-object v0, v1, Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;->beautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    .line 26
    invoke-virtual {v8, v1}, Lcom/android/camera/module/BaseModule;->trackPictureTaken(Lcom/android/camera/statistic/MistatsWrapper$PictureTakenParameter;)V

    .line 27
    iget-object v0, v8, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    .line 29
    new-instance v1, LOooO0O0/OooO0O0/OooO00o/OooooOo/o0000Oo0;

    invoke-direct {v1, v0}, LOooO0O0/OooO0O0/OooO00o/OooooOo/o0000Oo0;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    if-eqz v9, :cond_6

    move-object/from16 v1, p3

    .line 30
    invoke-virtual {v0, v9, v1}, Lcom/android/camera/ActivityBase;->onNewUriArrived(Landroid/net/Uri;Ljava/lang/String;)V

    .line 31
    invoke-static {v0, v9, v12}, Lcom/android/camera/Thumbnail;->createThumbnailFromUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v1

    .line 32
    invoke-static {v0, v9}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 33
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    invoke-virtual {v0, v1, v12, v12}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZ)V

    :cond_6
    return-void
.end method

.method private configMorphoPanoramaGP3()Z
    .locals 13

    .line 1
    sget-object v0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string v1, "configMorphoPanoramaGP3 start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setAttachEnabled(Z)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    invoke-virtual {v0}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->disableSaveInputImages()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    iget-object v2, p0, Lcom/android/camera/module/Panorama3Module;->mPanoramaSetting:Lcom/android/camera/panorama/PanoramaSetting;

    invoke-virtual {v2}, Lcom/android/camera/panorama/PanoramaSetting;->getShrink_ratio()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setShrinkRatio(D)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 5
    sget-object v3, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const-string/jumbo v0, "setShrinkRatio error ret:0x%08X"

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    iget-object v3, p0, Lcom/android/camera/module/Panorama3Module;->mPanoramaSetting:Lcom/android/camera/panorama/PanoramaSetting;

    invoke-virtual {v3}, Lcom/android/camera/panorama/PanoramaSetting;->getCalcseam_pixnum()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setCalcseamPixnum(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    sget-object v3, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const-string/jumbo v0, "setCalcseamPixnum error ret:0x%08X"

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    iget-object v3, p0, Lcom/android/camera/module/Panorama3Module;->mPanoramaSetting:Lcom/android/camera/panorama/PanoramaSetting;

    invoke-virtual {v3}, Lcom/android/camera/panorama/PanoramaSetting;->isUse_deform()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setUseDeform(Z)I

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    sget-object v3, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const-string/jumbo v0, "setUseDeform error ret:0x%08X"

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    iget-object v3, p0, Lcom/android/camera/module/Panorama3Module;->mPanoramaSetting:Lcom/android/camera/panorama/PanoramaSetting;

    invoke-virtual {v3}, Lcom/android/camera/panorama/PanoramaSetting;->isUse_luminance_correction()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setUseLuminanceCorrection(Z)I

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    sget-object v3, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const-string/jumbo v0, "setUseLuminanceCorrection error ret:0x%08X"

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    iget-object v3, p0, Lcom/android/camera/module/Panorama3Module;->mPanoramaSetting:Lcom/android/camera/panorama/PanoramaSetting;

    invoke-virtual {v3}, Lcom/android/camera/panorama/PanoramaSetting;->getSeamsearch_ratio()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setSeamsearchRatio(D)I

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    sget-object v3, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const-string/jumbo v0, "setSeamsearchRatio error ret:0x%08X"

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    iget-object v3, p0, Lcom/android/camera/module/Panorama3Module;->mPanoramaSetting:Lcom/android/camera/panorama/PanoramaSetting;

    invoke-virtual {v3}, Lcom/android/camera/panorama/PanoramaSetting;->getZrotation_coeff()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setZrotationCoeff(D)I

    move-result v0

    if-eqz v0, :cond_5

    .line 15
    sget-object v3, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const-string/jumbo v0, "setZrotationCoeff error ret:0x%08X"

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    iget-object v3, p0, Lcom/android/camera/module/Panorama3Module;->mPanoramaSetting:Lcom/android/camera/panorama/PanoramaSetting;

    invoke-virtual {v3}, Lcom/android/camera/panorama/PanoramaSetting;->getDraw_threshold()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setDrawThreshold(D)I

    move-result v0

    if-eqz v0, :cond_6

    .line 17
    sget-object v3, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const-string/jumbo v0, "setDrawThreshold error ret:0x%08X"

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :cond_6
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    iget-object v3, p0, Lcom/android/camera/module/Panorama3Module;->mPanoramaSetting:Lcom/android/camera/panorama/PanoramaSetting;

    invoke-virtual {v3}, Lcom/android/camera/panorama/PanoramaSetting;->getAov_gain()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setAovGain(D)I

    move-result v0

    if-eqz v0, :cond_7

    .line 19
    sget-object v3, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const-string/jumbo v0, "setAovGain error ret:0x%08X"

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_7
    iget-object v4, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mPanoramaSetting:Lcom/android/camera/panorama/PanoramaSetting;

    invoke-virtual {v0}, Lcom/android/camera/panorama/PanoramaSetting;->getDistortion_k1()D

    move-result-wide v5

    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mPanoramaSetting:Lcom/android/camera/panorama/PanoramaSetting;

    .line 21
    invoke-virtual {v0}, Lcom/android/camera/panorama/PanoramaSetting;->getDistortion_k2()D

    move-result-wide v7

    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mPanoramaSetting:Lcom/android/camera/panorama/PanoramaSetting;

    invoke-virtual {v0}, Lcom/android/camera/panorama/PanoramaSetting;->getDistortion_k3()D

    move-result-wide v9

    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mPanoramaSetting:Lcom/android/camera/panorama/PanoramaSetting;

    .line 22
    invoke-virtual {v0}, Lcom/android/camera/panorama/PanoramaSetting;->getDistortion_k4()D

    move-result-wide v11

    .line 23
    invoke-virtual/range {v4 .. v12}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setDistortionCorrectionParam(DDDD)I

    move-result v0

    if-eqz v0, :cond_8

    .line 24
    sget-object v3, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const-string/jumbo v0, "setDistortionCorrectionParam error ret:0x%08X"

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_8
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    iget-object v3, p0, Lcom/android/camera/module/Panorama3Module;->mPanoramaSetting:Lcom/android/camera/panorama/PanoramaSetting;

    invoke-virtual {v3}, Lcom/android/camera/panorama/PanoramaSetting;->getRotation_ratio()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setRotationRatio(D)I

    move-result v0

    if-eqz v0, :cond_9

    .line 26
    sget-object v3, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const-string/jumbo v0, "setRotationRatio error ret:0x%08X"

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_9
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    invoke-virtual {v0, v2}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setSensorUseMode(I)I

    move-result v0

    if-eqz v0, :cond_a

    .line 28
    sget-object v3, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const-string/jumbo v0, "setSensorUseMode error ret:0x%08X"

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_a
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    invoke-virtual {v0, v2}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setProjectionMode(I)I

    move-result v0

    if-eqz v0, :cond_b

    .line 30
    sget-object v3, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const-string/jumbo v0, "setProjectionMode error ret:0x%08X"

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_b
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    invoke-virtual {v0, v2}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setMotionDetectionMode(I)I

    move-result v0

    if-eqz v0, :cond_c

    .line 32
    sget-object v3, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const-string/jumbo v0, "setMotionDetectionMode error ret:0x%08X"

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_c
    sget-object v0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string v2, "configMorphoPanoramaGP3 end"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static createDateStringForAppSeg(J)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 2
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string/jumbo p1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string p1, "GMT"

    .line 3
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private createEngine(D)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string v1, "finish prior Engine"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/Panorama3Module;->finishEngine()V

    .line 4
    :cond_0
    new-instance v0, Lcom/android/camera/panorama/MorphoPanoramaGP3;

    invoke-direct {v0}, Lcom/android/camera/panorama/MorphoPanoramaGP3;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mImageFormat:Ljava/lang/String;

    const-string v1, "YUV420_PLANAR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mImageFormat:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->input_format:Ljava/lang/String;

    const-string v1, "YUV420_SEMIPLANAR"

    .line 7
    iput-object v1, v0, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->output_format:Ljava/lang/String;

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mImageFormat:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->input_format:Ljava/lang/String;

    .line 9
    iput-object v1, v0, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->output_format:Ljava/lang/String;

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iget v1, p0, Lcom/android/camera/module/Panorama3Module;->mPictureWidth:I

    iput v1, v0, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->input_width:I

    .line 11
    iget v1, p0, Lcom/android/camera/module/Panorama3Module;->mPictureHeight:I

    iput v1, v0, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->input_height:I

    .line 12
    iget v1, p0, Lcom/android/camera/module/Panorama3Module;->mViewAngleH:F

    float-to-double v1, v1

    iput-wide v1, v0, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->aovx:D

    .line 13
    iget v1, p0, Lcom/android/camera/module/Panorama3Module;->mViewAngleV:F

    float-to-double v1, v1

    iput-wide v1, v0, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->aovy:D

    .line 14
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb0

    .line 15
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;

    .line 16
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;->getCurrentDirection()I

    move-result v0

    .line 17
    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iput v0, v1, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->direction:I

    .line 18
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    .line 19
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientation()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 20
    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iget v2, p0, Lcom/android/camera/module/Panorama3Module;->mCameraOrientation:I

    add-int/2addr v2, v0

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v2, v2, 0x168

    iput v2, v1, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->output_rotation:I

    goto :goto_1

    .line 21
    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iget v2, p0, Lcom/android/camera/module/Panorama3Module;->mCameraOrientation:I

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientation()I

    move-result v0

    add-int/2addr v2, v0

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v2, v2, 0x168

    iput v2, v1, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->output_rotation:I

    :goto_1
    const/16 v0, 0xa6

    .line 22
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getCameraLensType(I)Ljava/lang/String;

    move-result-object v0

    .line 23
    sget-object v1, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lensType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "wide"

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 25
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isPanoramaVertical(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 26
    iget v1, p0, Lcom/android/camera/module/Panorama3Module;->mGoalAngleVertical:I

    goto :goto_2

    :cond_3
    iget v1, p0, Lcom/android/camera/module/Panorama3Module;->mGoalAngle:I

    :goto_2
    int-to-double v1, v1

    iput-wide v1, v0, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->goal_angle:D

    goto :goto_3

    .line 27
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iget v1, p0, Lcom/android/camera/module/Panorama3Module;->mGoalAngle:I

    int-to-double v1, v1

    const-wide v3, 0x3fe40c49ba5e353fL    # 0.6265

    mul-double/2addr v1, v3

    iput-wide v1, v0, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->goal_angle:D

    .line 28
    :goto_3
    iget v0, p0, Lcom/android/camera/module/Panorama3Module;->mCameraOrientation:I

    const/16 v1, 0x5a

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_7

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_6

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_5

    move v0, v2

    goto :goto_4

    :cond_5
    const/4 v0, 0x3

    goto :goto_4

    :cond_6
    const/4 v0, 0x2

    goto :goto_4

    :cond_7
    move v0, v3

    .line 29
    :goto_4
    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mSensorFusion:Lcom/android/camera/panorama/SensorFusion;

    invoke-virtual {v1, v0}, Lcom/android/camera/panorama/SensorFusion;->setRotation(I)I

    move-result v0

    if-eqz v0, :cond_8

    .line 30
    sget-object v1, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const-string v0, "SensorFusion.setRotation error ret:0x%08X"

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_8
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/camera/module/Panorama3Module;->initializeEngine(Lcom/android/camera/panorama/MorphoPanoramaGP3;Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;D)Z

    return v3
.end method

.method private createNameString(J)Ljava/lang/String;
    .locals 1

    const v0, 0x7f1205cf

    .line 1
    invoke-static {v0}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private doLaterReleaseIfNeed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->pauseIfNotRecording()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->releaseAll(Z)V

    :cond_1
    return-void
.end method

.method private finishEngine()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string v1, "finishEngine start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    invoke-virtual {v0}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->deleteNativeOutputInfo()I

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->finish(Z)I

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object v2, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    const-string v0, "finish error ret:0x%08X"

    invoke-static {v3, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_1
    sget-object v0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string v1, "finishEngine end"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    return-void
.end method

.method private getThumbnailViewSize()Landroid/util/Size;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb0

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;->getCurrentDirection()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 4
    :goto_1
    iput-boolean v1, p0, Lcom/android/camera/module/Panorama3Module;->mIsVertical:Z

    .line 5
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;->getThumbnailPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    new-instance v1, Landroid/util/Size;

    invoke-virtual {v0}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/util/Size;-><init>(II)V

    return-object v1

    .line 7
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 8
    iget-boolean v1, p0, Lcom/android/camera/module/Panorama3Module;->mIsVertical:Z

    if-eqz v1, :cond_4

    const v1, 0x7f0706b5

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0706b6

    .line 10
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_2

    .line 11
    :cond_4
    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    const v2, 0x7f0706b2

    .line 12
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 13
    :goto_2
    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v1, v0}, Landroid/util/Size;-><init>(II)V

    return-object v2
.end method

.method private initAttachQueue()V
    .locals 2

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mAttachImageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mAttachImageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/panorama/CaptureImage;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/panorama/CaptureImage;->close()V

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string v1, "initAttachQueue"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initPreviewLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    iget v1, v1, Lcom/android/camera/CameraSize;->width:I

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    iget v2, v2, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/SurfaceTextureScreenNail;->setPreviewSize(II)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb0

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;->initPreviewLayout(Lcom/android/camera/CameraSize;)V

    :cond_1
    return-void
.end method

.method private initializeEngine(Lcom/android/camera/panorama/MorphoPanoramaGP3;Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;D)Z
    .locals 7

    .line 1
    sget-object v0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeEngine start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->createNativeOutputInfo()I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 3
    sget-object v4, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v1

    const-string v0, "createNativeOutputInfo error ret:0x%08X"

    invoke-static {v5, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->initialize(Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;D)I

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    sget-object p2, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p4, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p4, v1

    const-string p1, "initialize error ret:0x%08X"

    invoke-static {p3, p1, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 6
    :cond_1
    sget-object p1, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "initializeEngine end "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->getVersion()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p1, p2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private isProcessingFinishTask()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mSaveOutputImageTask:Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isShootingTooShort()Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/module/Panorama3Module;->mPanoramaShootingStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x258

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onCaptureDirectionDecided()V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/camera/module/Panorama3Module;->mAttachPosOffsetX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/camera/module/Panorama3Module;->mAttachPosOffsetY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, "onCaptureDirectionDecided %s %s"

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb0

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;

    .line 4
    iget v1, p0, Lcom/android/camera/module/Panorama3Module;->mDirection:I

    iget v2, p0, Lcom/android/camera/module/Panorama3Module;->mAttachPosOffsetX:I

    iget v4, p0, Lcom/android/camera/module/Panorama3Module;->mAttachPosOffsetY:I

    invoke-interface {v0, v1, v2, v4}, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;->onCaptureDirectionDecided(III)V

    .line 5
    iput-boolean v3, p0, Lcom/android/camera/module/Panorama3Module;->mCaptureDirectionDecided:Z

    return-void
.end method

.method private onPreviewMoving()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;->onPreviewMoving()V

    :cond_0
    return-void
.end method

.method private onSaveFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isAeLockSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setAELock(Z)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isAwbLockSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setAWBLock(Z)V

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/Panorama3Module;->mTargetFocusMode:I

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setFocusMode(I)V

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/module/Panorama3Module;->startPreview()V

    .line 8
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz v0, :cond_3

    .line 9
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPostSavingFinish()V

    :cond_3
    :goto_0
    return-void
.end method

.method private onStopShooting(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStopShooting recordState is null, succeed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 3
    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPostSavingStart(I)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFailed()V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module;->mDispPreviewImage:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 7
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/Panorama3Module;->onSaveFinish()V

    return-void
.end method

.method private reInitGravitySensorData()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mGravities:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v3, 0x1

    .line 2
    aput v2, v0, v3

    const/4 v3, 0x2

    .line 3
    aput v2, v0, v3

    .line 4
    iput v1, p0, Lcom/android/camera/module/Panorama3Module;->mSensorCnt:I

    return-void
.end method

.method private registerSensorListener()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/Panorama3Module;->mIsRegisterSensorListener:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/Panorama3Module;->mIsRegisterSensorListener:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/module/Panorama3Module;->mIsSensorAverage:Z

    .line 4
    iput v0, p0, Lcom/android/camera/module/Panorama3Module;->mSensorCnt:I

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 5
    iput-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mGravities:[F

    .line 6
    new-instance v0, Lcom/android/camera/panorama/GyroscopeRoundDetector;

    invoke-direct {v0}, Lcom/android/camera/panorama/GyroscopeRoundDetector;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mRoundDetector:Lcom/android/camera/panorama/RoundDetector;

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setSensorStateListener(Lcom/android/camera/SensorStateManager$SensorStateListener;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    const/16 v1, 0xba

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000ooo0()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/SensorStateManager;->register(IZ)V

    return-void
.end method

.method private requestStopShoot()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/module/Panorama3Module;->sAttachExit:Lcom/android/camera/panorama/CaptureImage;

    invoke-direct {p0, v0}, Lcom/android/camera/module/Panorama3Module;->addAttachQueue(Lcom/android/camera/panorama/CaptureImage;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/Panorama3Module;->mRequestStop:Z

    return-void
.end method

.method private savePanoramaFile([Landroid/net/Uri;Ljava/lang/String;II)Z
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v15, p2

    .line 1
    new-instance v17, Lcom/android/camera/panorama/MorphoPanoramaGP3$GalleryInfoData;

    invoke-direct/range {v17 .. v17}, Lcom/android/camera/panorama/MorphoPanoramaGP3$GalleryInfoData;-><init>()V

    const/4 v14, 0x0

    .line 2
    invoke-static {v14}, Lcom/android/camera/CameraSettings;->getEncodingQuality(Z)Lcom/android/camera/EncodingQuality;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/android/camera/EncodingQuality;->toInteger(Z)I

    move-result v0

    mul-int/lit16 v0, v0, 0x100

    div-int/lit8 v0, v0, 0x64

    .line 3
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    iget-wide v5, v1, Lcom/android/camera/module/Panorama3Module;->mTimeTaken:J

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v10

    iget-object v13, v1, Lcom/android/camera/module/Panorama3Module;->mLocation:Landroid/location/Location;

    const-string v7, "image/jpeg"

    const/4 v8, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x1

    move-object/from16 v9, p2

    move/from16 v12, p3

    move-object/from16 v19, v13

    move/from16 v13, p4

    move/from16 v20, v14

    move-object/from16 v14, v19

    move/from16 v15, v16

    move/from16 v16, v18

    .line 6
    invoke-static/range {v2 .. v16}, Lcom/android/camera/storage/Storage;->insertToMediaStore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;JIILandroid/location/Location;ZZ)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, p1, v20

    const/4 v12, -0x1

    .line 7
    :try_start_0
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    aget-object v3, p1, v20

    const-string/jumbo v4, "w"

    .line 8
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :try_start_1
    iget-object v2, v1, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v5

    iget-object v7, v1, Lcom/android/camera/module/Panorama3Module;->mShutterStartTime:Ljava/lang/String;

    iget-object v8, v1, Lcom/android/camera/module/Panorama3Module;->mShutterEndTime:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v11, 0x0

    move/from16 v3, p3

    move/from16 v4, p4

    move v6, v0

    move-object/from16 v10, v17

    invoke-virtual/range {v2 .. v11}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->savePanorama360(IIIILjava/lang/String;Ljava/lang/String;ZLcom/android/camera/panorama/MorphoPanoramaGP3$GalleryInfoData;Z)I

    move-result v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v13, :cond_1

    .line 10
    :try_start_2
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz v13, :cond_0

    .line 11
    :try_start_3
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 12
    sget-object v2, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "open file failed, filePath "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    aget-object v2, p1, v20

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 14
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    aget-object v2, p1, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_1
    :goto_1
    const/4 v0, 0x1

    if-nez v12, :cond_2

    const/4 v2, 0x4

    .line 15
    sget-object v3, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/panorama/MorphoPanoramaGP3$GalleryInfoData;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    const/4 v2, 0x6

    .line 16
    sget-object v3, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v20

    const-string/jumbo v4, "savePanorama360() -> 0x%x, delete uri"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return v20
.end method

.method private setInitialRotationByGravity()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/Panorama3Module;->mSensorCnt:I

    if-lez v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mGravities:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    const/4 v4, 0x1

    .line 3
    aget v5, v1, v4

    int-to-float v6, v0

    div-float/2addr v5, v6

    const/4 v6, 0x2

    .line 4
    aget v1, v1, v6

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 5
    sget-object v0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v6, 0x3

    iget v9, p0, Lcom/android/camera/module/Panorama3Module;->mSensorCnt:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    const-string v6, "Gravity Sensor Value X=%f Y=%f Z=%f cnt=%d"

    invoke-static {v7, v6, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v7, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    float-to-double v8, v3

    float-to-double v10, v5

    float-to-double v12, v1

    invoke-virtual/range {v7 .. v13}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setInitialRotationByGravity(DDD)I

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    sget-object v1, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    const-string/jumbo v0, "setInitialRotationByGravity error ret:0x%08X"

    invoke-static {v3, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private setSensorFusionValue(Lcom/android/camera/panorama/CaptureImage;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mSensorFusion:Lcom/android/camera/panorama/SensorFusion;

    if-eqz v0, :cond_5

    const/4 v1, 0x4

    new-array v2, v1, [I

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v0, v3, v3, v3, v2}, Lcom/android/camera/panorama/SensorFusion;->getSensorMatrix([D[D[D[I)I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 3
    sget-object v5, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v3

    const-string v0, "SensorFusion.getSensorMatrix error ret:0x%08X"

    invoke-static {v6, v0, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mSensorFusion:Lcom/android/camera/panorama/SensorFusion;

    invoke-virtual {v0}, Lcom/android/camera/panorama/SensorFusion;->getStockData()Ljava/util/ArrayList;

    move-result-object v0

    .line 5
    new-instance v5, Lcom/android/camera/panorama/SensorInfoManager;

    invoke-direct {v5, v1}, Lcom/android/camera/panorama/SensorInfoManager;-><init>(I)V

    .line 6
    aget v1, v2, v3

    iput v1, v5, Lcom/android/camera/panorama/SensorInfoManager;->g_ix:I

    const/4 v1, 0x3

    .line 7
    aget v6, v2, v1

    iput v6, v5, Lcom/android/camera/panorama/SensorInfoManager;->r_ix:I

    .line 8
    aget v2, v2, v4

    iput v2, v5, Lcom/android/camera/panorama/SensorInfoManager;->a_ix:I

    .line 9
    iget-object v2, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    invoke-virtual {v2}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->getAttachCount()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/camera/panorama/SensorInfoManager;->img_ix:J

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/camera/panorama/SensorInfoManager;->timeMillis:J

    .line 11
    invoke-virtual {p1}, Lcom/android/camera/panorama/CaptureImage;->getTimestamp()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/camera/panorama/SensorInfoManager;->imageTimeStamp:J

    .line 12
    invoke-virtual {p1}, Lcom/android/camera/panorama/CaptureImage;->getSensitivity()I

    move-result v2

    iput v2, v5, Lcom/android/camera/panorama/SensorInfoManager;->sensitivity:I

    .line 13
    invoke-virtual {p1}, Lcom/android/camera/panorama/CaptureImage;->getExposureTime()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/camera/panorama/SensorInfoManager;->exposureTime:J

    .line 14
    invoke-virtual {p1}, Lcom/android/camera/panorama/CaptureImage;->getRollingShutterSkew()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/camera/panorama/SensorInfoManager;->rollingShutterSkew:J

    .line 15
    invoke-virtual {p1}, Lcom/android/camera/panorama/CaptureImage;->getSensorTimeStamp()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/camera/panorama/SensorInfoManager;->sensorTimeStamp:J

    .line 16
    iget-object p1, v5, Lcom/android/camera/panorama/SensorInfoManager;->sensorData:[Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    aput-object v2, p1, v3

    .line 18
    iget-object p1, v5, Lcom/android/camera/panorama/SensorInfoManager;->sensorData:[Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    aput-object v2, p1, v1

    .line 20
    iget-object p1, v5, Lcom/android/camera/panorama/SensorInfoManager;->sensorData:[Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    aput-object v2, p1, v4

    .line 22
    iget-object p1, v5, Lcom/android/camera/panorama/SensorInfoManager;->sensorData:[Ljava/util/ArrayList;

    aget-object p1, p1, v3

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 23
    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module;->mSensorInfoManagerList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 24
    iget-object v2, p0, Lcom/android/camera/module/Panorama3Module;->mSensorInfoManagerList:Ljava/util/ArrayList;

    sub-int/2addr p1, v4

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/panorama/SensorInfoManager;

    .line 25
    iget v2, p1, Lcom/android/camera/panorama/SensorInfoManager;->g_ix:I

    iput v2, v5, Lcom/android/camera/panorama/SensorInfoManager;->g_ix:I

    .line 26
    iget-object v2, v5, Lcom/android/camera/panorama/SensorInfoManager;->sensorData:[Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/camera/panorama/SensorInfoManager;->sensorData:[Ljava/util/ArrayList;

    aget-object p1, p1, v3

    aput-object p1, v2, v3

    .line 27
    :cond_1
    iget-object p1, v5, Lcom/android/camera/panorama/SensorInfoManager;->sensorData:[Ljava/util/ArrayList;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 28
    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module;->mSensorInfoManagerList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 29
    iget-object v2, p0, Lcom/android/camera/module/Panorama3Module;->mSensorInfoManagerList:Ljava/util/ArrayList;

    sub-int/2addr p1, v4

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/panorama/SensorInfoManager;

    .line 30
    iget v2, p1, Lcom/android/camera/panorama/SensorInfoManager;->r_ix:I

    iput v2, v5, Lcom/android/camera/panorama/SensorInfoManager;->r_ix:I

    .line 31
    iget-object v2, v5, Lcom/android/camera/panorama/SensorInfoManager;->sensorData:[Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/camera/panorama/SensorInfoManager;->sensorData:[Ljava/util/ArrayList;

    aget-object p1, p1, v1

    aput-object p1, v2, v1

    .line 32
    :cond_2
    iget-object p1, v5, Lcom/android/camera/panorama/SensorInfoManager;->sensorData:[Ljava/util/ArrayList;

    aget-object p1, p1, v4

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 33
    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module;->mSensorInfoManagerList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 34
    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mSensorInfoManagerList:Ljava/util/ArrayList;

    sub-int/2addr p1, v4

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/panorama/SensorInfoManager;

    .line 35
    iget v1, p1, Lcom/android/camera/panorama/SensorInfoManager;->a_ix:I

    iput v1, v5, Lcom/android/camera/panorama/SensorInfoManager;->a_ix:I

    .line 36
    iget-object v1, v5, Lcom/android/camera/panorama/SensorInfoManager;->sensorData:[Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/camera/panorama/SensorInfoManager;->sensorData:[Ljava/util/ArrayList;

    aget-object p1, p1, v4

    aput-object p1, v1, v4

    .line 37
    :cond_3
    iput-object v5, p0, Lcom/android/camera/module/Panorama3Module;->mCurrentSensorInfoManager:Lcom/android/camera/panorama/SensorInfoManager;

    .line 38
    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module;->mSensorInfoManagerList:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    invoke-virtual {p1}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->getAttachCount()J

    move-result-wide v1

    .line 40
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-lez v1, :cond_4

    .line 41
    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mMorphoPanoramaGP3:Lcom/android/camera/panorama/MorphoPanoramaGP3;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-array p1, p1, [Lcom/android/camera/panorama/MorphoSensorFusion$SensorData;

    .line 42
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/camera/panorama/MorphoSensorFusion$SensorData;

    .line 43
    invoke-virtual {v1, p1}, Lcom/android/camera/panorama/MorphoPanoramaGP3;->setGyroscopeData([Lcom/android/camera/panorama/MorphoSensorFusion$SensorData;)I

    move-result p1

    if-eqz p1, :cond_4

    .line 44
    sget-object v0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string/jumbo p1, "setGyroscopeData error ret:0x%08X"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_4
    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module;->mSensorFusion:Lcom/android/camera/panorama/SensorFusion;

    invoke-virtual {p1}, Lcom/android/camera/panorama/SensorFusion;->clearStockData()V

    :cond_5
    return-void
.end method

.method private setupCaptureParams()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string v1, "camera device is not ready"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/Panorama3Module;->mTargetFocusMode:I

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setFocusMode(I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setZoomRatio(F)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setFlashMode(I)V

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->getAntiBanding()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera2/Camera2Proxy;->setAntiBanding(I)V

    .line 8
    sget-object v2, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "antiBanding="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/Panorama3Module;->isZslPreferred()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/camera2/Camera2Proxy;->setEnableZsl(Z)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setEnableOIS(Z)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setTimeWaterMarkEnable(Z)V

    return-void
.end method

.method private stopPanoramaShooting(ZLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lcom/android/camera/module/Panorama3Module;->stopPanoramaShooting(ZZLjava/lang/String;)V

    return-void
.end method

.method private stopPanoramaShooting(ZZLjava/lang/String;)V
    .locals 4

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/module/Panorama3Module;->mIsShooting:Z

    if-nez v0, :cond_0

    .line 3
    sget-object p1, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "stopPanoramaShooting while not shooting"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/Panorama3Module;->mRequestStop:Z

    if-eqz v0, :cond_1

    .line 5
    sget-object p1, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "stopPanoramaShooting: in process"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-static {v0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO0o()V

    const/4 v0, 0x2

    .line 7
    sget-object v1, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopPanoramaShooting: saveImage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isRelease="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-direct {p0}, Lcom/android/camera/module/Panorama3Module;->requestStopShoot()V

    .line 9
    invoke-virtual {p0}, Lcom/android/camera/module/Panorama3Module;->keepScreenOnAwhile()V

    .line 10
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mRoundDetector:Lcom/android/camera/panorama/RoundDetector;

    invoke-virtual {v0}, Lcom/android/camera/panorama/RoundDetector;->stop()V

    .line 11
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getDeviceLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    if-eqz v1, :cond_4

    if-eqz p2, :cond_2

    .line 13
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xb0

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;

    if-eqz v1, :cond_3

    .line 14
    sget-object v2, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPause setDisplayPreviewBitmap null"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 15
    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;->setDisplayPreviewBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 16
    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->captureAbortBurst()V

    .line 17
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/camera2/Camera2Proxy;->stopPreviewCallback(Z)V

    .line 18
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    if-eqz p1, :cond_5

    .line 19
    iget-boolean p1, p0, Lcom/android/camera/module/Panorama3Module;->mCanSavePanorama:Z

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    move p1, p2

    .line 20
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/camera/module/Panorama3Module;->createDateStringForAppSeg(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mShutterEndTime:Ljava/lang/String;

    .line 21
    new-instance v0, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;-><init>(Lcom/android/camera/module/Panorama3Module;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mSaveOutputImageTask:Lcom/android/camera/module/Panorama3Module$SaveOutputImageTask;

    new-array p2, p2, [Ljava/lang/Void;

    .line 22
    invoke-virtual {v0, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 23
    invoke-direct {p0, p1}, Lcom/android/camera/module/Panorama3Module;->onStopShooting(Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 24
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private unRegisterSensorListener()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/Panorama3Module;->mIsRegisterSensorListener:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/module/Panorama3Module;->mIsRegisterSensorListener:Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setSensorStateListener(Lcom/android/camera/SensorStateManager$SensorStateListener;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    const/16 v1, 0xba

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->unregister(I)V

    return-void
.end method

.method private updatePictureAndPreviewSize()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 2
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->oo0o0Oo()I

    move-result v1

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/Panorama3Module;->getBestPanoPictureSize(Ljava/util/List;I)Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 6
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    const-class v2, Landroid/graphics/SurfaceTexture;

    invoke-static {v1, v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getBogusCameraId()I

    move-result v3

    iget v4, v0, Lcom/android/camera/CameraSize;->width:I

    iget v5, v0, Lcom/android/camera/CameraSize;->height:I

    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 8
    invoke-interface {v6}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/camera/CameraSettings;->getPreviewAspectRatio(IILcom/android/camera2/CameraCapabilities;)F

    move-result v4

    float-to-double v4, v4

    const/4 v6, 0x0

    .line 9
    invoke-static {v6, v3, v1, v4, v5}, Lcom/android/camera/Util;->getOptimalPreviewSize(ZILjava/util/List;D)Lcom/android/camera/CameraSize;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setPreviewSize(Lcom/android/camera/CameraSize;)V

    .line 10
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1, v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setPictureSize(Lcom/android/camera/CameraSize;)V

    .line 11
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    iget v1, v1, Lcom/android/camera/CameraSize;->width:I

    iput v1, p0, Lcom/android/camera/module/Panorama3Module;->mPictureWidth:I

    .line 12
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    iget v1, v1, Lcom/android/camera/CameraSize;->height:I

    iput v1, p0, Lcom/android/camera/module/Panorama3Module;->mPictureHeight:I

    .line 13
    sget-object v1, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pictureSize= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/camera/CameraSize;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "X"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " previewSize="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 14
    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    iget v0, v0, Lcom/android/camera/CameraSize;->width:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    iget v0, v0, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    .line 15
    invoke-static {v2, v1, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    iget v0, v0, Lcom/android/camera/CameraSize;->width:I

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    iget v1, v1, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/BaseModule;->updateCameraScreenNailSize(II)V

    return-void
.end method


# virtual methods
.method public closeCamera()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string v1, "closeCamera: start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getDeviceLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setCameraState(I)V

    .line 4
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera2/Camera2Proxy;->setErrorCallback(Lcom/android/camera2/Camera2Proxy$CameraErrorCallback;)V

    .line 6
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/camera2/Camera2Proxy;->stopPreviewCallback(Z)V

    .line 7
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1, v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setCamera2Device(Lcom/android/camera2/Camera2Proxy;)V

    .line 8
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    sget-object v0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string v1, "closeCamera: end"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public varargs consumePreference([I)V
    .locals 6

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget v2, p1, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x5

    if-eq v2, v3, :cond_3

    const/4 v3, 0x6

    if-eq v2, v3, :cond_3

    const/16 v3, 0x18

    if-eq v2, v3, :cond_1

    const/16 v3, 0x19

    if-eq v2, v3, :cond_0

    sparse-switch v2, :sswitch_data_0

    packed-switch v2, :pswitch_data_0

    .line 2
    sget-object v3, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no consumer for this updateType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3
    :sswitch_0
    invoke-virtual {p0, p0}, Lcom/android/camera/module/BaseModule;->initializeMetaDataCallback(Lcom/android/camera/module/BaseModule;)V

    goto :goto_1

    .line 4
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateThermalLevel()V

    goto :goto_1

    .line 5
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateModuleRelated()V

    goto :goto_1

    .line 6
    :sswitch_3
    invoke-direct {p0}, Lcom/android/camera/module/Panorama3Module;->setupCaptureParams()V

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->focusCenter()V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->applyZoomRatio()V

    goto :goto_1

    .line 9
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/Panorama3Module;->updatePictureAndPreviewSize()V

    :cond_3
    :goto_1
    :pswitch_0
    :sswitch_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_4
        0xf -> :sswitch_4
        0x14 -> :sswitch_4
        0x1e -> :sswitch_4
        0x20 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_4
        0x37 -> :sswitch_2
        0x42 -> :sswitch_1
        0x4f -> :sswitch_4
        0x5f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2e
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getBestPanoPictureSize(Ljava/util/List;I)Lcom/android/camera/CameraSize;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;I)",
            "Lcom/android/camera/CameraSize;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getBogusCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/camera/PictureSizeManager;->initialize(Ljava/util/List;IIILcom/android/camera2/CameraCapabilities;)V

    .line 2
    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getBestPanoPictureSize()Lcom/android/camera/CameraSize;

    move-result-object p1

    return-object p1
.end method

.method public isDoingAction()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDoingAction: mIsShooting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/module/Panorama3Module;->mIsShooting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsBurstSequenceEnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/module/Panorama3Module;->mIsBurstSequenceEnd:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mRequestStop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/module/Panorama3Module;->mRequestStop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/module/Panorama3Module;->mIsShooting:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/Panorama3Module;->mIsBurstSequenceEnd:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/Panorama3Module;->mRequestStop:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/module/Panorama3Module;->isProcessingFinishTask()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isRecording()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/Panorama3Module;->mIsShooting:Z

    return v0
.end method

.method public isUnIncorruptible()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setUnInterruptableReason(Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/module/Panorama3Module;->mIsShooting:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    const-string/jumbo v1, "shooting"

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setUnInterruptableReason(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->getUnInterruptableReason()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isZoomEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isZslPreferred()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public keepScreenOn()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method public keepScreenOnAwhile()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x11

    const-wide/16 v2, 0x3e8

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public onActionStop()V
    .locals 5

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    const/4 v0, 0x1

    const-string/jumbo v1, "stop_capture_press_back"

    .line 2
    invoke-direct {p0, v0, v0, v1}, Lcom/android/camera/module/Panorama3Module;->stopPanoramaShooting(ZZLjava/lang/String;)V

    .line 3
    sget-object v0, Lcom/android/camera/module/Panorama3Module;->mPreviewImageLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mPreviewImage:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 6
    iput-object v2, p0, Lcom/android/camera/module/Panorama3Module;->mPreviewImage:Landroid/graphics/Bitmap;

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mDispPreviewImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 8
    sget-object v1, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPause recycle bitmap "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/module/Panorama3Module;->mDispPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v1, p0, Lcom/android/camera/module/Panorama3Module;->mDispPreviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 10
    iput-object v2, p0, Lcom/android/camera/module/Panorama3Module;->mDispPreviewImage:Landroid/graphics/Bitmap;

    .line 11
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-direct {p0}, Lcom/android/camera/module/Panorama3Module;->doLaterReleaseIfNeed()V

    return-void

    :catchall_0
    move-exception v1

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onBackPressed()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/Panorama3Module;->mIsShooting:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/Panorama3Module;->isProcessingFinishTask()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    const-string/jumbo v0, "stop_capture_press_back"

    .line 4
    invoke-direct {p0, v1, v0}, Lcom/android/camera/module/Panorama3Module;->stopPanoramaShooting(ZLjava/lang/String;)V

    :cond_0
    return v1

    .line 5
    :cond_1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onCameraOpened()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onCameraOpened()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->checkDisplayOrientation()V

    .line 3
    sget-object v0, Lcom/android/camera/constant/UpdateConstant;->PANORAMA_TYPES_INIT:[I

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updatePreferenceTrampoline([I)V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/Panorama3Module;->startSession()V

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6
    sget-object v0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string v1, "SetupCameraThread done"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getViewAngle(Lcom/android/camera2/CameraCapabilities;Z)F

    move-result v0

    iput v0, p0, Lcom/android/camera/module/Panorama3Module;->mViewAngleH:F

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getViewAngle(Lcom/android/camera2/CameraCapabilities;Z)F

    move-result v0

    iput v0, p0, Lcom/android/camera/module/Panorama3Module;->mViewAngleV:F

    .line 9
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSensorOrientation(Lcom/android/camera2/CameraCapabilities;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/Panorama3Module;->mCameraOrientation:I

    return-void
.end method

.method public onCreate(II)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onCreate(II)V

    .line 2
    new-instance p1, Lcom/android/camera/module/Panorama3Module$MainHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/camera/module/Panorama3Module$MainHandler;-><init>(Lcom/android/camera/module/Panorama3Module;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0Oo0oo()I

    move-result p1

    iput p1, p0, Lcom/android/camera/module/Panorama3Module;->mGoalAngle:I

    .line 4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO00O()I

    move-result p1

    iput p1, p0, Lcom/android/camera/module/Panorama3Module;->mGoalAngleVertical:I

    .line 5
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0706b2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/camera/module/Panorama3Module;->mSmallPreviewHeight:I

    const/16 p1, 0x438

    .line 6
    iput p1, p0, Lcom/android/camera/module/Panorama3Module;->mSmallPreviewHeightVertical:I

    .line 7
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p1

    sget p2, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/android/camera/effect/EffectController;->setAiSceneEffect(IZ)V

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/module/Panorama3Module;->onCameraOpened()V

    .line 9
    new-instance p1, Lcom/android/camera/panorama/RoundDetector;

    invoke-direct {p1}, Lcom/android/camera/panorama/RoundDetector;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module;->mRoundDetector:Lcom/android/camera/panorama/RoundDetector;

    .line 10
    new-instance p1, Lcom/android/camera/panorama/PanoramaSetting;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/camera/panorama/PanoramaSetting;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module;->mPanoramaSetting:Lcom/android/camera/panorama/PanoramaSetting;

    .line 11
    new-instance p1, Lcom/android/camera/panorama/SensorFusion;

    invoke-direct {p1, v0}, Lcom/android/camera/panorama/SensorFusion;-><init>(Z)V

    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module;->mSensorFusion:Lcom/android/camera/panorama/SensorFusion;

    .line 12
    iput v0, p0, Lcom/android/camera/module/Panorama3Module;->mSensorFusionMode:I

    .line 13
    invoke-virtual {p1, v0}, Lcom/android/camera/panorama/SensorFusion;->setMode(I)I

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 14
    sget-object v1, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, p2

    const-string p1, "SensorFusion.setMode error ret:0x%08X"

    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module;->mSensorFusion:Lcom/android/camera/panorama/SensorFusion;

    invoke-virtual {p1, p2}, Lcom/android/camera/panorama/SensorFusion;->setOffsetMode(I)I

    move-result p1

    if-eqz p1, :cond_1

    .line 16
    sget-object v1, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, p2

    const-string p1, "SensorFusion.setOffsetMode error ret:0x%08X"

    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/Panorama3Module;->mSensorFusion:Lcom/android/camera/panorama/SensorFusion;

    invoke-virtual {p1, v0}, Lcom/android/camera/panorama/SensorFusion;->setAppState(I)I

    move-result p1

    if-eqz p1, :cond_2

    .line 18
    sget-object v1, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, p2

    const-string p1, "SensorFusion.setAppState error ret:0x%08X"

    invoke-static {v2, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module;->mSensorInfoManagerList:Ljava/util/ArrayList;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPaused()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrameAvailable()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/16 v0, 0x1b

    const v3, 0x7f1207da

    if-eq p1, v0, :cond_7

    const/16 v0, 0x42

    if-eq p1, v0, :cond_7

    const/16 v0, 0x2bc

    if-eq p1, v0, :cond_6

    const/16 v0, 0x57

    const/16 v4, 0x58

    if-eq p1, v0, :cond_2

    if-eq p1, v4, :cond_2

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 3
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_8

    const/16 p1, 0x32

    .line 4
    invoke-static {v3}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    .line 6
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/camera/module/Panorama3Module;->performKeyClicked(ILjava/lang/String;IZ)V

    return v1

    :cond_2
    :pswitch_1
    const/16 v0, 0x18

    if-eq p1, v0, :cond_4

    if-ne p1, v4, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v1

    .line 7
    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    .line 8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InputDevice;->isExternal()Z

    move-result v2

    .line 9
    :cond_5
    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/android/camera/module/BaseModule;->handleVolumeKeyEvent(ZZIZ)Z

    move-result v0

    if-eqz v0, :cond_8

    return v1

    .line 10
    :cond_6
    iget-boolean v0, p0, Lcom/android/camera/module/Panorama3Module;->mIsShooting:Z

    if-eqz v0, :cond_8

    const-string/jumbo v0, "stop_capture_press_back"

    .line 11
    invoke-direct {p0, v1, v0}, Lcom/android/camera/module/Panorama3Module;->stopPanoramaShooting(ZLjava/lang/String;)V

    goto :goto_2

    .line 12
    :cond_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_8

    const/16 p1, 0x28

    .line 13
    invoke-static {v3}, Lcom/android/camera/Util;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    .line 15
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/camera/module/Panorama3Module;->performKeyClicked(ILjava/lang/String;IZ)V

    return v1

    .line 16
    :cond_8
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPaused()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x42

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    .line 2
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xab

    .line 3
    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromKeyBack()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 5
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onPause()V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/module/Panorama3Module;->unRegisterSensorListener()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/Panorama3Module;->closeCamera()V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/module/Panorama3Module;->resetScreenOn()V

    return-void
.end method

.method public onPreviewLayoutChanged(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/android/camera/ActivityBase;->onLayoutChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onPreviewSessionClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    return-void
.end method

.method public onPreviewSessionFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isTextureExpired()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/Camera;->retryOnceIfCameraError()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "sessionFailed due to surfaceTexture expired, retry"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x33

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onPreviewSessionSuccess(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setCameraState(I)V

    .line 3
    sget-object p1, Lcom/android/camera/constant/UpdateConstant;->PANORAMA_ON_PREVIEW_SUCCESS:[I

    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updatePreferenceInWorkThread([I)V

    return-void
.end method

.method public onPreviewSizeChanged(II)V
    .locals 0

    return-void
.end method

.method public onRenderRequested()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb0

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$PanoramaProtocol;->requestRender()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/Panorama3Module;->keepScreenOnAwhile()V

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/Panorama3Module;->registerSensorListener()V

    return-void
.end method

.method public onReviewCancelClicked()V
    .locals 0

    return-void
.end method

.method public onReviewDoneClicked()V
    .locals 0

    return-void
.end method

.method public onShutterButtonClick(I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPaused()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v0

    if-eqz v0, :cond_8

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isIgnoreTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isScreenSlideOff()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/Panorama3Module;->isDoingAction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    sget-object p1, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onShutterButtonClick return, isDoingAction"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 6
    :cond_2
    sget-object v0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onShutterButtonClick"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    .line 7
    sget-object v2, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const-string/jumbo v5, "onShutterButtonClick mode = %d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0, p1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setTriggerMode(I)V

    .line 9
    iget-boolean p1, p0, Lcom/android/camera/module/Panorama3Module;->mIsShooting:Z

    if-nez p1, :cond_6

    .line 10
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 11
    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 12
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xd4

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-eqz p1, :cond_3

    .line 13
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFailed()V

    :cond_3
    return v1

    .line 14
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/module/Panorama3Module;->getThumbnailViewSize()Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module;->mThumbnailViewSize:Landroid/util/Size;

    if-nez p1, :cond_5

    .line 15
    sget-object p1, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onShutterButtonClick return, thumbnailViewSize is null"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 16
    :cond_5
    new-instance p1, Lcom/android/camera/module/Panorama3Module$PanoramaInit;

    invoke-direct {p1, p0}, Lcom/android/camera/module/Panorama3Module$PanoramaInit;-><init>(Lcom/android/camera/module/Panorama3Module;)V

    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module;->mPanoramaState:Lcom/android/camera/panorama/PanoramaState;

    .line 17
    invoke-direct {p0}, Lcom/android/camera/module/Panorama3Module;->initAttachQueue()V

    const/4 p1, 0x2

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 19
    sget-object p1, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onShutterButtonClick startPanoramaShooting"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-virtual {p0}, Lcom/android/camera/module/Panorama3Module;->startPanoramaShooting()V

    goto :goto_0

    .line 21
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/module/Panorama3Module;->isShootingTooShort()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 22
    sget-object p1, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "panorama shooting is too short, ignore this click"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_7
    const/4 p1, 0x3

    .line 23
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    .line 24
    sget-object p1, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onShutterButtonClick stopPanoramaShooting"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "stop_capture_press_stop"

    .line 25
    invoke-direct {p0, v3, v1, p1}, Lcom/android/camera/module/Panorama3Module;->stopPanoramaShooting(ZZLjava/lang/String;)V

    :goto_0
    return v3

    :cond_8
    :goto_1
    return v1
.end method

.method public onShutterButtonFocus(ZI)V
    .locals 0

    return-void
.end method

.method public onShutterButtonLongClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onShutterButtonLongClickCancel(Z)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/module/Panorama3Module;->onShutterButtonFocus(ZI)V

    return-void
.end method

.method public onShutterDragging()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(IIZ)V
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p3}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPaused()Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 2
    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->hasCameraException()Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    .line 4
    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera2/Camera2Proxy;->isSessionReady()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->isInTapableRect(II)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object p3, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrameAvailable()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-nez p3, :cond_1

    .line 7
    sget-object p1, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onSingleTapUp: frame not available"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p3

    const/16 v0, 0xab

    .line 9
    invoke-virtual {p3, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p3

    check-cast p3, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    if-eqz p3, :cond_2

    .line 10
    invoke-interface {p3, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromTapDown(II)Z

    move-result p1

    if-eqz p1, :cond_2

    nop

    :cond_2
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onStop()V

    return-void
.end method

.method public onThermalConstrained()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onThermalConstrained()V

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/module/Panorama3Module;->mIsShooting:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/android/camera/module/Panorama3Module;->isShootingTooShort()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "panorama shooting is too short, ignore this click"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->playCameraSound(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "stop_capture_thermal"

    .line 6
    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/module/Panorama3Module;->stopPanoramaShooting(ZZLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lcom/android/camera/OnClickAttr;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {p1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPaused()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/module/Panorama3Module;->isProcessingFinishTask()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->gotoGallery()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onUserInteraction()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/Panorama3Module;->mIsShooting:Z

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/Panorama3Module;->keepScreenOnAwhile()V

    :cond_0
    return-void
.end method

.method public pausePreview()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "pausePreview"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->pausePreview()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setCameraState(I)V

    return-void
.end method

.method public performKeyClicked(ILjava/lang/String;IZ)V
    .locals 0

    if-nez p3, :cond_0

    if-eqz p4, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/module/Panorama3Module;->onShutterButtonClick(I)Z

    :cond_0
    return-void
.end method

.method public registerProtocol()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->registerProtocol()V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0O0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/impl/ImplFactory;->initAdditional(Lcom/android/camera/ActivityBase;[I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/impl/ImplFactory;->initAdditional(Lcom/android/camera/ActivityBase;[I)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0xae
        0xa4
        0xd4
    .end array-data

    :array_1
    .array-data 4
        0xa4
        0xd4
    .end array-data
.end method

.method public resetScreenOn()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public resumePreview()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resumePreview"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->resumePreview()I

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setCameraState(I)V

    return-void
.end method

.method public sendOpenFailMessage()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setFrameAvailable(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->setFrameAvailable(Z)V

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraSoundOpen()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p1, v0}, Lcom/android/camera/ActivityBase;->loadCameraSound(I)V

    const/4 v0, 0x3

    .line 5
    invoke-virtual {p1, v0}, Lcom/android/camera/ActivityBase;->loadCameraSound(I)V

    :cond_0
    return-void
.end method

.method public setNullDirectionFunction()V
    .locals 8

    .line 1
    new-instance v7, Lcom/android/camera/panorama/DirectionFunction;

    iget v1, p0, Lcom/android/camera/module/Panorama3Module;->mPictureWidth:I

    iget v2, p0, Lcom/android/camera/module/Panorama3Module;->mPictureHeight:I

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/panorama/DirectionFunction;-><init>(IIIIFI)V

    iput-object v7, p0, Lcom/android/camera/module/Panorama3Module;->mDirectionFunction:Lcom/android/camera/panorama/DirectionFunction;

    return-void
.end method

.method public shouldReleaseLater()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/module/Panorama3Module;->isRecording()Z

    move-result v0

    return v0
.end method

.method public startPanoramaShooting()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/Panorama3Module;->isProcessingFinishTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "previous save task is on going"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-static {v0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO00o(Landroid/content/Context;)LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0O0/OooO0Oo/OooO0Oo;->OooO0o()V

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$RecordState;

    if-nez v0, :cond_1

    .line 5
    sget-object v0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startPanoramaShooting: recordState null"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_1
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onPrepare(Lcom/android/camera/module/Module;)V

    const/4 v1, 0x2

    .line 7
    sget-object v2, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startPanoramaShooting"

    invoke-static {v1, v2, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/android/camera/module/Panorama3Module;->mCaptureDirectionDecided:Z

    .line 9
    iget-object v2, p0, Lcom/android/camera/module/Panorama3Module;->mInitParam:Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;

    iget v2, v2, Lcom/android/camera/panorama/MorphoPanoramaGP3$InitParam;->direction:I

    iput v2, p0, Lcom/android/camera/module/Panorama3Module;->mDirection:I

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/module/Panorama3Module;->mTimeTaken:J

    const/4 v2, 0x1

    .line 11
    iput-boolean v2, p0, Lcom/android/camera/module/Panorama3Module;->mIsShooting:Z

    .line 12
    iput-boolean v1, p0, Lcom/android/camera/module/Panorama3Module;->mIsBurstSequenceEnd:Z

    .line 13
    iput-boolean v1, p0, Lcom/android/camera/module/Panorama3Module;->mCanSavePanorama:Z

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/camera/module/Panorama3Module;->createDateStringForAppSeg(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/module/Panorama3Module;->mShutterStartTime:Ljava/lang/String;

    const-string v3, ""

    .line 15
    iput-object v3, p0, Lcom/android/camera/module/Panorama3Module;->mShutterEndTime:Ljava/lang/String;

    .line 16
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getDeviceLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 17
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isAeLockSupported()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 18
    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/camera2/Camera2Proxy;->setAELock(Z)V

    .line 19
    :cond_2
    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isAwbLockSupported()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v4

    invoke-virtual {v4}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o000OOO()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 20
    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/camera2/Camera2Proxy;->setAWBLock(Z)V

    .line 21
    :cond_3
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/Panorama3Module;->mLocation:Landroid/location/Location;

    .line 22
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/module/Panorama3Module;->mLocation:Landroid/location/Location;

    invoke-virtual {v2, v4}, Lcom/android/camera2/Camera2Proxy;->setGpsLocation(Landroid/location/Location;)V

    .line 23
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v2

    iget v4, p0, Lcom/android/camera/module/Panorama3Module;->mSnapshotFocusMode:I

    invoke-virtual {v2, v4}, Lcom/android/camera2/Camera2Proxy;->setFocusMode(I)V

    .line 24
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v2

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getEncodingQuality(Z)Lcom/android/camera/EncodingQuality;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/camera/EncodingQuality;->toInteger(Z)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/camera2/Camera2Proxy;->setJpegQuality(I)V

    .line 25
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-static {v2}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->getJpegThumbnailSize(Lcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;

    move-result-object v2

    .line 26
    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/camera2/Camera2Proxy;->setJpegThumbnailSize(Lcom/android/camera/CameraSize;)V

    .line 27
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/module/Panorama3Module;->isZslPreferred()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/camera2/Camera2Proxy;->setEnableZsl(Z)V

    .line 28
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera2/Camera2Proxy;->setNeedPausePreview(Z)V

    .line 29
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/camera2/Camera2Proxy;->setShotType(I)V

    .line 30
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    const/4 v2, -0x1

    new-instance v4, Lcom/android/camera/module/Panorama3Module$5;

    invoke-direct {v4, p0}, Lcom/android/camera/module/Panorama3Module$5;-><init>(Lcom/android/camera/module/Panorama3Module;)V

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/camera2/Camera2Proxy;->captureBurstPictures(ILcom/android/camera2/Camera2Proxy$PictureCallback;Lcom/xiaomi/camera/core/ParallelCallback;)V

    .line 31
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-virtual {p0}, Lcom/android/camera/module/Panorama3Module;->keepScreenOnAwhile()V

    .line 33
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onStart()V

    .line 34
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/Panorama3Module;->mPanoramaShootingStartTime:J

    .line 35
    invoke-virtual {p0}, Lcom/android/camera/module/Panorama3Module;->keepScreenOn()V

    .line 36
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->removeMessage()V

    return-void

    :catchall_0
    move-exception v0

    .line 37
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public startPreview()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getDeviceLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startPreview: camera has been closed"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->checkDisplayOrientation()V

    .line 6
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraDisplayOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera2/Camera2Proxy;->setDisplayOrientation(I)V

    .line 7
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isAeLockSupported()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/camera2/Camera2Proxy;->setAELock(Z)V

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isAwbLockSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/camera2/Camera2Proxy;->setAWBLock(Z)V

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/Panorama3Module;->mTargetFocusMode:I

    invoke-virtual {v1, v2}, Lcom/android/camera2/Camera2Proxy;->setFocusMode(I)V

    .line 12
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->resumePreview()I

    .line 13
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setCameraState(I)V

    .line 14
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startSession()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/module/Panorama3Module;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startPreview: camera has been closed"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setDualCamWaterMarkEnable(Z)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getErrorCallback()Lcom/android/camera/CameraErrorCallbackImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setErrorCallback(Lcom/android/camera2/Camera2Proxy$CameraErrorCallback;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setPreviewSize(Lcom/android/camera/CameraSize;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setAlgorithmPreviewSize(Lcom/android/camera/CameraSize;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setPictureSize(Lcom/android/camera/CameraSize;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setPictureMaxImages(I)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/android/camera2/Camera2Proxy;->setPictureFormat(I)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getSurfaceCreatedTimestamp()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->setSurfaceCreatedTimestamp(J)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    new-instance v2, Landroid/view/Surface;

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 12
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 13
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v0

    xor-int/lit8 v3, v0, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 14
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getOperatingMode()I

    move-result v6

    const/4 v7, 0x0

    move-object v8, p0

    .line 15
    invoke-virtual/range {v1 .. v8}, Lcom/android/camera2/Camera2Proxy;->startPreviewSession(Landroid/view/Surface;IILandroid/view/Surface;IZLcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    return-void
.end method

.method public supportMultiCaptureByRunningCondition()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public supportMultiCaptureByStableCondition()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public trackModeCustomInfo(Ljava/util/Map;ZLcom/android/camera/fragment/beauty/BeautyValues;IZJ)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {p1, p2, p3, p4}, Lcom/android/camera/statistic/CameraStatUtils;->trackPictureTakenInPanorama(Ljava/util/Map;Landroid/content/Context;Lcom/android/camera/fragment/beauty/BeautyValues;I)V

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->unRegisterProtocol()V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/impl/ImplFactory;->detachAdditional()V

    :cond_0
    return-void
.end method
