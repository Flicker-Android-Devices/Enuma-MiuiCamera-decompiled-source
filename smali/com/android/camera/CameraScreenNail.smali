.class public Lcom/android/camera/CameraScreenNail;
.super Lcom/android/camera/SurfaceTextureScreenNail;
.source "CameraScreenNail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraScreenNail$RequestRenderListener;,
        Lcom/android/camera/CameraScreenNail$NailListener;,
        Lcom/android/camera/CameraScreenNail$ReadPixelsType;
    }
.end annotation


# static fields
.field public static final ANIM_CAPTURE_RUNNING:I = 0xc

.field public static final ANIM_CAPTURE_START:I = 0xb

.field public static final ANIM_CAPTURE_WITH_DRAW_RUNNING:I = 0x29

.field public static final ANIM_CAPTURE_WITH_DRAW_START:I = 0x28

.field public static final ANIM_MODULE_COPY_TEXTURE:I = 0x1f

.field public static final ANIM_MODULE_COPY_TEXTURE_WITH_ALPHA:I = 0x25

.field public static final ANIM_MODULE_DRAW_PREVIEW:I = 0x20

.field public static final ANIM_MODULE_RESUME:I = 0x23

.field public static final ANIM_MODULE_RUNNING:I = 0x21

.field public static final ANIM_MODULE_WAITING_FIRST_FRAME:I = 0x22

.field public static final ANIM_NONE:I = 0x0

.field public static final ANIM_READ_LAST_FRAME_GAUSSIAN:I = 0x24

.field public static final ANIM_REALTIME_BLUR:I = 0x1a

.field public static final ANIM_SWITCH_COPY_TEXTURE:I = 0x15

.field public static final ANIM_SWITCH_DRAW_PREVIEW:I = 0x16

.field public static final ANIM_SWITCH_RESUME:I = 0x19

.field public static final ANIM_SWITCH_RUNNING:I = 0x17

.field public static final ANIM_SWITCH_WAITING_FIRST_FRAME:I = 0x18

.field public static final GAUSSIAN_PREVIEWING:I = 0x27

.field public static final READ_PIXELS_TYPE_AF_SALIENCY:I = 0x3

.field public static final READ_PIXELS_TYPE_AF_SALIENCY_SEPARATION:I = 0x4

.field public static final READ_PIXELS_TYPE_DEFAULT:I = 0x1

.field public static final READ_PIXELS_TYPE_FILM:I = 0x2

.field public static final STATE_FULL_READ_PIXELS:I = 0xf

.field public static final STATE_HIBERNATE:I = 0xe

.field public static final STATE_PREVIEW_GAUSSIAN_FOREVER:I = 0x26

.field public static final STATE_READ_PIXELS:I = 0xd

.field public static final STATE_READ_PIXELS_NO_ANIMATION:I = 0x10

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mAnimState:I

.field public mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

.field public mDisableSwitchAnimationOnce:Z

.field public mDynamicSkipFrame:I

.field public mFilmCropNum:I

.field public mFirstFrameArrived:Z

.field public volatile mFirstFrameDrawn:Z

.field public mFrameAvailableNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mFrameNumber:I

.field public mGaussianPreviewManager:Lcom/android/camera/SwitchAnimManager;

.field public volatile mIsDrawBlackFrame:Z

.field public mLastFrameGaussianBitmap:Landroid/graphics/Bitmap;

.field public mMirrorNum:I

.field public mModuleAnimManager:Lcom/android/camera/SwitchAnimManager;

.field public mNailListener:Lcom/android/camera/CameraScreenNail$NailListener;

.field public mReadPixelsNum:I

.field public mReadPixelsType:I

.field public mRequestRenderListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/CameraScreenNail$RequestRenderListener;",
            ">;"
        }
    .end annotation
.end field

.field public mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

.field public mTextureTransformMatrix:[F

.field public mVisible:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraScreenNail$NailListener;Lcom/android/camera/CameraScreenNail$RequestRenderListener;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/SurfaceTextureScreenNail;-><init>(Lcom/android/camera/SurfaceTextureScreenNail$SurfaceTextureScreenNailCallback;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mFrameNumber:I

    .line 3
    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mReadPixelsNum:I

    .line 4
    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mFilmCropNum:I

    .line 5
    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mMirrorNum:I

    const/16 v1, 0x10

    new-array v1, v1, [F

    .line 6
    iput-object v1, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    .line 7
    new-instance v1, Lcom/android/camera/CaptureAnimManager;

    invoke-direct {v1}, Lcom/android/camera/CaptureAnimManager;-><init>()V

    iput-object v1, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    .line 8
    new-instance v1, Lcom/android/camera/SwitchAnimManager;

    invoke-direct {v1}, Lcom/android/camera/SwitchAnimManager;-><init>()V

    iput-object v1, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    .line 9
    new-instance v1, Lcom/android/camera/SwitchAnimManager;

    invoke-direct {v1}, Lcom/android/camera/SwitchAnimManager;-><init>()V

    iput-object v1, p0, Lcom/android/camera/CameraScreenNail;->mModuleAnimManager:Lcom/android/camera/SwitchAnimManager;

    .line 10
    new-instance v1, Lcom/android/camera/SwitchAnimManager;

    const/high16 v2, 0x44fa0000    # 2000.0f

    invoke-direct {v1, v2}, Lcom/android/camera/SwitchAnimManager;-><init>(F)V

    iput-object v1, p0, Lcom/android/camera/CameraScreenNail;->mGaussianPreviewManager:Lcom/android/camera/SwitchAnimManager;

    .line 11
    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 12
    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mDynamicSkipFrame:I

    .line 13
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/camera/CameraScreenNail;->mFrameAvailableNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    iput-object p1, p0, Lcom/android/camera/CameraScreenNail;->mNailListener:Lcom/android/camera/CameraScreenNail$NailListener;

    .line 15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/CameraScreenNail;->mRequestRenderListeners:Ljava/util/List;

    .line 16
    invoke-virtual {p0, p2}, Lcom/android/camera/CameraScreenNail;->addRequestListener(Lcom/android/camera/CameraScreenNail$RequestRenderListener;)V

    return-void
.end method

.method private copyExternalPreviewTexture(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;Lcom/android/camera/effect/FrameBuffer;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p2}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v1

    .line 3
    invoke-interface {p1, p3}, Lcom/android/gallery3d/ui/GLCanvas;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    .line 4
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 5
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p3

    int-to-float v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    int-to-float v4, v1

    div-float/2addr v4, v3

    invoke-virtual {p3, v2, v4}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    .line 6
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p3

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {p3, v2, v4, v2}, Lcom/android/camera/effect/GLCanvasState;->scale(FFF)V

    .line 7
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p3

    neg-int v2, v0

    int-to-float v2, v2

    div-float/2addr v2, v3

    neg-int v4, v1

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {p3, v2, v4}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    .line 8
    new-instance p3, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p3, p2, v2}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)V

    invoke-interface {p1, p3}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 9
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    .line 10
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->endBindFrameBuffer()V

    return-void
.end method

.method private copyPreviewTexture(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;Lcom/android/camera/effect/FrameBuffer;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p2}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    invoke-virtual {v2, v3}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 4
    iget-object v2, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    invoke-virtual {p0, v2}, Lcom/android/camera/SurfaceTextureScreenNail;->updateTransformMatrix([F)V

    const/4 v2, 0x0

    if-nez p3, :cond_0

    .line 5
    new-instance p3, Lcom/android/camera/effect/FrameBuffer;

    invoke-direct {p3, p1, p2, v2}, Lcom/android/camera/effect/FrameBuffer;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;I)V

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExternalFrameProcessor:Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;

    .line 7
    iget-object v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExternalFrameRect:Landroid/graphics/Rect;

    if-eqz p2, :cond_1

    if-eqz v3, :cond_1

    .line 8
    invoke-interface {p2}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->isNeedCopyPreviewFromExternal()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9
    invoke-interface {p1, p3}, Lcom/android/gallery3d/ui/GLCanvas;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    const/4 v4, 0x1

    .line 10
    invoke-interface {p2, v3, v0, v1, v4}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->onDrawFrame(Landroid/graphics/Rect;IIZ)Z

    move-result p2

    .line 11
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->endBindFrameBuffer()V

    goto :goto_0

    :cond_1
    move p2, v2

    :goto_0
    if-nez p2, :cond_2

    .line 12
    invoke-interface {p1, p3}, Lcom/android/gallery3d/ui/GLCanvas;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    .line 13
    new-instance p2, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v4, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p2, v3, v4, v5}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Lcom/android/gallery3d/ui/ExtTexture;[FLandroid/graphics/Rect;)V

    invoke-interface {p1, p2}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 14
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->endBindFrameBuffer()V

    .line 15
    invoke-interface {p1, p3}, Lcom/android/gallery3d/ui/GLCanvas;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    .line 16
    new-instance p2, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object p3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v3, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p2, p3, v3, v4}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Lcom/android/gallery3d/ui/ExtTexture;[FLandroid/graphics/Rect;)V

    invoke-interface {p1, p2}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 17
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->endBindFrameBuffer()V

    :cond_2
    return-void
.end method

.method private doReadPixels(Lcom/android/gallery3d/ui/GLCanvas;IIZ)V
    .locals 16

    move-object/from16 v6, p0

    .line 1
    iget v0, v6, Lcom/android/camera/CameraScreenNail;->mReadPixelsType:I

    const/4 v7, 0x0

    const-string v8, "draw: state=STATE_READ_PIXELS mReadPixelsNum="

    const/4 v9, 0x1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v4, 0x1

    .line 2
    iget-object v0, v6, Lcom/android/camera/CameraScreenNail;->mNailListener:Lcom/android/camera/CameraScreenNail$NailListener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$NailListener;->getOrientation()I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/CameraScreenNail;->readPreviewPixels(Lcom/android/gallery3d/ui/GLCanvas;IIZI)[B

    move-result-object v11

    .line 3
    iget v0, v6, Lcom/android/camera/CameraScreenNail;->mReadPixelsNum:I

    sub-int/2addr v0, v9

    iput v0, v6, Lcom/android/camera/CameraScreenNail;->mReadPixelsNum:I

    .line 4
    sget-object v0, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Lcom/android/camera/CameraScreenNail;->mReadPixelsNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget v0, v6, Lcom/android/camera/CameraScreenNail;->mReadPixelsNum:I

    if-ge v0, v9, :cond_0

    .line 6
    iput v7, v6, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 7
    :cond_0
    iget-object v10, v6, Lcom/android/camera/CameraScreenNail;->mNailListener:Lcom/android/camera/CameraScreenNail$NailListener;

    iget v14, v6, Lcom/android/camera/CameraScreenNail;->mReadPixelsType:I

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v15, p4

    invoke-interface/range {v10 .. v15}, Lcom/android/camera/CameraScreenNail$NailListener;->onPreviewPixelsRead([BIIIZ)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, v6, Lcom/android/camera/SurfaceTextureScreenNail;->mCaptureAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    if-eqz v0, :cond_3

    .line 9
    iget v2, v6, Lcom/android/camera/SurfaceTextureScreenNail;->mReadPixelsWidth:I

    iget v3, v6, Lcom/android/camera/SurfaceTextureScreenNail;->mReadPixelsHeight:I

    const/4 v4, 0x0

    iget-object v0, v6, Lcom/android/camera/CameraScreenNail;->mNailListener:Lcom/android/camera/CameraScreenNail$NailListener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$NailListener;->getOrientation()I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/CameraScreenNail;->readPreviewPixels(Lcom/android/gallery3d/ui/GLCanvas;IIZI)[B

    move-result-object v11

    .line 10
    iget v0, v6, Lcom/android/camera/CameraScreenNail;->mReadPixelsNum:I

    sub-int/2addr v0, v9

    iput v0, v6, Lcom/android/camera/CameraScreenNail;->mReadPixelsNum:I

    .line 11
    sget-object v0, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Lcom/android/camera/CameraScreenNail;->mReadPixelsNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget v0, v6, Lcom/android/camera/CameraScreenNail;->mReadPixelsNum:I

    if-ge v0, v9, :cond_2

    .line 13
    iput v7, v6, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 14
    :cond_2
    iget-object v10, v6, Lcom/android/camera/CameraScreenNail;->mNailListener:Lcom/android/camera/CameraScreenNail$NailListener;

    iget v12, v6, Lcom/android/camera/SurfaceTextureScreenNail;->mReadPixelsWidth:I

    iget v13, v6, Lcom/android/camera/SurfaceTextureScreenNail;->mReadPixelsHeight:I

    iget v14, v6, Lcom/android/camera/CameraScreenNail;->mReadPixelsType:I

    move/from16 v15, p4

    invoke-interface/range {v10 .. v15}, Lcom/android/camera/CameraScreenNail$NailListener;->onPreviewPixelsRead([BIIIZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method private getFinalSkipFrame()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mDynamicSkipFrame:I

    invoke-static {}, Lcom/android/camera/CameraSettings;->getSkipFrameNumber()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private postFrame()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mNailListener:Lcom/android/camera/CameraScreenNail$NailListener;

    invoke-interface {v0}, Lcom/android/camera/CameraScreenNail$NailListener;->onFrameDrawn()V

    return-void
.end method

.method private postRequestListener()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mRequestRenderListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraScreenNail$RequestRenderListener;

    .line 3
    invoke-interface {v2}, Lcom/android/camera/CameraScreenNail$RequestRenderListener;->requestRender()V

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private readPreviewPixels(Lcom/android/gallery3d/ui/GLCanvas;IIZI)[B
    .locals 8

    .line 1
    sget-object v0, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readPreviewPixels start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    mul-int v0, p2, p3

    mul-int/lit8 v0, v0, 0x4

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 4
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    invoke-virtual {p0, v1}, Lcom/android/camera/SurfaceTextureScreenNail;->updateTransformMatrix([F)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_4

    .line 5
    iget-object p4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mFullCaptureAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureWidth()I

    move-result p4

    if-ne p4, p2, :cond_0

    iget-object p4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mFullCaptureAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 6
    invoke-virtual {p4}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureHeight()I

    move-result p4

    if-eq p4, p3, :cond_3

    .line 7
    :cond_0
    iget-object p4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mFullCaptureAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    if-eqz p4, :cond_1

    new-array v3, v1, [I

    .line 8
    invoke-virtual {p4}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result p4

    aput p4, v3, v2

    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 9
    :cond_1
    iget-object p4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mFullCaptureAnimFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    if-eqz p4, :cond_2

    .line 10
    invoke-virtual {p4}, Lcom/android/camera/effect/FrameBuffer;->delete()V

    .line 11
    :cond_2
    new-instance p4, Lcom/android/gallery3d/ui/RawTexture;

    invoke-direct {p4, p2, p3, v1}, Lcom/android/gallery3d/ui/RawTexture;-><init>(IIZ)V

    iput-object p4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mFullCaptureAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 12
    new-instance p4, Lcom/android/camera/effect/FrameBuffer;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mFullCaptureAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-direct {p4, v3, v4, v2}, Lcom/android/camera/effect/FrameBuffer;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;I)V

    iput-object p4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mFullCaptureAnimFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 13
    :cond_3
    iget-object p4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mFullCaptureAnimFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-interface {p1, p4}, Lcom/android/gallery3d/ui/GLCanvas;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    move p4, p2

    move v3, p3

    goto :goto_0

    .line 14
    :cond_4
    iget-object p4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCaptureAnimFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    if-nez p4, :cond_5

    .line 15
    new-instance p4, Lcom/android/camera/effect/FrameBuffer;

    iget-object v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCaptureAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-direct {p4, p1, v3, v2}, Lcom/android/camera/effect/FrameBuffer;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;I)V

    iput-object p4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCaptureAnimFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 16
    :cond_5
    iget-object p4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCaptureAnimFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {p4}, Lcom/android/camera/effect/FrameBuffer;->getWidth()I

    move-result p4

    .line 17
    iget-object v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCaptureAnimFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v3}, Lcom/android/camera/effect/FrameBuffer;->getHeight()I

    move-result v3

    .line 18
    iget-object v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCaptureAnimFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-interface {p1, v4}, Lcom/android/gallery3d/ui/GLCanvas;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    .line 19
    sget-object v4, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readPreviewPixels beginBindFrameBuffer:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mCaptureAnimFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v6}, Lcom/android/camera/effect/FrameBuffer;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :goto_0
    sget-object v4, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "before canvas draw framebuffer("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ","

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") Size:("

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ")"

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v4, p4}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    new-instance p4, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-direct {p4, v1}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Z)V

    .line 22
    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mMirrorNum:I

    if-lez v3, :cond_6

    .line 23
    iget-object v3, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    invoke-virtual {p0, v3, p5}, Lcom/android/camera/SurfaceTextureScreenNail;->updateTransformMatrixForMirror([FI)V

    .line 24
    iget p5, p0, Lcom/android/camera/CameraScreenNail;->mMirrorNum:I

    sub-int/2addr p5, v1

    iput p5, p0, Lcom/android/camera/CameraScreenNail;->mMirrorNum:I

    .line 25
    :cond_6
    iget-object p5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v3, p0, Lcom/android/camera/CameraScreenNail;->mTextureTransformMatrix:[F

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v2, v2, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p4, p5, v3, v4}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->init(Lcom/android/gallery3d/ui/ExtTexture;[FLandroid/graphics/Rect;)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    move-result-object p4

    invoke-interface {p1, p4}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 26
    sget-object p4, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string p5, "after canvas draw"

    invoke-static {p4, p5}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget p4, p0, Lcom/android/camera/CameraScreenNail;->mFilmCropNum:I

    if-lez p4, :cond_7

    .line 28
    move-object p4, p1

    check-cast p4, Lcom/android/gallery3d/ui/BaseGLCanvas;

    invoke-static {p4, p2, p3}, Lcom/android/camera/Util;->drawMiMovieBlackBridgeEGL(Lcom/android/gallery3d/ui/BaseGLCanvas;II)V

    .line 29
    iget p4, p0, Lcom/android/camera/CameraScreenNail;->mFilmCropNum:I

    sub-int/2addr p4, v1

    iput p4, p0, Lcom/android/camera/CameraScreenNail;->mFilmCropNum:I

    .line 30
    sget-object p4, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string p5, "after drawMiMovieBlackBridgeEGL"

    invoke-static {p4, p5}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move v3, p2

    move v4, p3

    move-object v7, v0

    .line 31
    invoke-static/range {v1 .. v7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 32
    sget-object p2, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string p3, "glReadPixels"

    invoke-static {p2, p3}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->endBindFrameBuffer()V

    .line 34
    sget-object p1, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "readPreviewPixels end"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method

.method private renderBlurTexture(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;)V
    .locals 7

    .line 2
    invoke-virtual {p2}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result v4

    .line 3
    invoke-virtual {p2}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result v5

    .line 4
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/android/camera/effect/FrameBuffer;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/camera/effect/FrameBuffer;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;I)V

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 6
    :cond_0
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->prepareBlurRenders()V

    .line 7
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    .line 8
    new-instance v6, Lcom/android/camera/effect/draw_mode/DrawBlurTexAttribute;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/draw_mode/DrawBlurTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    invoke-interface {p1, v6}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 9
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->endBindFrameBuffer()V

    return-void
.end method


# virtual methods
.method public acquireSurfaceTexture()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string v1, "acquireSurfaceTexture"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    .line 4
    iput-boolean v1, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameDrawn:Z

    .line 5
    iput v1, p0, Lcom/android/camera/CameraScreenNail;->mFrameNumber:I

    .line 6
    iput v1, p0, Lcom/android/camera/CameraScreenNail;->mReadPixelsNum:I

    .line 7
    iput-boolean v1, p0, Lcom/android/camera/CameraScreenNail;->mDisableSwitchAnimationOnce:Z

    .line 8
    invoke-super {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->acquireSurfaceTexture()V

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addRequestListener(Lcom/android/camera/CameraScreenNail$RequestRenderListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mRequestRenderListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mRequestRenderListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_1
    :goto_0
    sget-object p1, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "param is null or already exists, returning."

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public animateCapture(I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    sget-object v0, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animateCapture: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/CaptureAnimManager;->animateHoldAndSlide()V

    .line 5
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    const/16 v0, 0xb

    .line 6
    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 7
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateCaptureWithDraw(I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    sget-object v0, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animateCapture: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/CaptureAnimManager;->animateHoldAndSlide()V

    .line 5
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    const/16 v0, 0x28

    .line 6
    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 7
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateHold(I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    sget-object v0, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animateHold: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/CaptureAnimManager;->animateHold()V

    .line 5
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    const/16 v0, 0xb

    .line 6
    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 7
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateModuleCopyTexture(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mFrameAvailableNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/16 p1, 0x25

    .line 4
    iput p1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 5
    sget-object p1, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "state=MODULE_COPY_TEXTURE_WITH_ALPHA"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/16 p1, 0x1f

    .line 6
    iput p1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 7
    sget-object p1, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "state=MODULE_COPY_TEXTURE"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public animateSlide()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    .line 3
    sget-object v1, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot animateSlide outside of animateCapture! Animation state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    invoke-virtual {v1}, Lcom/android/camera/CaptureAnimManager;->animateSlide()V

    .line 5
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public animateSwitchCameraBefore()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "switchBefore: state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v2, 0x16

    if-ne v1, v2, :cond_0

    const/16 v1, 0x17

    .line 4
    iput v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 5
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/SwitchAnimManager;->startAnimation(Z)V

    .line 6
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    .line 7
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public animateSwitchCopyTexture()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    const/16 v1, 0x15

    .line 3
    iput v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 4
    sget-object v1, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "state=SWITCH_COPY_TEXTURE"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearAnimation()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 3
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/SwitchAnimManager;->clearAnimation()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/CaptureAnimManager;->clearAnimation()V

    .line 5
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mModuleAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/SwitchAnimManager;->clearAnimation()V

    .line 6
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mGaussianPreviewManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/SwitchAnimManager;->clearAnimation()V

    .line 7
    sget-object v0, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string v1, "clearAnimation"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public directDraw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    return-void
.end method

.method public disableSwitchAnimationOnce()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mDisableSwitchAnimationOnce:Z

    return-void
.end method

.method public doPreviewGaussianForever()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string v1, "doPreviewGaussianForever: start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mFrameAvailableNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    sget-object v1, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string v2, "doPreviewGaussianForever: not start preview return!!!"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    monitor-exit v0

    return-void

    :cond_1
    const/16 v1, 0x26

    .line 7
    iput v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 8
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    sget-object v0, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string v1, "doPreviewGaussianForever: end"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 11
    :cond_2
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string v2, "doPreviewGaussianForever: not start preview return!!!"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 19

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    .line 1
    iget-object v14, v9, Lcom/android/camera/SurfaceTextureScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 2
    :try_start_0
    sget-object v1, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CameraScreenNail draw start mAnimState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-boolean v1, v9, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 4
    iput-boolean v2, v9, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    .line 5
    :cond_0
    iget-boolean v1, v9, Lcom/android/camera/CameraScreenNail;->mIsDrawBlackFrame:Z

    if-eqz v1, :cond_1

    .line 6
    sget-object v1, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string v2, "draw: skip frame..."

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance v1, Lcom/android/camera/effect/draw_mode/DrawFillRectAttribute;

    invoke-static/range {p2 .. p5}, Lcom/android/camera/dualvideo/render/RectUtil;->createLTWH(IIII)Landroid/graphics/Rect;

    move-result-object v2

    const/high16 v3, -0x1000000

    invoke-direct {v1, v2, v3}, Lcom/android/camera/effect/draw_mode/DrawFillRectAttribute;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 8
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    .line 9
    monitor-exit v14

    return-void

    .line 10
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v8

    const/4 v15, 0x0

    if-eqz v8, :cond_3

    .line 11
    iget-boolean v1, v9, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    if-nez v1, :cond_2

    iget v1, v9, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v15

    goto :goto_1

    .line 12
    :cond_3
    :goto_0
    sget-object v1, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "draw: firstFrame="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v9, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " surface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_4

    .line 13
    invoke-virtual {v8}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    :cond_4
    move v1, v2

    :goto_1
    if-eqz v1, :cond_5

    .line 14
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v3, 0x1ae

    invoke-virtual {v1, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    if-nez v1, :cond_5

    .line 15
    monitor-exit v14

    return-void

    .line 16
    :cond_5
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->clearBuffer()V

    .line 17
    iget v1, v9, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v7, 0x21

    const/16 v6, 0x27

    const/16 v5, 0xc

    if-eqz v1, :cond_d

    const/16 v3, 0xb

    if-eq v1, v3, :cond_a

    const/16 v4, 0x1f

    if-eq v1, v4, :cond_6

    const/16 v4, 0x28

    if-eq v1, v4, :cond_a

    const/16 v3, 0x15

    const/16 v4, 0x16

    if-eq v1, v3, :cond_8

    if-eq v1, v4, :cond_9

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    :goto_2
    move v1, v5

    move v15, v7

    :goto_3
    const/16 v2, 0x29

    goto/16 :goto_a

    .line 18
    :pswitch_0
    iget-object v1, v9, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    iget-object v2, v9, Lcom/android/camera/SurfaceTextureScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-direct {v9, v0, v1, v2}, Lcom/android/camera/CameraScreenNail;->copyPreviewTexture(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;Lcom/android/camera/effect/FrameBuffer;)V

    .line 19
    invoke-virtual/range {p0 .. p5}, Lcom/android/camera/CameraScreenNail;->drawGaussianBitmap(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 20
    iget-object v1, v9, Lcom/android/camera/CameraScreenNail;->mGaussianPreviewManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v1, v10, v11, v12, v13}, Lcom/android/camera/SwitchAnimManager;->setReviewDrawingSize(IIII)V

    .line 21
    sget-object v1, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string v2, "draw: state=STATE_PREVIEW_GUASSIAN_FOREVER"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iput v6, v9, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 23
    iget-object v1, v9, Lcom/android/camera/CameraScreenNail;->mGaussianPreviewManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v1, v15}, Lcom/android/camera/SwitchAnimManager;->startAnimation(Z)V

    .line 24
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    goto :goto_2

    :cond_6
    :pswitch_1
    move v15, v7

    goto/16 :goto_6

    .line 25
    :pswitch_2
    invoke-super/range {p0 .. p5}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 26
    sget-object v1, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string v2, "draw: state=ANIM_READ_LAST_FRAME_GAUSSIAN"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object v1, v9, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    iget-object v2, v9, Lcom/android/camera/SurfaceTextureScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-direct {v9, v0, v1, v2}, Lcom/android/camera/CameraScreenNail;->copyPreviewTexture(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;Lcom/android/camera/effect/FrameBuffer;)V

    .line 28
    invoke-virtual/range {p0 .. p5}, Lcom/android/camera/CameraScreenNail;->drawGaussianBitmap(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 29
    iput v15, v9, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    goto :goto_2

    .line 30
    :pswitch_3
    invoke-super/range {p0 .. p5}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 31
    invoke-direct {v9, v0, v12, v13, v15}, Lcom/android/camera/CameraScreenNail;->doReadPixels(Lcom/android/gallery3d/ui/GLCanvas;IIZ)V

    goto :goto_2

    .line 32
    :pswitch_4
    invoke-super/range {p0 .. p5}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 33
    iget v3, v9, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    iget v4, v9, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    const/16 v17, 0x1

    iget-object v1, v9, Lcom/android/camera/CameraScreenNail;->mNailListener:Lcom/android/camera/CameraScreenNail$NailListener;

    invoke-interface {v1}, Lcom/android/camera/CameraScreenNail$NailListener;->getOrientation()I

    move-result v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/CameraScreenNail;->readPreviewPixels(Lcom/android/gallery3d/ui/GLCanvas;IIZI)[B

    move-result-object v1

    .line 34
    iput v15, v9, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 35
    iget-object v2, v9, Lcom/android/camera/SurfaceTextureScreenNail;->mPreviewSaveListener:Lcom/android/camera/SurfaceTextureScreenNail$PreviewSaveListener;

    if-eqz v2, :cond_7

    .line 36
    iget-object v2, v9, Lcom/android/camera/SurfaceTextureScreenNail;->mPreviewSaveListener:Lcom/android/camera/SurfaceTextureScreenNail$PreviewSaveListener;

    iget v3, v9, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraWidth:I

    iget v4, v9, Lcom/android/camera/SurfaceTextureScreenNail;->mCameraHeight:I

    iget-object v5, v9, Lcom/android/camera/CameraScreenNail;->mNailListener:Lcom/android/camera/CameraScreenNail$NailListener;

    invoke-interface {v5}, Lcom/android/camera/CameraScreenNail$NailListener;->getOrientation()I

    move-result v5

    invoke-interface {v2, v1, v3, v4, v5}, Lcom/android/camera/SurfaceTextureScreenNail$PreviewSaveListener;->save([BIII)V

    goto :goto_4

    .line 37
    :pswitch_5
    invoke-virtual {v8}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 38
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->clearBuffer()V

    goto :goto_4

    .line 39
    :pswitch_6
    invoke-super/range {p0 .. p5}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 40
    invoke-direct {v9, v0, v12, v13, v2}, Lcom/android/camera/CameraScreenNail;->doReadPixels(Lcom/android/gallery3d/ui/GLCanvas;IIZ)V

    :cond_7
    :goto_4
    move v15, v7

    :goto_5
    const/16 v1, 0xc

    goto/16 :goto_3

    .line 41
    :cond_8
    iget-object v1, v9, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    iget-object v2, v9, Lcom/android/camera/SurfaceTextureScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-direct {v9, v0, v1, v2}, Lcom/android/camera/CameraScreenNail;->copyPreviewTexture(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;Lcom/android/camera/effect/FrameBuffer;)V

    .line 42
    iget-object v1, v9, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v1, v10, v11, v12, v13}, Lcom/android/camera/SwitchAnimManager;->setReviewDrawingSize(IIII)V

    .line 43
    iget-object v1, v9, Lcom/android/camera/CameraScreenNail;->mNailListener:Lcom/android/camera/CameraScreenNail$NailListener;

    invoke-interface {v1}, Lcom/android/camera/CameraScreenNail$NailListener;->onPreviewTextureCopied()V

    .line 44
    iput v4, v9, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 45
    sget-object v1, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string v2, "draw: state=SWITCH_DRAW_PREVIEW"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_9
    invoke-virtual {v8}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 47
    iget-object v1, v9, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    iget-object v6, v9, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v16, v6

    move/from16 v6, p5

    move v15, v7

    move-object/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Lcom/android/camera/SwitchAnimManager;->drawPreview(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/gallery3d/ui/RawTexture;)Z

    goto :goto_5

    :cond_a
    move v15, v7

    goto :goto_8

    .line 48
    :goto_6
    iget-object v1, v9, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    iget-object v3, v9, Lcom/android/camera/SurfaceTextureScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-direct {v9, v0, v1, v3}, Lcom/android/camera/CameraScreenNail;->copyPreviewTexture(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;Lcom/android/camera/effect/FrameBuffer;)V

    .line 49
    iget-object v1, v9, Lcom/android/camera/CameraScreenNail;->mModuleAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v1, v10, v11, v12, v13}, Lcom/android/camera/SwitchAnimManager;->setReviewDrawingSize(IIII)V

    .line 50
    sget-object v1, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string v3, "draw: state=MODULE_DRAW_PREVIEW"

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget v1, v9, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v3, 0x25

    if-ne v1, v3, :cond_b

    goto :goto_7

    :cond_b
    const/4 v2, 0x0

    .line 52
    :goto_7
    iput v15, v9, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 53
    iget-object v1, v9, Lcom/android/camera/CameraScreenNail;->mModuleAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v1, v2}, Lcom/android/camera/SwitchAnimManager;->startAnimation(Z)V

    .line 54
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    goto :goto_5

    .line 55
    :goto_8
    invoke-super/range {p0 .. p5}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 56
    iget-object v1, v9, Lcom/android/camera/SurfaceTextureScreenNail;->mCaptureAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    iget-object v2, v9, Lcom/android/camera/SurfaceTextureScreenNail;->mCaptureAnimFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-direct {v9, v0, v1, v2}, Lcom/android/camera/CameraScreenNail;->copyPreviewTexture(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;Lcom/android/camera/effect/FrameBuffer;)V

    .line 57
    iget-object v1, v9, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    invoke-virtual {v1, v10, v11, v12, v13}, Lcom/android/camera/CaptureAnimManager;->startAnimation(IIII)V

    .line 58
    iget v1, v9, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-ne v1, v3, :cond_c

    const/16 v1, 0xc

    .line 59
    iput v1, v9, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v2, 0x29

    goto :goto_9

    :cond_c
    const/16 v1, 0xc

    const/16 v2, 0x29

    .line 60
    iput v2, v9, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 61
    :goto_9
    sget-object v3, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string v4, "draw: state=CAPTURE_RUNNING"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_d
    move v1, v5

    move v15, v7

    const/16 v2, 0x29

    .line 62
    invoke-super/range {p0 .. p5}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 63
    :goto_a
    iget v3, v9, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v4, 0x17

    const/16 v7, 0x19

    if-eq v3, v4, :cond_1a

    iget v3, v9, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v4, 0x18

    if-eq v3, v4, :cond_1a

    iget v3, v9, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-ne v3, v7, :cond_e

    goto/16 :goto_f

    .line 64
    :cond_e
    iget v3, v9, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-eq v3, v1, :cond_17

    iget v1, v9, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-ne v1, v2, :cond_f

    goto/16 :goto_e

    .line 65
    :cond_f
    iget v1, v9, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v7, 0x23

    if-eq v1, v15, :cond_14

    iget v1, v9, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v2, 0x22

    if-eq v1, v2, :cond_14

    iget v1, v9, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-ne v1, v7, :cond_10

    goto :goto_c

    .line 66
    :cond_10
    iget v1, v9, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v2, 0x27

    if-ne v1, v2, :cond_12

    .line 67
    invoke-virtual {v8}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 68
    iget-object v1, v9, Lcom/android/camera/CameraScreenNail;->mGaussianPreviewManager:Lcom/android/camera/SwitchAnimManager;

    iget-object v8, v9, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/camera/SwitchAnimManager;->drawAnimation(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 69
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    goto/16 :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 70
    iput v0, v9, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    goto/16 :goto_12

    .line 71
    :cond_12
    iget v1, v9, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_1e

    .line 72
    invoke-virtual {v8}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 73
    iget-object v1, v9, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    iget-object v2, v9, Lcom/android/camera/SurfaceTextureScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-direct {v9, v0, v1, v2}, Lcom/android/camera/CameraScreenNail;->copyPreviewTexture(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;Lcom/android/camera/effect/FrameBuffer;)V

    const/4 v15, 0x0

    :goto_b
    const/16 v1, 0x8

    if-ge v15, v1, :cond_13

    .line 74
    invoke-virtual/range {p0 .. p1}, Lcom/android/camera/CameraScreenNail;->renderBlurTexture(Lcom/android/gallery3d/ui/GLCanvas;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_b

    .line 75
    :cond_13
    invoke-static/range {p2 .. p5}, Lcom/android/camera/dualvideo/render/RectUtil;->createLTWH(IIII)Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v9, v0, v1, v2}, Lcom/android/camera/CameraScreenNail;->drawBlurTexture(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;[F)V

    .line 76
    invoke-super/range {p0 .. p5}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto/16 :goto_12

    .line 77
    :cond_14
    :goto_c
    invoke-virtual {v8}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 78
    iget-object v1, v9, Lcom/android/camera/CameraScreenNail;->mModuleAnimManager:Lcom/android/camera/SwitchAnimManager;

    iget-object v8, v9, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move v15, v7

    move-object/from16 v7, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/camera/SwitchAnimManager;->drawAnimation(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 79
    iget v1, v9, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-eq v1, v15, :cond_15

    goto :goto_d

    :cond_15
    const/4 v1, 0x0

    .line 80
    iput v1, v9, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 81
    invoke-super/range {p0 .. p5}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto/16 :goto_12

    .line 82
    :cond_16
    :goto_d
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    goto/16 :goto_12

    .line 83
    :cond_17
    :goto_e
    iget v1, v9, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-ne v1, v2, :cond_18

    .line 84
    invoke-super/range {p0 .. p5}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 85
    :cond_18
    iget-object v1, v9, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    iget-object v2, v9, Lcom/android/camera/SurfaceTextureScreenNail;->mCaptureAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/CaptureAnimManager;->drawAnimation(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 86
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    goto :goto_12

    :cond_19
    const/4 v1, 0x0

    .line 87
    iput v1, v9, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 88
    iget-object v1, v9, Lcom/android/camera/CameraScreenNail;->mCaptureAnimManager:Lcom/android/camera/CaptureAnimManager;

    iget-object v2, v9, Lcom/android/camera/SurfaceTextureScreenNail;->mCaptureAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/CaptureAnimManager;->drawPreview(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;)V

    .line 89
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    .line 90
    sget-object v0, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string v1, "draw: mCaptureAnimManager.drawAnimation end"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 91
    :cond_1a
    :goto_f
    invoke-virtual {v8}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 92
    iget-boolean v1, v9, Lcom/android/camera/CameraScreenNail;->mDisableSwitchAnimationOnce:Z

    if-eqz v1, :cond_1b

    .line 93
    iget-object v1, v9, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    iget-object v8, v9, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move v15, v7

    move-object v7, v8

    invoke-virtual/range {v1 .. v7}, Lcom/android/camera/SwitchAnimManager;->drawPreview(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/gallery3d/ui/RawTexture;)Z

    const/4 v1, 0x0

    goto :goto_10

    :cond_1b
    move v15, v7

    .line 94
    iget-object v1, v9, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    iget-object v8, v9, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/camera/SwitchAnimManager;->drawAnimation(Lcom/android/gallery3d/ui/GLCanvas;IIIILcom/android/camera/CameraScreenNail;Lcom/android/gallery3d/ui/RawTexture;)Z

    move-result v1

    :goto_10
    if-nez v1, :cond_1d

    .line 95
    iget v1, v9, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-eq v1, v15, :cond_1c

    goto :goto_11

    :cond_1c
    const/4 v1, 0x0

    .line 96
    iput v1, v9, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 97
    iput-boolean v1, v9, Lcom/android/camera/CameraScreenNail;->mDisableSwitchAnimationOnce:Z

    .line 98
    invoke-super/range {p0 .. p5}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_12

    .line 99
    :cond_1d
    :goto_11
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    .line 100
    :cond_1e
    :goto_12
    sget-object v0, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string v1, "CameraScreenNail draw end"

    invoke-static {v0, v1}, Lcom/android/camera/effect/framework/gles/OpenGlUtils;->checkGlErrorAndWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    monitor-exit v14

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x24
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public drawBlackFrame(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/CameraScreenNail;->mIsDrawBlackFrame:Z

    return-void
.end method

.method public drawBlurTexture(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;[F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string p2, "drawBlurTexture fail, mAnimTexture is null"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    new-instance v1, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-direct {v1, v0, p2, p3}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;[F)V

    invoke-interface {p1, v1}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    return-void
.end method

.method public drawGaussianBitmap(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    .line 2
    iget-object p4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {p4}, Lcom/android/gallery3d/ui/BasicTexture;->getWidth()I

    move-result p4

    .line 3
    iget-object p5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {p5}, Lcom/android/gallery3d/ui/BasicTexture;->getHeight()I

    move-result p5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/camera/CameraScreenNail;->renderBlurTexture(Lcom/android/gallery3d/ui/GLCanvas;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    mul-int v1, p4, p5

    mul-int/lit8 v1, v1, 0x4

    .line 6
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 7
    iget-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    if-nez v1, :cond_1

    .line 8
    new-instance v1, Lcom/android/camera/effect/FrameBuffer;

    iget-object v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-direct {v1, p1, v2, v0}, Lcom/android/camera/effect/FrameBuffer;-><init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;I)V

    iput-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-interface {p1, v1}, Lcom/android/gallery3d/ui/GLCanvas;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    .line 10
    new-instance v1, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget-object v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0, v0, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v1, v2, v3}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/Rect;)V

    invoke-interface {p1, v1}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    move v2, p4

    move v3, p5

    move-object v6, v7

    .line 11
    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 12
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->endBindFrameBuffer()V

    .line 13
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 14
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 15
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 16
    iput-object p4, p0, Lcom/android/camera/CameraScreenNail;->mLastFrameGaussianBitmap:Landroid/graphics/Bitmap;

    .line 17
    sget-object p1, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "readLastFrameGaussian end... bitmap = "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/android/camera/CameraScreenNail;->mLastFrameGaussianBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p5, ", cost time = "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    invoke-virtual {p4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "ms"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 19
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getDisplayRect()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mDisplayRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getExternalFrameProcessor()Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExternalFrameProcessor:Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;

    return-object v0
.end method

.method public getExternalFrameRect()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExternalFrameRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFrameAvailableFlag()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mFrameAvailableNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public getLastFrameGaussianBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mLastFrameGaussianBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPreviewSaveListener()Lcom/android/camera/SurfaceTextureScreenNail$PreviewSaveListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mPreviewSaveListener:Lcom/android/camera/SurfaceTextureScreenNail$PreviewSaveListener;

    return-object v0
.end method

.method public getRenderRect()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderLayoutRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isAnimationCapture()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAnimationGaussian()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v1, 0x24

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAnimationRunning()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isExternalFrameFit()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExternalFrameNeedFit:Z

    return v0
.end method

.method public noDraw()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyFrameAvailable(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mFrameAvailableNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mFrameAvailableNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mNailListener:Lcom/android/camera/CameraScreenNail$NailListener;

    invoke-interface {v0, p1}, Lcom/android/camera/CameraScreenNail$NailListener;->onFrameAvailable(I)V

    return-void
.end method

.method public notifyFrameDrawn()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameDrawn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameDrawn:Z

    .line 3
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->postFrame()V

    :cond_0
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 2
    sget-object p1, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onFrameAvailable: surface changed"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    const/4 v1, 0x4

    if-nez v0, :cond_3

    .line 5
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/performance/PerformanceManager;->isProfilingStartPreview()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v0

    const-string/jumbo v3, "startPreview2firstFrame"

    invoke-virtual {v0, v3}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    .line 7
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/performance/PerformanceManager;->setProfilingStartPreview(Z)V

    .line 8
    :cond_1
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mFrameNumber:I

    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->getFinalSkipFrame()I

    move-result v3

    const/4 v4, 0x1

    if-ge v0, v3, :cond_2

    .line 9
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mFrameNumber:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mFrameNumber:I

    .line 10
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    .line 11
    sget-object v0, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFrameAvailable: skipFrameNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/CameraScreenNail;->mFrameNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    monitor-exit p1

    return-void

    .line 13
    :cond_2
    iput v2, p0, Lcom/android/camera/CameraScreenNail;->mDynamicSkipFrame:I

    .line 14
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/android/camera/performance/Action$Event;

    sget-object v5, Lcom/android/camera/performance/Action$Event;->SWITCH_LENS:Lcom/android/camera/performance/Action$Event;

    aput-object v5, v3, v2

    sget-object v5, Lcom/android/camera/performance/Action$Event;->SWITCH_MODULE:Lcom/android/camera/performance/Action$Event;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Lcom/android/camera/performance/PerformanceManager;->stopEvent([Lcom/android/camera/performance/Action$Event;)J

    .line 15
    sget-object v0, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onFrameAvailable first frame arrived."

    invoke-static {v1, v0, v3}, LOooO0O0/OooO0O0/OooO0OO/OooO00o;->OooO00o(ILjava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mFrameAvailableNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 17
    invoke-virtual {p0, v4}, Lcom/android/camera/CameraScreenNail;->notifyFrameAvailable(I)V

    .line 18
    iput-boolean v4, p0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    .line 19
    iput-boolean v4, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    .line 20
    iput-boolean v2, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameDrawn:Z

    .line 21
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    if-eqz v0, :cond_6

    .line 22
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v2, 0x18

    if-ne v0, v2, :cond_4

    const/16 v0, 0x19

    .line 23
    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 24
    sget-object v0, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onFrameAvailable SWITCH_WAITING_FIRST_FRAME->SWITCH_RESUME"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/SwitchAnimManager;->startResume()V

    goto :goto_0

    .line 26
    :cond_4
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v2, 0x22

    if-ne v0, v2, :cond_5

    const/16 v0, 0x23

    .line 27
    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 28
    sget-object v0, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onFrameAvailable MODULE_WAITING_FIRST_FRAME->MODULE_RESUME"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mModuleAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/SwitchAnimManager;->startResume()V

    .line 30
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    .line 31
    invoke-virtual {p0}, Lcom/android/camera/CameraScreenNail;->notifyFrameDrawn()V

    .line 32
    invoke-virtual {p0, v1}, Lcom/android/camera/CameraScreenNail;->notifyFrameAvailable(I)V

    goto :goto_1

    .line 33
    :cond_6
    sget-object v0, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onFrameAvailable visible = false"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :goto_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public readLastFrameGaussian()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readLastFrameGaussian: state=ANIM_READ_LAST_FRAME_GAUSSIAN start"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mFrameAvailableNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    sget-object v1, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "readLastFrameGaussian: not start preview return!!!"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    monitor-exit v0

    return-void

    :cond_1
    const/16 v1, 0x24

    .line 7
    iput v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 8
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    sget-object v0, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "readLastFrameGaussian: state=ANIM_READ_LAST_FRAME_GAUSSIAN end"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 11
    :cond_2
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "readLastFrameGaussian: not start preview return!!!"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public recycle()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/CameraScreenNail;->mVisible:Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public releaseSurfaceTexture()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-super {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->releaseSurfaceTexture()V

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 4
    sget-object v2, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "release: state=NONE"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iput-boolean v1, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    .line 6
    iput-boolean v1, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameDrawn:Z

    .line 7
    iput v1, p0, Lcom/android/camera/CameraScreenNail;->mFrameNumber:I

    .line 8
    iput v1, p0, Lcom/android/camera/CameraScreenNail;->mReadPixelsNum:I

    .line 9
    iput-boolean v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mModuleSwitching:Z

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeAllRequestListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mRequestRenderListeners:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mRequestRenderListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeRequestListener(Lcom/android/camera/CameraScreenNail$RequestRenderListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mRequestRenderListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mRequestRenderListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_1
    :goto_0
    sget-object p1, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "param is null or not exists, returning."

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public renderBlurTexture(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/CameraScreenNail;->renderBlurTexture(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/RawTexture;)V

    return-void
.end method

.method public requestAwaken()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 4
    iput-boolean v1, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    .line 5
    iput-boolean v1, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameDrawn:Z

    .line 6
    iput v1, p0, Lcom/android/camera/CameraScreenNail;->mFrameNumber:I

    .line 7
    iput v1, p0, Lcom/android/camera/CameraScreenNail;->mReadPixelsNum:I

    .line 8
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestChangeWCGConfig()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CameraScreenNail;->mRequestRenderListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraScreenNail$RequestRenderListener;

    .line 3
    invoke-interface {v2}, Lcom/android/camera/CameraScreenNail$RequestRenderListener;->requestChangeWCGConfig()V

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestFullReadPixels()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestFullReadPixels state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v2, 0xf

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-eq v1, v2, :cond_0

    const/16 v1, 0xc

    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-eq v1, v3, :cond_0

    const/16 v1, 0xb

    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-eq v1, v3, :cond_0

    const/16 v1, 0x29

    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-eq v1, v3, :cond_0

    const/16 v1, 0x28

    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-ne v1, v3, :cond_1

    .line 4
    :cond_0
    iput v2, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 5
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    .line 6
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestFullReadPixelsWithParams(ZZ)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mFilmCropNum:I

    if-eqz p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mFilmCropNum:I

    .line 2
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mMirrorNum:I

    if-eqz p2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iput v0, p0, Lcom/android/camera/CameraScreenNail;->mMirrorNum:I

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/CameraScreenNail;->requestFullReadPixels()V

    .line 4
    sget-object v0, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestFullReadPixelsWithParams isFilm:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " needMirror:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public requestHibernate()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-nez v1, :cond_0

    const/16 v1, 0xe

    .line 3
    iput v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 4
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestReadPixels()V
    .locals 4

    .line 10
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestReadPixels state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/android/camera/Util;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v2, 0xd

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-eq v1, v2, :cond_0

    const/16 v1, 0xc

    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-eq v1, v3, :cond_0

    const/16 v1, 0xb

    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-eq v1, v3, :cond_0

    const/16 v1, 0x10

    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-ne v1, v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 13
    iput v1, p0, Lcom/android/camera/CameraScreenNail;->mReadPixelsType:I

    .line 14
    iput v2, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 15
    iget v2, p0, Lcom/android/camera/CameraScreenNail;->mReadPixelsNum:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/camera/CameraScreenNail;->mReadPixelsNum:I

    .line 16
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    .line 17
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestReadPixels(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestReadPixels state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , ReadPixelsType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v2, 0xd

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-eq v1, v2, :cond_0

    const/16 v1, 0xc

    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-eq v1, v3, :cond_0

    const/16 v1, 0xb

    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-eq v1, v3, :cond_0

    const/16 v1, 0x10

    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-ne v1, v3, :cond_2

    .line 4
    :cond_0
    iput p1, p0, Lcom/android/camera/CameraScreenNail;->mReadPixelsType:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 5
    iget p1, p0, Lcom/android/camera/CameraScreenNail;->mFilmCropNum:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/camera/CameraScreenNail;->mFilmCropNum:I

    .line 6
    :cond_1
    iput v2, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 7
    iget p1, p0, Lcom/android/camera/CameraScreenNail;->mReadPixelsNum:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/camera/CameraScreenNail;->mReadPixelsNum:I

    .line 8
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    .line 9
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public requestReadPixelsNoAnimation()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestReadPixelsNoAnimation state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v2, 0x10

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v3, 0xd

    if-eq v1, v3, :cond_0

    const/16 v1, 0xc

    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-eq v1, v3, :cond_0

    const/16 v1, 0xb

    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    if-ne v2, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 4
    iput v1, p0, Lcom/android/camera/CameraScreenNail;->mReadPixelsType:I

    .line 5
    iput v2, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 6
    iget v2, p0, Lcom/android/camera/CameraScreenNail;->mReadPixelsNum:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/camera/CameraScreenNail;->mReadPixelsNum:I

    .line 7
    invoke-direct {p0}, Lcom/android/camera/CameraScreenNail;->postRequestListener()V

    .line 8
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetFrameAvailableFlag()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mFrameAvailableNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameArrived:Z

    .line 4
    iput-boolean v1, p0, Lcom/android/camera/CameraScreenNail;->mFirstFrameDrawn:Z

    .line 5
    iput v1, p0, Lcom/android/camera/CameraScreenNail;->mFrameNumber:I

    .line 6
    iput v1, p0, Lcom/android/camera/CameraScreenNail;->mReadPixelsNum:I

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDynamicSkipFrame(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/CameraScreenNail;->mDynamicSkipFrame:I

    return-void
.end method

.method public setExternalFrameFit(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExternalFrameNeedFit:Z

    return-void
.end method

.method public setExternalFrameProcessor(Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExternalFrameProcessor:Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;

    .line 2
    iget-object p1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExternalFrameProcessor:Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/CameraScreenNail;->setExternalFrameRect(Landroid/graphics/Rect;)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExternalFrameNeedFit:Z

    :cond_0
    return-void
.end method

.method public setExternalFrameRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExternalFrameRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setPreviewFrameLayoutSize(II)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v3, "setPreviewFrameLayoutSize: %dx%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00ooOO()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    const/16 v1, 0x2d0

    :goto_0
    iput v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceWidth:I

    .line 4
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00ooOO()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    mul-int/lit16 p2, p2, 0x2d0

    .line 5
    div-int/2addr p2, p1

    :goto_1
    iput p2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceHeight:I

    .line 6
    iget-object p1, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceWidth:I

    invoke-virtual {p1, v1, p2}, Lcom/android/camera/SwitchAnimManager;->setPreviewFrameLayoutSize(II)V

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->updateRenderRect()V

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setPreviewSaveListener(Lcom/android/camera/SurfaceTextureScreenNail$PreviewSaveListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mPreviewSaveListener:Lcom/android/camera/SurfaceTextureScreenNail$PreviewSaveListener;

    return-void
.end method

.method public startRealtimeBlur()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0x1a

    .line 2
    :try_start_0
    iput v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public switchCameraDone()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/android/camera/CameraScreenNail;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "switchDone: state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/16 v2, 0x17

    if-ne v1, v2, :cond_0

    const/16 v1, 0x18

    .line 4
    iput v1, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateExtraTransformMatrix([F)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/camera/CameraScreenNail;->mAnimState:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0x17

    if-eq v0, v2, :cond_1

    const/16 v2, 0x18

    if-eq v0, v2, :cond_1

    const/16 v2, 0x19

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    move v2, v0

    goto :goto_1

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v0}, Lcom/android/camera/SwitchAnimManager;->getExtScaleX()F

    move-result v0

    .line 3
    iget-object v2, p0, Lcom/android/camera/CameraScreenNail;->mSwitchAnimManager:Lcom/android/camera/SwitchAnimManager;

    invoke-virtual {v2}, Lcom/android/camera/SwitchAnimManager;->getExtScaleY()F

    move-result v2

    :goto_1
    cmpl-float v3, v0, v1

    if-nez v3, :cond_2

    cmpl-float v3, v2, v1

    if-eqz v3, :cond_3

    :cond_2
    const/4 v3, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    .line 4
    invoke-static {p1, v5, v4, v4, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 5
    invoke-static {p1, v5, v0, v2, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    const/high16 v0, -0x41000000    # -0.5f

    .line 6
    invoke-static {p1, v5, v0, v0, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    :cond_3
    return-void
.end method
