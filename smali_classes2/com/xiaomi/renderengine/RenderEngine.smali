.class public Lcom/xiaomi/renderengine/RenderEngine;
.super Ljava/lang/Object;
.source "RenderEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;,
        Lcom/xiaomi/renderengine/RenderEngine$RenderParams;,
        Lcom/xiaomi/renderengine/RenderEngine$RequestRenderListener;,
        Lcom/xiaomi/renderengine/RenderEngine$ExternalRenderer;,
        Lcom/xiaomi/renderengine/RenderEngine$StateCallback;
    }
.end annotation


# static fields
.field public static final EGL_CONFIG_ATTRS:[I

.field public static final RENDERING_COUNT_INTERVAL:I = 0x3c

.field public static final TAG:Ljava/lang/String; = "RenderEngine"

.field public static sFrameListener:Landroid/os/HandlerThread;


# instance fields
.field public mAnimationType:I

.field public mAppContext:Landroid/content/Context;

.field public mCameraSurface:Landroid/view/Surface;

.field public mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

.field public mEGLContext10:Ljavax/microedition/khronos/egl/EGLContext;

.field public mEGLContext14:Landroid/opengl/EGLContext;

.field public mEglCore:Lcom/xiaomi/renderengine/gl/EglCore;

.field public mExternalRenderer:Lcom/xiaomi/renderengine/RenderEngine$ExternalRenderer;

.field public mFirstFrameArrived:Z

.field public mFirstFrameDrawn:Z

.field public mFrameRenderingCount:J

.field public mGLHandler:Landroid/os/Handler;

.field public mGLState:Lcom/xiaomi/renderengine/GLState;

.field public mGlobalRenderers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/renderengine/renderer/Renderer;",
            ">;"
        }
    .end annotation
.end field

.field public mLocalRenderers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/renderengine/renderer/Renderer;",
            ">;"
        }
    .end annotation
.end field

.field public mOesTextures:[I

.field public mPreviewGLThread:Lcom/xiaomi/renderengine/gl/GLThread;

.field public mPreviewRenderer:Lcom/xiaomi/renderengine/renderer/PreviewRenderer;

.field public mPreviewSize:Landroid/util/Size;

.field public mRenderLock:Ljava/lang/Object;

.field public mReqRenderListener:Lcom/xiaomi/renderengine/RenderEngine$RequestRenderListener;

.field public mStateCallback:Lcom/xiaomi/renderengine/RenderEngine$StateCallback;

.field public mSurfaceCreatedTimestamp:J

.field public mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field public mTexProgram2D:Lcom/xiaomi/renderengine/program/TextureProgram;

.field public mTexProgramOES:Lcom/xiaomi/renderengine/program/TextureProgram;

.field public mTextureTransformMatrix:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xf

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaomi/renderengine/RenderEngine;->EGL_CONFIG_ATTRS:[I

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PreviewFrameListener"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/renderengine/RenderEngine;->sFrameListener:Landroid/os/HandlerThread;

    return-void

    nop

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3025
        0x0
        0x3021
        0x0
        0x3040
        0x4
        0x3026
        0x8
        0x3038
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mOesTextures:[I

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 3
    iput-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mTextureTransformMatrix:[F

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceCreatedTimestamp:J

    .line 5
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/xiaomi/renderengine/RenderEngine;->mRenderLock:Ljava/lang/Object;

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/xiaomi/renderengine/RenderEngine;->mLocalRenderers:Ljava/util/List;

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGlobalRenderers:Ljava/util/List;

    .line 8
    iput-wide v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mFrameRenderingCount:J

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mFirstFrameArrived:Z

    .line 10
    iput-boolean v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mFirstFrameDrawn:Z

    .line 11
    iput v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mAnimationType:I

    const-string v0, "RenderEngine"

    const-string v1, "New RenderEngine instance"

    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iput-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mAppContext:Landroid/content/Context;

    .line 14
    invoke-direct {p0}, Lcom/xiaomi/renderengine/RenderEngine;->init()V

    return-void
.end method

.method public static synthetic OooO00o(Lcom/xiaomi/renderengine/RenderEngine;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/renderengine/RenderEngine;->onDrawFrame()V

    return-void
.end method

.method public static synthetic access$100(Lcom/xiaomi/renderengine/RenderEngine;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mFirstFrameArrived:Z

    return p0
.end method

.method public static synthetic access$102(Lcom/xiaomi/renderengine/RenderEngine;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mFirstFrameArrived:Z

    return p1
.end method

.method public static synthetic access$202(Lcom/xiaomi/renderengine/RenderEngine;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mAnimationType:I

    return p1
.end method

.method public static synthetic access$300(Lcom/xiaomi/renderengine/RenderEngine;)Lcom/xiaomi/renderengine/RenderEngine$StateCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mStateCallback:Lcom/xiaomi/renderengine/RenderEngine$StateCallback;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/xiaomi/renderengine/RenderEngine;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/xiaomi/renderengine/RenderEngine;)Lcom/xiaomi/renderengine/RenderEngine$RequestRenderListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mReqRenderListener:Lcom/xiaomi/renderengine/RenderEngine$RequestRenderListener;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/xiaomi/renderengine/RenderEngine;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mFirstFrameDrawn:Z

    return p0
.end method

.method public static synthetic access$602(Lcom/xiaomi/renderengine/RenderEngine;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mFirstFrameDrawn:Z

    return p1
.end method

.method public static synthetic access$700(Lcom/xiaomi/renderengine/RenderEngine;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mFrameRenderingCount:J

    return-wide v0
.end method

.method public static synthetic access$800(Lcom/xiaomi/renderengine/RenderEngine;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mRenderLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/xiaomi/renderengine/RenderEngine;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/renderengine/RenderEngine;->onDrawFrame()V

    return-void
.end method

.method private init()V
    .locals 5

    .line 1
    new-instance v0, Lcom/xiaomi/renderengine/gl/GLThread;

    sget-object v1, Lcom/xiaomi/renderengine/RenderEngine;->EGL_CONFIG_ATTRS:[I

    const-string v2, "RenderEngine"

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/xiaomi/renderengine/gl/GLThread;-><init>(Ljava/lang/String;ILandroid/opengl/EGLContext;[I)V

    iput-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewGLThread:Lcom/xiaomi/renderengine/gl/GLThread;

    .line 2
    invoke-virtual {v0}, Lcom/xiaomi/renderengine/gl/GLThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLHandler:Landroid/os/Handler;

    .line 3
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewGLThread:Lcom/xiaomi/renderengine/gl/GLThread;

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/gl/GLThread;->getEglCore()Lcom/xiaomi/renderengine/gl/EglCore;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mEglCore:Lcom/xiaomi/renderengine/gl/EglCore;

    .line 4
    new-instance v0, Lcom/xiaomi/renderengine/GLState;

    invoke-direct {v0}, Lcom/xiaomi/renderengine/GLState;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLState:Lcom/xiaomi/renderengine/GLState;

    .line 5
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLHandler:Landroid/os/Handler;

    new-instance v1, LOooO0O0/OooO0o/OooO0O0/OooOO0O;

    invoke-direct {v1, p0}, LOooO0O0/OooO0o/OooO0O0/OooOO0O;-><init>(Lcom/xiaomi/renderengine/RenderEngine;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/16 v0, 0x64

    .line 6
    invoke-virtual {p0, v0}, Lcom/xiaomi/renderengine/RenderEngine;->addGlobalRenderer(I)V

    .line 7
    invoke-static {v0}, Lcom/xiaomi/renderengine/renderer/RendererManager;->getGlobalRenderer(I)Lcom/xiaomi/renderengine/renderer/Renderer;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;

    iput-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewRenderer:Lcom/xiaomi/renderengine/renderer/PreviewRenderer;

    return-void
.end method

.method private initializePreviewTexture()V
    .locals 4

    .line 1
    sget-object v0, Lcom/xiaomi/renderengine/RenderEngine;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/xiaomi/renderengine/RenderEngine;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mOesTextures:[I

    invoke-static {v0}, Lcom/xiaomi/renderengine/gl/GLUtils;->createExternalOESTextures([I)V

    .line 5
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mOesTextures:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 6
    new-instance v1, Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/xiaomi/renderengine/RenderEngine$OnCameraFrameAvailableListener;-><init>(Lcom/xiaomi/renderengine/RenderEngine;Lcom/xiaomi/renderengine/RenderEngine$1;)V

    new-instance v2, Landroid/os/Handler;

    sget-object v3, Lcom/xiaomi/renderengine/RenderEngine;->sFrameListener:Landroid/os/HandlerThread;

    .line 7
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 9
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewSize:Landroid/util/Size;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 11
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 13
    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceCreatedTimestamp:J

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Create camera surface texture:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RenderEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onDrawFrame()V
    .locals 14

    .line 1
    iget v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mAnimationType:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewRenderer:Lcom/xiaomi/renderengine/renderer/PreviewRenderer;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/xiaomi/renderengine/RenderEngine;->processAnimation()V

    return-void

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mFrameRenderingCount:J

    const-wide/16 v2, 0x3c

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDrawFrame rendering count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mFrameRenderingCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RenderEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mExternalRenderer:Lcom/xiaomi/renderengine/RenderEngine$ExternalRenderer;

    if-eqz v0, :cond_3

    .line 6
    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewRenderer:Lcom/xiaomi/renderengine/renderer/PreviewRenderer;

    if-eqz v1, :cond_3

    .line 7
    invoke-interface {v0}, Lcom/xiaomi/renderengine/RenderEngine$ExternalRenderer;->isProcessorReady()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewRenderer:Lcom/xiaomi/renderengine/renderer/PreviewRenderer;

    invoke-virtual {v1, v0}, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->onExternalRender(Lcom/xiaomi/renderengine/RenderEngine$ExternalRenderer;)V

    :cond_2
    return-void

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mTextureTransformMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 10
    iget-object v2, p0, Lcom/xiaomi/renderengine/RenderEngine;->mTexProgramOES:Lcom/xiaomi/renderengine/program/TextureProgram;

    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mOesTextures:[I

    const/4 v1, 0x0

    aget v3, v0, v1

    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    .line 11
    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getInputBuffer()Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/FrameBuffer;->getFboId()I

    move-result v4

    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    .line 12
    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getWidth()I

    move-result v5

    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    .line 13
    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/xiaomi/renderengine/RenderEngine;->mTextureTransformMatrix:[F

    new-instance v8, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    .line 14
    invoke-virtual {v0}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getWidth()I

    move-result v0

    iget-object v9, p0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {v9}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getHeight()I

    move-result v9

    invoke-direct {v8, v1, v1, v0, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v9, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLState:Lcom/xiaomi/renderengine/GLState;

    .line 15
    invoke-virtual/range {v2 .. v9}, Lcom/xiaomi/renderengine/program/TextureProgram;->draw(IIII[FLandroid/graphics/Rect;Lcom/xiaomi/renderengine/GLState;)I

    .line 16
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mLocalRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/renderengine/renderer/Renderer;

    .line 17
    iget-boolean v3, v2, Lcom/xiaomi/renderengine/renderer/Renderer;->mIsEnabled:Z

    if-eqz v3, :cond_4

    .line 18
    new-instance v3, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;

    iget-object v4, p0, Lcom/xiaomi/renderengine/RenderEngine;->mOesTextures:[I

    aget v5, v4, v1

    iget-object v4, p0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    .line 19
    invoke-virtual {v4}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getInputBuffer()Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    move-result-object v6

    iget-object v4, p0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    .line 20
    invoke-virtual {v4}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getOutputBuffer()Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    move-result-object v7

    iget-object v4, p0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    .line 21
    invoke-virtual {v4}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getWidth()I

    move-result v8

    iget-object v4, p0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    .line 22
    invoke-virtual {v4}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getHeight()I

    move-result v9

    iget v10, p0, Lcom/xiaomi/renderengine/RenderEngine;->mAnimationType:I

    iget-object v11, p0, Lcom/xiaomi/renderengine/RenderEngine;->mTextureTransformMatrix:[F

    iget-object v12, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLState:Lcom/xiaomi/renderengine/GLState;

    move-object v4, v3

    move-object v13, p0

    invoke-direct/range {v4 .. v13}, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;-><init>(ILcom/xiaomi/renderengine/buffer/FrameBuffer;Lcom/xiaomi/renderengine/buffer/FrameBuffer;III[FLcom/xiaomi/renderengine/GLState;Lcom/xiaomi/renderengine/RenderEngine;)V

    .line 23
    invoke-virtual {v2, v3}, Lcom/xiaomi/renderengine/renderer/Renderer;->onRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)I

    .line 24
    iget-object v2, p0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {v2}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->swapBuffer()V

    goto :goto_0

    .line 25
    :cond_5
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGlobalRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/renderengine/renderer/Renderer;

    .line 26
    new-instance v13, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;

    iget-object v3, p0, Lcom/xiaomi/renderengine/RenderEngine;->mOesTextures:[I

    aget v4, v3, v1

    iget-object v3, p0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    .line 27
    invoke-virtual {v3}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getInputBuffer()Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    move-result-object v5

    iget-object v3, p0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    .line 28
    invoke-virtual {v3}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getOutputBuffer()Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    move-result-object v6

    iget-object v3, p0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    .line 29
    invoke-virtual {v3}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getWidth()I

    move-result v7

    iget-object v3, p0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    .line 30
    invoke-virtual {v3}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/xiaomi/renderengine/RenderEngine;->mAnimationType:I

    iget-object v10, p0, Lcom/xiaomi/renderengine/RenderEngine;->mTextureTransformMatrix:[F

    iget-object v11, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLState:Lcom/xiaomi/renderengine/GLState;

    move-object v3, v13

    move-object v12, p0

    invoke-direct/range {v3 .. v12}, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;-><init>(ILcom/xiaomi/renderengine/buffer/FrameBuffer;Lcom/xiaomi/renderengine/buffer/FrameBuffer;III[FLcom/xiaomi/renderengine/GLState;Lcom/xiaomi/renderengine/RenderEngine;)V

    .line 31
    invoke-virtual {v2, v13}, Lcom/xiaomi/renderengine/renderer/Renderer;->onRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)I

    goto :goto_1

    .line 32
    :cond_6
    iget-wide v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mFrameRenderingCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mFrameRenderingCount:J

    return-void
.end method

.method private processAnimation()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewRenderer:Lcom/xiaomi/renderengine/renderer/PreviewRenderer;

    new-instance v11, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;

    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mOesTextures:[I

    const/4 v12, 0x0

    aget v2, v1, v12

    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    .line 2
    invoke-virtual {v1}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getInputBuffer()Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    move-result-object v3

    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    .line 3
    invoke-virtual {v1}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getOutputBuffer()Lcom/xiaomi/renderengine/buffer/FrameBuffer;

    move-result-object v4

    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    .line 4
    invoke-virtual {v1}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getWidth()I

    move-result v5

    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    .line 5
    invoke-virtual {v1}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/xiaomi/renderengine/RenderEngine;->mAnimationType:I

    iget-object v8, p0, Lcom/xiaomi/renderengine/RenderEngine;->mTextureTransformMatrix:[F

    iget-object v9, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLState:Lcom/xiaomi/renderengine/GLState;

    move-object v1, v11

    move-object v10, p0

    invoke-direct/range {v1 .. v10}, Lcom/xiaomi/renderengine/RenderEngine$RenderParams;-><init>(ILcom/xiaomi/renderengine/buffer/FrameBuffer;Lcom/xiaomi/renderengine/buffer/FrameBuffer;III[FLcom/xiaomi/renderengine/GLState;Lcom/xiaomi/renderengine/RenderEngine;)V

    .line 6
    invoke-virtual {v0, v11}, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->onRender(Lcom/xiaomi/renderengine/RenderEngine$RenderParams;)I

    move-result v0

    .line 7
    iget v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mAnimationType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    if-lez v0, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/xiaomi/renderengine/RenderEngine;->onDrawFrame()V

    goto :goto_0

    .line 9
    :cond_0
    iput v12, p0, Lcom/xiaomi/renderengine/RenderEngine;->mAnimationType:I

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    .line 10
    invoke-direct {p0}, Lcom/xiaomi/renderengine/RenderEngine;->onDrawFrame()V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateGLState(II)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLState:Lcom/xiaomi/renderengine/GLState;

    invoke-virtual {p1}, Lcom/xiaomi/renderengine/GLState;->identityAllM()V

    .line 2
    iget-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLState:Lcom/xiaomi/renderengine/GLState;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/xiaomi/renderengine/GLState;->setAlpha(F)V

    .line 3
    iget-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLState:Lcom/xiaomi/renderengine/GLState;

    int-to-float p2, p2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2, v1}, Lcom/xiaomi/renderengine/GLState;->translate(FFF)V

    .line 4
    iget-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLState:Lcom/xiaomi/renderengine/GLState;

    const/high16 p2, -0x40800000    # -1.0f

    invoke-virtual {p1, v0, p2, v0}, Lcom/xiaomi/renderengine/GLState;->scale(FFF)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 2

    .line 1
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 2
    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mEGLContext10:Ljavax/microedition/khronos/egl/EGLContext;

    .line 3
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mEGLContext14:Landroid/opengl/EGLContext;

    .line 4
    new-instance v0, Lcom/xiaomi/renderengine/program/TextureProgram;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/xiaomi/renderengine/program/TextureProgram;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mTexProgramOES:Lcom/xiaomi/renderengine/program/TextureProgram;

    .line 5
    new-instance v0, Lcom/xiaomi/renderengine/program/TextureProgram;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/renderengine/program/TextureProgram;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mTexProgram2D:Lcom/xiaomi/renderengine/program/TextureProgram;

    return-void
.end method

.method public synthetic OooO00o(II)V
    .locals 2

    .line 13
    invoke-direct {p0}, Lcom/xiaomi/renderengine/RenderEngine;->initializePreviewTexture()V

    .line 14
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 15
    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mStateCallback:Lcom/xiaomi/renderengine/RenderEngine$StateCallback;

    if-eqz v1, :cond_0

    .line 16
    invoke-interface {v1, v0, p1, p2}, Lcom/xiaomi/renderengine/RenderEngine$StateCallback;->onSurfaceChanged(Landroid/graphics/SurfaceTexture;II)V

    .line 17
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/renderengine/RenderEngine;->updateGLState(II)V

    const/4 p1, -0x4

    .line 18
    invoke-static {p1}, Landroid/os/Process;->setThreadPriority(I)V

    return-void
.end method

.method public synthetic OooO00o(Lcom/xiaomi/renderengine/renderer/Renderer;)V
    .locals 2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Add global renderer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RenderEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGlobalRenderers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {p1, p0}, Lcom/xiaomi/renderengine/renderer/Renderer;->onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V

    return-void
.end method

.method public synthetic OooO00o(Lcom/xiaomi/renderengine/renderer/Renderer;I)V
    .locals 1

    .line 9
    iget v0, p1, Lcom/xiaomi/renderengine/renderer/Renderer;->mType:I

    if-ne v0, p2, :cond_0

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Remove global renderer "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RenderEngine"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object p2, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGlobalRenderers:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {p1, p0}, Lcom/xiaomi/renderengine/renderer/Renderer;->onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V

    :cond_0
    return-void
.end method

.method public synthetic OooO0O0()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/xiaomi/renderengine/RenderEngine;->initializePreviewTexture()V

    .line 15
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mStateCallback:Lcom/xiaomi/renderengine/RenderEngine$StateCallback;

    if-eqz v0, :cond_0

    .line 17
    invoke-interface {v0}, Lcom/xiaomi/renderengine/RenderEngine$StateCallback;->onSurfaceCreated()V

    :cond_0
    return-void
.end method

.method public synthetic OooO0O0(II)V
    .locals 2

    const-string v0, "RenderEngine"

    const-string v1, "setPreviewSize() called on gl thread"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->release()V

    .line 4
    :cond_0
    new-instance v1, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-direct {v1, p1, p2}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;-><init>(II)V

    iput-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    const-wide/16 p1, 0x0

    .line 5
    iput-wide p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mFrameRenderingCount:J

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "DoubleBuffer resize, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic OooO0O0(Lcom/xiaomi/renderengine/renderer/Renderer;)V
    .locals 2

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Add local renderer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RenderEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mLocalRenderers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {p1, p0}, Lcom/xiaomi/renderengine/renderer/Renderer;->onAttach(Lcom/xiaomi/renderengine/RenderEngine;)V

    return-void
.end method

.method public synthetic OooO0O0(Lcom/xiaomi/renderengine/renderer/Renderer;I)V
    .locals 1

    .line 10
    iget v0, p1, Lcom/xiaomi/renderengine/renderer/Renderer;->mType:I

    if-ne v0, p2, :cond_0

    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Remove local renderer "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RenderEngine"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-virtual {p1, p0}, Lcom/xiaomi/renderengine/renderer/Renderer;->onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V

    .line 13
    iget-object p2, p0, Lcom/xiaomi/renderengine/RenderEngine;->mLocalRenderers:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public synthetic OooO0OO()V
    .locals 3

    const-string v0, "RenderEngine"

    const-string v1, "release start on GL Thread"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/xiaomi/renderengine/buffer/DoubleBuffer;->release()V

    .line 4
    iput-object v2, p0, Lcom/xiaomi/renderengine/RenderEngine;->mDoubleBuffer:Lcom/xiaomi/renderengine/buffer/DoubleBuffer;

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mTexProgram2D:Lcom/xiaomi/renderengine/program/TextureProgram;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Lcom/xiaomi/renderengine/program/TextureProgram;->release()V

    .line 7
    iput-object v2, p0, Lcom/xiaomi/renderengine/RenderEngine;->mTexProgram2D:Lcom/xiaomi/renderengine/program/TextureProgram;

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mTexProgramOES:Lcom/xiaomi/renderengine/program/TextureProgram;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1}, Lcom/xiaomi/renderengine/program/TextureProgram;->release()V

    .line 10
    iput-object v2, p0, Lcom/xiaomi/renderengine/RenderEngine;->mTexProgramOES:Lcom/xiaomi/renderengine/program/TextureProgram;

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mLocalRenderers:Ljava/util/List;

    new-instance v2, LOooO0O0/OooO0o/OooO0O0/OooO0OO;

    invoke-direct {v2, p0}, LOooO0O0/OooO0o/OooO0O0/OooO0OO;-><init>(Lcom/xiaomi/renderengine/RenderEngine;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 12
    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mLocalRenderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 13
    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGlobalRenderers:Ljava/util/List;

    new-instance v2, LOooO0O0/OooO0o/OooO0O0/OooO;

    invoke-direct {v2, p0}, LOooO0O0/OooO0o/OooO0O0/OooO;-><init>(Lcom/xiaomi/renderengine/RenderEngine;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 14
    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGlobalRenderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 15
    invoke-static {}, Lcom/xiaomi/renderengine/renderer/RendererManager;->clearAllRenderer()V

    const-string v1, "release end on GL Thread"

    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic OooO0OO(Lcom/xiaomi/renderengine/renderer/Renderer;)V
    .locals 0

    .line 17
    invoke-virtual {p1, p0}, Lcom/xiaomi/renderengine/renderer/Renderer;->onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V

    return-void
.end method

.method public synthetic OooO0Oo(Lcom/xiaomi/renderengine/renderer/Renderer;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lcom/xiaomi/renderengine/renderer/Renderer;->onDetach(Lcom/xiaomi/renderengine/RenderEngine;)V

    return-void
.end method

.method public addGlobalRenderer(I)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/xiaomi/renderengine/renderer/RendererManager;->getGlobalRenderer(I)Lcom/xiaomi/renderengine/renderer/Renderer;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLHandler:Landroid/os/Handler;

    new-instance v1, LOooO0O0/OooO0o/OooO0O0/OooOO0o;

    invoke-direct {v1, p0, p1}, LOooO0O0/OooO0o/OooO0O0/OooOO0o;-><init>(Lcom/xiaomi/renderengine/RenderEngine;Lcom/xiaomi/renderengine/renderer/Renderer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public addLocalRenderer(I)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/xiaomi/renderengine/renderer/RendererManager;->getLocalRenderer(I)Lcom/xiaomi/renderengine/renderer/Renderer;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLHandler:Landroid/os/Handler;

    new-instance v1, LOooO0O0/OooO0o/OooO0O0/OooO0o0;

    invoke-direct {v1, p0, p1}, LOooO0O0/OooO0o/OooO0O0/OooO0o0;-><init>(Lcom/xiaomi/renderengine/RenderEngine;Lcom/xiaomi/renderengine/renderer/Renderer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public addPreviewSurface(Landroid/view/Surface;Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewRenderer:Lcom/xiaomi/renderengine/renderer/PreviewRenderer;

    invoke-virtual {p1, p2}, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->setPreviewAreaParams(Landroid/graphics/Rect;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addPreviewSurface displayRect:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RenderEngine"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getAnimationResult(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewRenderer:Lcom/xiaomi/renderengine/renderer/PreviewRenderer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->getAnimationResult(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public getEGLContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mEGLContext10:Ljavax/microedition/khronos/egl/EGLContext;

    return-object v0
.end method

.method public getEGLContext14()Landroid/opengl/EGLContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mEGLContext14:Landroid/opengl/EGLContext;

    return-object v0
.end method

.method public getEGLCore()Lcom/xiaomi/renderengine/gl/EglCore;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mEglCore:Lcom/xiaomi/renderengine/gl/EglCore;

    return-object v0
.end method

.method public getFrameAvailableFlag()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mFirstFrameArrived:Z

    return v0
.end method

.method public getGLHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getPreviewOesTexture()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mOesTextures:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getPreviewTransform()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mTextureTransformMatrix:[F

    return-object v0
.end method

.method public getRenderLock()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mRenderLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getRendererAttribute(I)Lcom/xiaomi/renderengine/data/RendererAttribute;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/xiaomi/renderengine/data/AttributeManager;->getAttribute(I)Lcom/xiaomi/renderengine/data/RendererAttribute;

    move-result-object p1

    return-object p1
.end method

.method public getSurfaceCreatedTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceCreatedTimestamp:J

    return-wide v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceCreatedTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get surface texture:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RenderEngine"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;II)V
    .locals 2

    const-string v0, "RenderEngine"

    const-string v1, "onSurfaceChanged"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewRenderer:Lcom/xiaomi/renderengine/renderer/PreviewRenderer;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->addPreviewSurface(Landroid/view/Surface;II)V

    .line 3
    iget-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLHandler:Landroid/os/Handler;

    new-instance v0, LOooO0O0/OooO0o/OooO0O0/OooOOO0;

    invoke-direct {v0, p0, p2, p3}, LOooO0O0/OooO0o/OooO0O0/OooOOO0;-><init>(Lcom/xiaomi/renderengine/RenderEngine;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSurfaceCreated()V
    .locals 2

    const-string v0, "RenderEngine"

    const-string v1, "onSurfaceCreated"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLHandler:Landroid/os/Handler;

    new-instance v1, LOooO0O0/OooO0o/OooO0O0/OooO0Oo;

    invoke-direct {v1, p0}, LOooO0O0/OooO0o/OooO0O0/OooO0Oo;-><init>(Lcom/xiaomi/renderengine/RenderEngine;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSurfaceDestroyed()V
    .locals 2

    const-string v0, "RenderEngine"

    const-string v1, "onSurfaceDestroyed"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewRenderer:Lcom/xiaomi/renderengine/renderer/PreviewRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->removePreviewSurface(Landroid/view/Surface;)V

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceCreatedTimestamp:J

    .line 4
    iput-wide v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mFrameRenderingCount:J

    return-void
.end method

.method public release()V
    .locals 3

    const-string v0, "RenderEngine"

    const-string v1, "release start"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLHandler:Landroid/os/Handler;

    new-instance v2, LOooO0O0/OooO0o/OooO0O0/OooO0o;

    invoke-direct {v2, p0}, LOooO0O0/OooO0o/OooO0O0/OooO0o;-><init>(Lcom/xiaomi/renderengine/RenderEngine;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLHandler:Landroid/os/Handler;

    .line 4
    iput-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mEglCore:Lcom/xiaomi/renderengine/gl/EglCore;

    .line 5
    iget-object v2, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewGLThread:Lcom/xiaomi/renderengine/gl/GLThread;

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v2}, Lcom/xiaomi/renderengine/gl/GLThread;->release()V

    .line 7
    iput-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewGLThread:Lcom/xiaomi/renderengine/gl/GLThread;

    :cond_0
    const-string v1, "release end"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeGlobalRenderer(I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/xiaomi/renderengine/renderer/RendererManager;->getLocalRenderer(I)Lcom/xiaomi/renderengine/renderer/Renderer;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLHandler:Landroid/os/Handler;

    new-instance v2, LOooO0O0/OooO0o/OooO0O0/OooO0oo;

    invoke-direct {v2, p0, v0, p1}, LOooO0O0/OooO0o/OooO0O0/OooO0oo;-><init>(Lcom/xiaomi/renderengine/RenderEngine;Lcom/xiaomi/renderengine/renderer/Renderer;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeLocalRenderer(I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/xiaomi/renderengine/renderer/RendererManager;->getLocalRenderer(I)Lcom/xiaomi/renderengine/renderer/Renderer;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLHandler:Landroid/os/Handler;

    new-instance v2, LOooO0O0/OooO0o/OooO0O0/OooOO0;

    invoke-direct {v2, p0, v0, p1}, LOooO0O0/OooO0o/OooO0O0/OooOO0;-><init>(Lcom/xiaomi/renderengine/RenderEngine;Lcom/xiaomi/renderengine/renderer/Renderer;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public resetFrameAvailableFlag()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mFirstFrameArrived:Z

    .line 2
    iput-boolean v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mFirstFrameDrawn:Z

    return-void
.end method

.method public setAnimationType(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mAnimationType:I

    .line 2
    iget-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewRenderer:Lcom/xiaomi/renderengine/renderer/PreviewRenderer;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/xiaomi/renderengine/renderer/PreviewRenderer;->startAnimation()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLHandler:Landroid/os/Handler;

    new-instance v0, LOooO0O0/OooO0o/OooO0O0/OooO00o;

    invoke-direct {v0, p0}, LOooO0O0/OooO0o/OooO0O0/OooO00o;-><init>(Lcom/xiaomi/renderengine/RenderEngine;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setExternalRenderer(Lcom/xiaomi/renderengine/RenderEngine$ExternalRenderer;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mExternalRenderer:Lcom/xiaomi/renderengine/RenderEngine$ExternalRenderer;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExternalRenderer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RenderEngine"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPreviewSize(Landroid/util/Size;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set camera surface oldSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " newSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RenderEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewSize:Landroid/util/Size;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewSize:Landroid/util/Size;

    .line 4
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-ne v0, v2, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-le v0, v2, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 7
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 9
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    .line 10
    :goto_0
    iget-object v3, p0, Lcom/xiaomi/renderengine/RenderEngine;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v3, :cond_2

    .line 11
    invoke-virtual {v3, v0, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set surfaceTexture DefaultBufferSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_2
    iput-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mPreviewSize:Landroid/util/Size;

    .line 14
    iget-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mGLHandler:Landroid/os/Handler;

    new-instance v1, LOooO0O0/OooO0o/OooO0O0/OooO0O0;

    invoke-direct {v1, p0, v2, v0}, LOooO0O0/OooO0o/OooO0O0/OooO0O0;-><init>(Lcom/xiaomi/renderengine/RenderEngine;II)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setRendererAttribute(Lcom/xiaomi/renderengine/data/RendererAttribute;)V
    .locals 2

    .line 1
    iget v0, p1, Lcom/xiaomi/renderengine/data/RendererAttribute;->mType:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/xiaomi/renderengine/renderer/RendererManager;->getLocalRenderer(I)Lcom/xiaomi/renderengine/renderer/Renderer;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/xiaomi/renderengine/renderer/RendererManager;->getGlobalRenderer(I)Lcom/xiaomi/renderengine/renderer/Renderer;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lcom/xiaomi/renderengine/renderer/Renderer;->onAttributeUpdate(Lcom/xiaomi/renderengine/data/RendererAttribute;)V

    goto :goto_1

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRendererAttribute fail, not found renderer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/xiaomi/renderengine/data/RendererAttribute;->mType:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RenderEngine"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public setRendererEnabled(IZ)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/xiaomi/renderengine/renderer/RendererManager;->getLocalRenderer(I)Lcom/xiaomi/renderengine/renderer/Renderer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iput-boolean p2, p1, Lcom/xiaomi/renderengine/renderer/Renderer;->mIsEnabled:Z

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set renderer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " enabled: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RenderEngine"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setRequestRenderListener(Lcom/xiaomi/renderengine/RenderEngine$RequestRenderListener;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mReqRenderListener:Lcom/xiaomi/renderengine/RenderEngine$RequestRenderListener;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRequestRenderListener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RenderEngine"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setStateChangeListener(Lcom/xiaomi/renderengine/RenderEngine$StateCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/renderengine/RenderEngine;->mStateCallback:Lcom/xiaomi/renderengine/RenderEngine$StateCallback;

    return-void
.end method
