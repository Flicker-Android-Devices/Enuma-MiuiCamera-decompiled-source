.class public Lcom/android/camera/ui/RenderEngineAdapter;
.super Ljava/lang/Object;
.source "RenderEngineAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_RenderListener;,
        Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_ExtRenderer;,
        Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_StateListener;,
        Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_RenderListener;,
        Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_NailListener;,
        Lcom/android/camera/ui/RenderEngineAdapter$SurfaceViewListener;,
        Lcom/android/camera/ui/RenderEngineAdapter$ArrivedType;,
        Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineVersion;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "RenderEngineAdapter"


# instance fields
.field public mActivity:Lcom/android/camera/Camera;

.field public mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

.field public mExtRenderer:Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_ExtRenderer;

.field public mExternalGLThread:Lcom/android/camera/ui/gl/GLThread;

.field public mGLCanvas:Lcom/android/gallery3d/ui/SimpleGLCanvas;

.field public mNailListener:Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_NailListener;

.field public mRenderEngineV1:Lcom/android/camera/ui/CameraRenderEngine;

.field public mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

.field public mRenderListener:Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_RenderListener;

.field public mReqRenderListener:Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_RenderListener;

.field public mRequestRenderListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/CameraScreenNail$RequestRenderListener;",
            ">;"
        }
    .end annotation
.end field

.field public mStateListener:Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_StateListener;

.field public mSurfaceHeight:I

.field public mSurfaceListener:Lcom/android/camera/ui/RenderEngineAdapter$SurfaceViewListener;

.field public mSurfaceWidth:I

.field public mVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/android/camera/Camera;

    iput-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mActivity:Lcom/android/camera/Camera;

    .line 3
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OO()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00o0o00()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 4
    iput v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    .line 5
    new-instance v0, Lcom/xiaomi/renderengine/RenderEngine;

    invoke-direct {v0, p1}, Lcom/xiaomi/renderengine/RenderEngine;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRequestRenderListeners:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 7
    iput p1, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    .line 8
    new-instance p1, Lcom/android/camera/ui/CameraRenderEngine;

    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mActivity:Lcom/android/camera/Camera;

    invoke-direct {p1, v0}, Lcom/android/camera/ui/CameraRenderEngine;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV1:Lcom/android/camera/ui/CameraRenderEngine;

    .line 9
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RenderEngineAdapter version:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RenderEngineAdapter"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic OooO00o(ILcom/android/camera/CameraScreenNail;Ljava/lang/Object;)V
    .locals 0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/camera/CameraScreenNail;->doPreviewGaussianForever()V

    goto :goto_0

    .line 5
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/camera/CameraScreenNail;->startRealtimeBlur()V

    goto :goto_0

    .line 6
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/camera/CameraScreenNail;->readLastFrameGaussian()V

    goto :goto_0

    .line 7
    :pswitch_3
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/camera/CameraScreenNail;->animateCapture(I)V

    goto :goto_0

    .line 8
    :pswitch_4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/camera/CameraScreenNail;->animateModuleCopyTexture(Z)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic OooO00o(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0

    .line 2
    invoke-interface {p0}, Lcom/android/gallery3d/ui/GLCanvas;->deleteProgram()V

    .line 3
    invoke-interface {p0}, Lcom/android/gallery3d/ui/GLCanvas;->recycledResources()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/ui/RenderEngineAdapter;)Lcom/android/camera/Camera;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mActivity:Lcom/android/camera/Camera;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/ui/RenderEngineAdapter;)Lcom/android/camera/CameraScreenNail;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera/ui/RenderEngineAdapter;)Lcom/android/camera/ui/CameraRenderEngine;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV1:Lcom/android/camera/ui/CameraRenderEngine;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera/ui/RenderEngineAdapter;)Lcom/android/gallery3d/ui/SimpleGLCanvas;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mGLCanvas:Lcom/android/gallery3d/ui/SimpleGLCanvas;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/android/camera/ui/RenderEngineAdapter;Lcom/android/gallery3d/ui/SimpleGLCanvas;)Lcom/android/gallery3d/ui/SimpleGLCanvas;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mGLCanvas:Lcom/android/gallery3d/ui/SimpleGLCanvas;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/android/camera/ui/RenderEngineAdapter;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRequestRenderListeners:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public synthetic OooO00o(Lcom/android/camera/ui/RenderEngineAdapter$SurfaceViewListener;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mSurfaceWidth:I

    iget v1, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mSurfaceHeight:I

    invoke-interface {p1, v0, v1}, Lcom/android/camera/ui/RenderEngineAdapter$SurfaceViewListener;->onSurfaceChanged(II)V

    return-void
.end method

.method public synthetic OooO0O0(Lcom/android/camera/ui/RenderEngineAdapter$SurfaceViewListener;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mSurfaceWidth:I

    iget v1, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mSurfaceHeight:I

    invoke-interface {p1, v0, v1}, Lcom/android/camera/ui/RenderEngineAdapter$SurfaceViewListener;->onSurfaceChanged(II)V

    return-void
.end method

.method public addLocalRenderer(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v0, p1}, Lcom/xiaomi/renderengine/RenderEngine;->addLocalRenderer(I)V

    :cond_0
    return-void
.end method

.method public addRequestListener(Lcom/android/camera/CameraScreenNail$RequestRenderListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/CameraScreenNail;->addRequestListener(Lcom/android/camera/CameraScreenNail$RequestRenderListener;)V

    .line 3
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRequestRenderListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mReqRenderListener:Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_RenderListener;

    invoke-virtual {p1, v0}, Lcom/xiaomi/renderengine/RenderEngine;->setRequestRenderListener(Lcom/xiaomi/renderengine/RenderEngine$RequestRenderListener;)V

    :cond_2
    return-void
.end method

.method public getAnimationResult(I)Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAnimationResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RenderEngineAdapter"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAnimationResult failed, screenNail is null. type:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    return-object v2

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getLastFrameGaussianBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v0, p1}, Lcom/xiaomi/renderengine/RenderEngine;->getAnimationResult(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getCameraScreenNail()Lcom/android/camera/CameraScreenNail;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    return-object v0
.end method

.method public getEGLContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV1:Lcom/android/camera/ui/CameraRenderEngine;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraRenderEngine;->getEGLContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/RenderEngine;->getEGLContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    return-object v0
.end method

.method public getEGLContext14()Landroid/opengl/EGLContext;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV1:Lcom/android/camera/ui/CameraRenderEngine;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraRenderEngine;->getEGLContext14()Landroid/opengl/EGLContext;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/RenderEngine;->getEGLContext14()Landroid/opengl/EGLContext;

    move-result-object v0

    return-object v0
.end method

.method public getExtTexture()Lcom/android/gallery3d/ui/ExtTexture;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/SurfaceTextureScreenNail;->getExtTexture()Lcom/android/gallery3d/ui/ExtTexture;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/RenderEngine;->getPreviewOesTexture()I

    move-result v0

    if-lez v0, :cond_1

    .line 4
    new-instance v1, Lcom/android/gallery3d/ui/ExtTexture;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/ui/ExtTexture;-><init>(I)V

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExternalGLThread()Lcom/android/camera/ui/gl/GLThread;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mExternalGLThread:Lcom/android/camera/ui/gl/GLThread;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/ui/gl/GLThread;

    invoke-virtual {p0}, Lcom/android/camera/ui/RenderEngineAdapter;->getEGLContext14()Landroid/opengl/EGLContext;

    move-result-object v1

    const-string v2, "ExternalGLThread"

    invoke-direct {v0, v2, v1}, Lcom/android/camera/ui/gl/GLThread;-><init>(Ljava/lang/String;Landroid/opengl/EGLContext;)V

    iput-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mExternalGLThread:Lcom/android/camera/ui/gl/GLThread;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mExternalGLThread:Lcom/android/camera/ui/gl/GLThread;

    return-object v0
.end method

.method public getFrameAvailableFlag()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getFrameAvailableFlag()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/RenderEngine;->getFrameAvailableFlag()Z

    move-result v0

    return v0
.end method

.method public getGLCanvas()Lcom/android/gallery3d/ui/GLCanvas;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV1:Lcom/android/camera/ui/CameraRenderEngine;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraRenderEngine;->getGLCanvas()Lcom/android/gallery3d/ui/GLCanvasImpl;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mGLCanvas:Lcom/android/gallery3d/ui/SimpleGLCanvas;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV1:Lcom/android/camera/ui/CameraRenderEngine;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraRenderEngine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/RenderEngine;->getGLHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewTransform()[F
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/SurfaceTextureScreenNail;->getCurrentTransform()[F

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/RenderEngine;->getPreviewTransform()[F

    move-result-object v0

    return-object v0
.end method

.method public getRenderLock()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV1:Lcom/android/camera/ui/CameraRenderEngine;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraRenderEngine;->getGLCanvas()Lcom/android/gallery3d/ui/GLCanvasImpl;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/RenderEngine;->getRenderLock()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceCreatedTimestamp()J
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceCreatedTimestamp()J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/RenderEngine;->getSurfaceCreatedTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/RenderEngine;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    return-object v0
.end method

.method public initCameraScreenNail()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mNailListener:Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_NailListener;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_NailListener;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_NailListener;-><init>(Lcom/android/camera/ui/RenderEngineAdapter;Lcom/android/camera/ui/RenderEngineAdapter$1;)V

    iput-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mNailListener:Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_NailListener;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderListener:Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_RenderListener;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_RenderListener;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_RenderListener;-><init>(Lcom/android/camera/ui/RenderEngineAdapter;Lcom/android/camera/ui/RenderEngineAdapter$1;)V

    iput-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderListener:Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_RenderListener;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    if-nez v0, :cond_2

    .line 6
    new-instance v0, Lcom/android/camera/CameraScreenNail;

    iget-object v2, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mNailListener:Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_NailListener;

    iget-object v3, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderListener:Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_RenderListener;

    invoke-direct {v0, v2, v3}, Lcom/android/camera/CameraScreenNail;-><init>(Lcom/android/camera/CameraScreenNail$NailListener;Lcom/android/camera/CameraScreenNail$RequestRenderListener;)V

    iput-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    .line 7
    :cond_2
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    .line 8
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mStateListener:Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_StateListener;

    if-nez v0, :cond_3

    .line 9
    new-instance v0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_StateListener;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_StateListener;-><init>(Lcom/android/camera/ui/RenderEngineAdapter;Lcom/android/camera/ui/RenderEngineAdapter$1;)V

    iput-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mStateListener:Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_StateListener;

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mExtRenderer:Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_ExtRenderer;

    if-nez v0, :cond_4

    .line 11
    new-instance v0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_ExtRenderer;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_ExtRenderer;-><init>(Lcom/android/camera/ui/RenderEngineAdapter;Lcom/android/camera/ui/RenderEngineAdapter$1;)V

    iput-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mExtRenderer:Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_ExtRenderer;

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mReqRenderListener:Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_RenderListener;

    if-nez v0, :cond_5

    .line 13
    new-instance v0, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_RenderListener;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_RenderListener;-><init>(Lcom/android/camera/ui/RenderEngineAdapter;Lcom/android/camera/ui/RenderEngineAdapter$1;)V

    iput-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mReqRenderListener:Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_RenderListener;

    .line 14
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    if-eqz v0, :cond_6

    .line 15
    iget-object v1, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mStateListener:Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_StateListener;

    invoke-virtual {v0, v1}, Lcom/xiaomi/renderengine/RenderEngine;->setStateChangeListener(Lcom/xiaomi/renderengine/RenderEngine$StateCallback;)V

    .line 16
    :cond_6
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_7

    .line 17
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 18
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 20
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/SurfaceTextureScreenNail;->setPreviewSize(II)V

    :cond_7
    const-string v0, "RenderEngineAdapter"

    const-string v1, "initCameraScreenNail"

    .line 21
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV1:Lcom/android/camera/ui/CameraRenderEngine;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraRenderEngine;->onDestroy()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mGLCanvas:Lcom/android/gallery3d/ui/SimpleGLCanvas;

    .line 4
    iput-object v1, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mGLCanvas:Lcom/android/gallery3d/ui/SimpleGLCanvas;

    if-eqz v0, :cond_1

    .line 5
    iget-object v2, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v2}, Lcom/xiaomi/renderengine/RenderEngine;->getGLHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    new-instance v3, LOooO0O0/OooO0O0/OooO00o/o0ooOO0/OooOo;

    invoke-direct {v3, v0}, LOooO0O0/OooO0O0/OooO00o/o0ooOO0/OooOo;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v0, v1}, Lcom/xiaomi/renderengine/RenderEngine;->setRequestRenderListener(Lcom/xiaomi/renderengine/RenderEngine$RequestRenderListener;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/RenderEngine;->release()V

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mExternalGLThread:Lcom/android/camera/ui/gl/GLThread;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Lcom/android/camera/ui/gl/GLThread;->release()V

    .line 11
    iput-object v1, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mExternalGLThread:Lcom/android/camera/ui/gl/GLThread;

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getExternalFrameProcessor()Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->onSurfaceViewPause()V

    :cond_1
    const-string v0, "RenderEngineAdapter"

    const-string/jumbo v1, "onPause"

    .line 4
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->updateSurfaceState(I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "RenderEngineAdapter"

    const-string/jumbo v1, "onResume"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getExternalFrameProcessor()Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;->onSurfaceViewResume()V

    :cond_1
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;II)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV1:Lcom/android/camera/ui/CameraRenderEngine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/ui/CameraRenderEngine;->onSurfaceChanged(Landroid/view/SurfaceHolder;II)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/renderengine/RenderEngine;->onSurfaceChanged(Landroid/view/SurfaceHolder;II)V

    .line 4
    :goto_0
    iput p2, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mSurfaceWidth:I

    .line 5
    iput p3, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mSurfaceHeight:I

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/ui/RenderEngineAdapter;->getHandler()Landroid/os/Handler;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mSurfaceListener:Lcom/android/camera/ui/RenderEngineAdapter$SurfaceViewListener;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/ui/RenderEngineAdapter;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p3, LOooO0O0/OooO0O0/OooO00o/o0ooOO0/OooOoO0;

    invoke-direct {p3, p0, p2}, LOooO0O0/OooO0O0/OooO00o/o0ooOO0/OooOoO0;-><init>(Lcom/android/camera/ui/RenderEngineAdapter;Lcom/android/camera/ui/RenderEngineAdapter$SurfaceViewListener;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onSurfaceCreated()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV1:Lcom/android/camera/ui/CameraRenderEngine;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraRenderEngine;->onSurfaceCreated()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/RenderEngine;->onSurfaceCreated()V

    :goto_0
    return-void
.end method

.method public onSurfaceDestroyed()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV1:Lcom/android/camera/ui/CameraRenderEngine;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraRenderEngine;->onSurfaceDestroyed()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/RenderEngine;->onSurfaceDestroyed()V

    :goto_0
    return-void
.end method

.method public releaseCameraScreenNail()V
    .locals 2

    const-string v0, "RenderEngineAdapter"

    const-string/jumbo v1, "releaseCameraScreenNail"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->releaseSurfaceTexture()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setFrameAvailable(Z)V

    :cond_1
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mNailListener:Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_NailListener;

    .line 7
    iput-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderListener:Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV1_RenderListener;

    .line 8
    iput-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mStateListener:Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_StateListener;

    .line 9
    iput-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mExtRenderer:Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_ExtRenderer;

    .line 10
    iput-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mReqRenderListener:Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_RenderListener;

    return-void
.end method

.method public removeLocalRenderer(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v0, p1}, Lcom/xiaomi/renderengine/RenderEngine;->removeLocalRenderer(I)V

    :cond_0
    return-void
.end method

.method public removeRequestListener(Lcom/android/camera/CameraScreenNail$RequestRenderListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/CameraScreenNail;->removeRequestListener(Lcom/android/camera/CameraScreenNail$RequestRenderListener;)V

    .line 3
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRequestRenderListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRequestRenderListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaomi/renderengine/RenderEngine;->setExternalRenderer(Lcom/xiaomi/renderengine/RenderEngine$ExternalRenderer;)V

    :cond_2
    return-void
.end method

.method public requestChangeWCGConfig(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV1:Lcom/android/camera/ui/CameraRenderEngine;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CameraRenderEngine;->requestChangeWCGConfig(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public requestRender()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV1:Lcom/android/camera/ui/CameraRenderEngine;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraRenderEngine;->requestRender()V

    :cond_0
    return-void
.end method

.method public resetFrameAvailableFlag()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->resetFrameAvailableFlag()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/RenderEngine;->resetFrameAvailableFlag()V

    :goto_0
    return-void
.end method

.method public setAnimationType(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/RenderEngineAdapter;->setAnimationType(ILjava/lang/Object;)V

    return-void
.end method

.method public setAnimationType(ILjava/lang/Object;)V
    .locals 4

    .line 2
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const-string v1, "RenderEngineAdapter"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/ui/RenderEngineAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    if-eqz v0, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v3, LOooO0O0/OooO0O0/OooO00o/o0ooOO0/OooOo0o;

    invoke-direct {v3, p1, v2, p2}, LOooO0O0/OooO0O0/OooO00o/o0ooOO0/OooOo0o;-><init>(ILcom/android/camera/CameraScreenNail;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setAnimationType failed, handle is null. type:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_2
    iget-object p2, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {p2, p1}, Lcom/xiaomi/renderengine/RenderEngine;->setAnimationType(I)V

    .line 8
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setAnimationType: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCameraPreviewRect(Landroid/graphics/Rect;Z)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/renderengine/RenderEngine;->addPreviewSurface(Landroid/view/Surface;Landroid/graphics/Rect;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/camera/SurfaceTextureScreenNail;->setDisplayArea(Landroid/graphics/Rect;)V

    if-eqz p2, :cond_2

    .line 5
    iget-object p2, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Lcom/android/camera/CameraScreenNail;->setPreviewFrameLayoutSize(II)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p2, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Lcom/android/camera/CameraScreenNail;->setPreviewFrameLayoutSize(II)V

    :goto_0
    return-void
.end method

.method public setExternalFrameProcessor(Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/CameraScreenNail;->setExternalFrameProcessor(Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;)V

    .line 3
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mExtRenderer:Lcom/android/camera/ui/RenderEngineAdapter$RenderEngineV2_ExtRenderer;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/xiaomi/renderengine/RenderEngine;->setExternalRenderer(Lcom/xiaomi/renderengine/RenderEngine$ExternalRenderer;)V

    :cond_2
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mCameraScreenNail:Lcom/android/camera/CameraScreenNail;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/SurfaceTextureScreenNail;->setPreviewSize(II)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    if-eqz v0, :cond_1

    .line 5
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, p1, p2}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/renderengine/RenderEngine;->setPreviewSize(Landroid/util/Size;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public varargs setRendererAttribute(I[Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v0, p1}, Lcom/xiaomi/renderengine/RenderEngine;->getRendererAttribute(I)Lcom/xiaomi/renderengine/data/RendererAttribute;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v1, :cond_1

    const/4 v1, 0x7

    if-eq p1, v1, :cond_1

    const/16 v1, 0x65

    if-eq p1, v1, :cond_0

    const-string p1, "RenderEngineAdapter"

    const-string/jumbo p2, "setRendererAttribute fail, unsupported type"

    .line 3
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4
    :cond_0
    move-object p1, v0

    check-cast p1, Lcom/xiaomi/renderengine/data/AnimRendererAttribute;

    .line 5
    aget-object v1, p2, v3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p1, Lcom/xiaomi/renderengine/data/AnimRendererAttribute;->mCapAnimDuration:I

    .line 6
    aget-object p2, p2, v2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p1, Lcom/xiaomi/renderengine/data/AnimRendererAttribute;->mCapAnimAlphaPercent:F

    goto :goto_0

    .line 7
    :cond_1
    aget-object p1, p2, v3

    check-cast p1, Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    .line 8
    move-object v1, v0

    check-cast v1, Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;

    .line 9
    iget-object v3, v1, Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;->mEffectRect:Landroid/graphics/RectF;

    iget-object v4, p1, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 10
    iget-object v3, v1, Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;->mStartPoint:Landroid/graphics/PointF;

    iget-object v4, p1, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint1:Landroid/graphics/PointF;

    invoke-virtual {v3, v4}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 11
    iget-object v3, v1, Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;->mEndPoint:Landroid/graphics/PointF;

    iget-object v4, p1, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mPoint2:Landroid/graphics/PointF;

    invoke-virtual {v3, v4}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 12
    iget v3, p1, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mRangeWidth:F

    iput v3, v1, Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;->mRangeWidth:F

    .line 13
    iget p1, p1, Lcom/android/camera/effect/EffectController$EffectRectAttribute;->mInvertFlag:I

    iput p1, v1, Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;->mInvertFlag:I

    .line 14
    aget-object p1, p2, v2

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v1, Lcom/xiaomi/renderengine/data/TiltShiftRendererAttribute;->mTiltShiftMaskAlpha:F

    .line 15
    :goto_0
    iget-object p1, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {p1, v0}, Lcom/xiaomi/renderengine/RenderEngine;->setRendererAttribute(Lcom/xiaomi/renderengine/data/RendererAttribute;)V

    :cond_2
    return-void
.end method

.method public setRendererEnabled(IZ)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/renderengine/RenderEngine;->setRendererEnabled(IZ)V

    :cond_0
    return-void
.end method

.method public setStateChangeListener(Lcom/xiaomi/renderengine/RenderEngine$StateCallback;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mVersion:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mRenderEngineV2:Lcom/xiaomi/renderengine/RenderEngine;

    invoke-virtual {v0, p1}, Lcom/xiaomi/renderengine/RenderEngine;->setStateChangeListener(Lcom/xiaomi/renderengine/RenderEngine$StateCallback;)V

    :cond_0
    return-void
.end method

.method public setSurfaceViewListener(Lcom/android/camera/ui/RenderEngineAdapter$SurfaceViewListener;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/ui/RenderEngineAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/ui/RenderEngineAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, LOooO0O0/OooO0O0/OooO00o/o0ooOO0/OooOoO;

    invoke-direct {v1, p0, p1}, LOooO0O0/OooO0O0/OooO00o/o0ooOO0/OooOoO;-><init>(Lcom/android/camera/ui/RenderEngineAdapter;Lcom/android/camera/ui/RenderEngineAdapter$SurfaceViewListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/RenderEngineAdapter;->mSurfaceListener:Lcom/android/camera/ui/RenderEngineAdapter$SurfaceViewListener;

    return-void
.end method
